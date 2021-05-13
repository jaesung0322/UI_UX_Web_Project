package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.sql.DataSource;
import java.util.*;
import spms.vo.User;

public class UserDao {

	DataSource ds = null;

	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}

	public List<User> selectList() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		final String sqlSelect = "SELECT user_id,name,cre_date,grade" + "\r\n" + "FROM users" + "\r\n"
				+ "ORDER BY user_id ASC";

		try {
			// 커넥션풀에서 Connection객체를 빌려온다
			connection = ds.getConnection();

			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);

			ArrayList<User> users = new ArrayList<User>();

			while (rs.next()) {
				users.add(new User().setUser_id(rs.getInt("user_id")).setName(rs.getString("name"))
						.setCre_date(rs.getDate("cre_date")).setGrade(rs.getString("grade")));
			}

			return users;

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
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public int Register(User users) throws Exception {
		Connection connection = null;
		int result = 0;
		PreparedStatement stmt = null;
		final String sqlRegister = "INSERT INTO users(name,pwd)" + "VALUES(?,?)";

		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlRegister);
			stmt.setString(1, users.getName());
			stmt.setString(2, users.getPwd());
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

			// 다 썼으면 반납하자
			try {
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public User SelectOne(int user_id) throws Exception {
		Connection connection = null;
		User users = null;
		Statement stmt = null;
		ResultSet rs = null;

		final String sqlSelectOne = "SELECT USER_ID,NAME,PWD,CRE_DATE,GRADE FROM USERS" + " WHERE USER_ID=";

		try {
			// 커넥션풀에서 Connection객체를 빌려온다
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne + user_id);
			if (rs.next()) {
				users = new User().setUser_id(rs.getInt("user_id")).setName(rs.getString("name"))
						.setPwd(rs.getString("pwd")).setCre_date(rs.getDate("cre_date")).setGrade("grade");

			} else {
				throw new Exception("해당 번호의 회원을 찾을 수 없습니다.");
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

			// 다 썼으면 반납하자
			try {
				if(connection != null)
					connection.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}

		return users;
	}

	public int update(User users) throws Exception {
		Connection connection = null;
		int result = 0;
		PreparedStatement stmt = null;
		final String sqlUpdate = "UPDATE MEMBERS SET PWD=?" + " WHERE USER_ID=?";
		try {
			// 커넥션풀에서 Connection객체를 빌려온다
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, users.getPwd());
			stmt.setInt(2, users.getUser_id());
			result = stmt.executeUpdate();

		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}

			try {
				if(connection != null)
					connection.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public User Login(String id, String pwd) throws Exception {
		Connection connection = null;
		User users = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		final String sqlLogin = "SELECT id, PWD" + " FROM users WHERE id=? and PWD=?";

		try {
			connection = ds.getConnection();

			stmt = connection.prepareStatement(sqlLogin);
			stmt.setString(1, id);
			stmt.setString(2, pwd);
			rs = stmt.executeQuery();

			if (rs.next()) {
				users = new User().setName(rs.getString("id")).setPwd(rs.getString("PWD"));
			} else {
				return null;
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
			
			try {
				if(connection != null)
					connection.close();// 다 썼으면 반납하자
			}catch (Exception e) {
				e.printStackTrace();
			}
		}

		return users;
	}
}
