package spms.listeners;

import javax.naming.InitialContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

import spms.dao.BoardDao;
import spms.dao.UserDao;

public class ContextLoaderListener implements ServletContextListener {
	

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		try {
			System.out.println("contextDestroyed");
		}catch(Exception e) {
			e.printStackTrace();
		}		

	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		try {
			System.out.println("contextInitialized");
			ServletContext sc = sce.getServletContext();

			InitialContext initialContext = new InitialContext();
			DataSource ds = (DataSource)initialContext.lookup(
					"java:comp/env/jdbc/userdb");
			
			UserDao userDao = new UserDao();
			userDao.setDataSource(ds);	
			
			System.out.println("Context - user 로딩완료");
			
			sc.setAttribute("userDao", userDao);
			
			// 추가
			BoardDao boardDao = new BoardDao();
			boardDao.setDataSource(ds);
			
			System.out.println("Context - board 로딩완료");
			
			sc.setAttribute("boardDao", boardDao);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}








