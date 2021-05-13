package spms.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.BoardDao;
import spms.vo.Board;


@SuppressWarnings("serial")
@WebServlet("/board/boardDelete")
public class BoardDeleteServlet extends HttpServlet{
	
	// board와 다르게 grade값을 받고 있음
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ServletContext sc = this.getServletContext();
			BoardDao boardDao = (BoardDao) sc.getAttribute("boardDao");

			boardDao.delete(new Board()
					.setGrade(request.getParameter("grade"))
					.setNumber(Integer.parseInt(request.getParameter("no"))));

			// jsp 강의 파일 38번을 참조하여 board폴더에 BoardList.jsp로 경로설정할 것
			// 홈페이지 게시판 나열하는 곳으로 경로를 정해야함
			response.sendRedirect("boardList");

		} catch (Exception e) {
			e.printStackTrace();
//			request.setAttribute("error", e);
//			RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
//			rd.forward(request, response);

		} 
	}
}
