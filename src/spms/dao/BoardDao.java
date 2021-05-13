package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.sql.DataSource;
import java.util.*;

import spms.vo.Board;

public class BoardDao {
DataSource ds = null;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	// 공지글을 나열해주는 메소드
	// 누구나 볼 수 있어야 하기때문에 grade값은 가져오지 않음
	public List<Board> selectList() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		final String sqlSelect = "SELECT number, title, id, creDate FROM board ORDER BY number ASC";

		try {
			// 커넥션 풀에서 Connection객체를 빌려온다.
			connection = ds.getConnection();

			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);

			ArrayList<Board> board = new ArrayList<Board>();
			
			// 공지리스트를 차례대로 불러오는 while문
			while (rs.next()) {
				board.add(new Board().setNumber(rs.getInt("number")).setTitle(rs.getString("title"))
						.setId(rs.getString("id")).setCreDate(rs.getDate("creDate")));
			}

			return board;

		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			try {
				if(connection != null) {
					connection.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 공지글 작성 메소드
	public int insert(Board board) throws Exception {
		Connection connection = null;
		int result = 0;
		PreparedStatement stmt = null;
		// 관리자 계정이 로그인하고 grade='M'을 받아와야함
		final String sqlInsert = "INSERT INTO board(grade, creDate, title, contents) "
				+ "VALUES(grade입력 필요, NOW(), ?, ?)";

		try {
			connection = ds.getConnection();

			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, board.getTitle());
			stmt.setString(2, board.getContents());
			result = stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			if(connection != null) {
				connection.close();
			}
		}

		return result;
	}
	
	// 공지글 삭제 메소드
	public int delete(Board board) throws Exception {
		Connection connection = null;
		int result = 0;
		PreparedStatement stmt = null;
		// 공지글 삭제 쿼리문
		// 관리자의 구분이 필요함
		// 5월 12일 현재 모름
		final String sqlDelete = "DELETE FROM board WHERE number=? AND grade=?";

		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlDelete);
			stmt.setInt(1, board.getNumber());
			stmt.setString(2, board.getGrade());

		} catch (Exception e) {
			throw e;

		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}

			if(connection != null) {
				connection.close();
			}
		}

		return result;
	}
	
	// 공지글 하나를 선택해 보여주는 메소드
	public Board selectOne(int no) throws Exception {
		Connection connection = null;
		Board board = null;
		Statement stmt = null;
		ResultSet rs = null;
		// 게시판 리스트에서 게시글 한 개를 클릭시 가져올 칼럼명들
		final String sqlSelectOne = "SELECT number, title, id, creDate FROM board"
				+ " WHERE number=";

		try {
			// 커넥션 풀에서 Connection객체를 빌려온다.
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne + no);
			if (rs.next()) {
				board = new Board().setNumber(rs.getInt("number")).setTitle(rs.getString("title"))
						.setId(rs.getString("id")).setCreDate(rs.getDate("creDate"));

			} else {
				throw new Exception("해당 번호의 게시글을 찾을 수 없습니다.");
			}

		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
			}
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}

			if(connection != null) {
				connection.close();
			}
		}

		return board;
	}

	public int update(Board board) throws Exception {
		Connection connection = null;
		int result = 0;
		PreparedStatement stmt = null;
		final String sqlUpdate = "UPDATE board SET title=?, contents=? WHERE number=? AND id=? AND grade=?";
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, board.getTitle());
			stmt.setString(2, board.getContents());
			stmt.setInt(3, board.getNumber());
			stmt.setString(4, board.getId());
			result = stmt.executeUpdate();

		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}
			
			if(connection != null) {
				connection.close();
			}
		}

		return result;
	}
}
