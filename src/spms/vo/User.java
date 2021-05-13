package spms.vo;

import java.util.Date;

public class User {
	protected int user_id;				// 주어지는 번호
	protected String name;				// name = email 주소 (아이디)
	protected String pwd;
	protected Date cre_date;
	protected String grade;
	
	public int getUser_id() {
		return user_id;
	}
	public User setUser_id(int user_id) {
		this.user_id = user_id;
		return this;
	}
	public String getName() {
		return name;
	}
	public User setName(String name) {
		this.name = name;
		return this;
	}
	public String getPwd() {
		return pwd;
	}
	public User setPwd(String pwd) {
		this.pwd = pwd;
		return this;
	}

	public Date getCre_date() {
		return cre_date;
	}
	public User setCre_date(Date cre_date) {
		this.cre_date = cre_date;
		return this;
	}
	
	public String getGrade() {
		return grade;
	}
	public User setGrade(String grade) {
		this.grade = grade;
		return this;
	}	
	
	
}
