package spms.servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.BoardDao;
import spms.vo.Board;

@SuppressWarnings("serial")
@WebServlet("/board/boardAdd")
public class BoardAddServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher rd = req.getRequestDispatcher
							("/board/boardAdd.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			ServletContext sc = this.getServletContext();
			BoardDao boardDao = (BoardDao)sc.getAttribute("boardDao");
			
			// jsp에서 summit시 name="" 값이 같아야함
			boardDao.insert(new Board()
					.setGrade(req.getParameter("grade"))
					.setTitle(req.getParameter("title"))
					.setContents(req.getParameter("contents")));
			
			// jsp 강의 파일 38번을 참조하여 board폴더에 BoardList.jsp로 경로설정할 것
			// 홈페이지 게시판 나열하는 곳으로 경로를 정해야함
			resp.sendRedirect("boardlist");		
			
		}catch(Exception e) {
			// throw new ServletException(e);
			e.printStackTrace();
//			req.setAttribute("error", e);
//			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
//			rd.forward(req, resp);
		}
	}
}
