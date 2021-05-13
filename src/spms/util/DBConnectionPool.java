package spms.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

public class DBConnectionPool {
	final int PRE_POOL_SIZE = 10; 
	String url;
	String username;
	String password;
	ArrayList<Connection> connList = new ArrayList<Connection>();
	
	public DBConnectionPool(String driver, String url,
					String username, String password) throws Exception{
		this.url = url;
		this.username = username;
		this.password = password;
		
		Class.forName(driver);
		
		for(int i=0;i<PRE_POOL_SIZE;i++)
			connList.add(DriverManager.getConnection(url, username, password));
	}
	
	public Connection getConnection() throws Exception{
		if(connList.size() > 0) {
			Connection conn = connList.remove(0);
			if(conn.isValid(10)) {
				return conn;
			}
		}
		
		return DriverManager.getConnection(url, username, password);
	}
	
	public void returnConnection(Connection conn) throws Exception{
		if(conn != null && conn.isClosed()==false)
			connList.add(conn);
	}
	
	public void closeAll() {
		for(Connection conn : connList) {
			try {
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}









