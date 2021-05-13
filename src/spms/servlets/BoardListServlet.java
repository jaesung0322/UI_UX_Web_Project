package spms.servlets;

import java.io.IOException;
import java.util.List;

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
@WebServlet("/board/boardList")
public class BoardListServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("BoardListServlet 접속");
		
		ServletContext sc = this.getServletContext();
		BoardDao boardDao = (BoardDao)sc.getAttribute("boardDao");  
		
		try {			
			
			System.out.println("boardList 접속");
			
			List<Board> boards = boardDao.selectList();
			
			resp.setContentType("text/html; charset=UTF-8"); // 먼저 호출
	
			req.setAttribute("boards", boards);
			
			RequestDispatcher rd = 
					// jsp 강의 파일 38번을 참조하여 board폴더에 BoardList.jsp로 경로설정할 것
					// 홈페이지 게시판 나열하는 곳으로 경로를 정해야함
					req.getRequestDispatcher("/testimonials.jsp");
			rd.include(req, resp);
			
		}catch(Exception e) {
			e.printStackTrace();
//			req.setAttribute("error", e);
//			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
//			rd.forward(req, resp);
		}
	}
}
