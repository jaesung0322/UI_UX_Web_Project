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
@WebServlet("/board/boardUpdate")
public class BoardUpdateServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			ServletContext sc = this.getServletContext();
			BoardDao boardDao = (BoardDao) sc.getAttribute("boardDao");

			Board board = boardDao.selectOne(Integer.parseInt(req.getParameter("no")));

			req.setAttribute("board", board);
			
			RequestDispatcher rd = req.getRequestDispatcher("/board/boardUpdate.jsp");
			rd.forward(req, resp);


		} catch (Exception e) {
			e.printStackTrace();
//			req.setAttribute("error", e);
//			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
//			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			ServletContext sc = this.getServletContext();

			BoardDao boardDao = (BoardDao) sc.getAttribute("boardDao");

			// BoardUpdateForm.jsp의 name=""값이랑 같아야함
			boardDao.update(new Board()
					.setNumber(Integer.parseInt(req.getParameter("no")))
					.setTitle(req.getParameter("title"))
					.setContents(req.getParameter("contents"))
					.setId(req.getParameter("id"))
					.setGrade(req.getParameter("grade")));
			
			// jsp 강의 파일 38번을 참조하여 board폴더에 boardList.jsp로 경로설정할 것
			// 홈페이지 게시판 나열하는 곳으로 경로를 정해야함
			resp.sendRedirect("/borad/boardList");

		} catch (Exception e) {
			e.printStackTrace();
//			req.setAttribute("error", e);
//			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
//			rd.forward(req, resp);
		} finally {
		}
	}
}
