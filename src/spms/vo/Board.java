package spms.vo;

import java.util.Date;

public class Board {
	protected int number; // 작성번호(순서대로)
	protected String id; // 글쓴이 ID 또는 Email
	protected String grade; // 글쓴이의 등급
	protected Date creDate; // 게시판 작성 날짜
	protected String title; // 게시판 제목
	protected String contents; // 게시판 내용물

	public int getNumber() {
		return number;
	}

	public Board setNumber(int number) {
		this.number = number;
		return this;
	}

	public String getId() {
		return id;
	}

	public Board setId(String id) {
		this.id = id;
		return this;
	}

	public String getGrade() {
		return grade;
	}

	public Board setGrade(String grade) {
		this.grade = grade;
		return this;
	}

	public Date getCreDate() {
		return creDate;
	}

	public Board setCreDate(Date creDate) {
		this.creDate = creDate;
		return this;
	}

	public String getTitle() {
		return title;
	}

	public Board setTitle(String title) {
		this.title = title;
		return this;
	}

	public String getContents() {
		return contents;
	}

	public Board setContents(String contents) {
		this.contents = contents;
		return this;
	}

}
