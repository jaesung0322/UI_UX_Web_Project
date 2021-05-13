package spms.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ajaxstudy.contact.domain.Result;
import com.ajaxstudy.contact.util.Converter;

import spms.dao.UserDao;
import spms.vo.User;

@SuppressWarnings("serial")
public class UserListServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			System.out.println("UserListServlet");
			resp.setContentType("text/html; charset=UTF-8");
			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("user");
			String json = "";
			
			
			if (user == null) {
				Result result = new Result("fail", "로그인을 인증을 받으시기 바랍니다");
				json = Converter.convertToJson(result);
			} else {
				ServletContext sc = this.getServletContext();
				UserDao userDao = (UserDao) sc.getAttribute("userDao");

				List<User> users = userDao.selectList();
				req.setAttribute("user", users);

				json = Converter.convertToJson(users);
			}
			PrintWriter writer = resp.getWriter();
			writer.println(json);

		} catch (Exception e) {
			Result result = new Result("fail", e.getMessage());
			String json = Converter.convertToJson(result);
			PrintWriter writer = resp.getWriter();
			writer.println(json);

		} finally {
		}
	}
	

}
