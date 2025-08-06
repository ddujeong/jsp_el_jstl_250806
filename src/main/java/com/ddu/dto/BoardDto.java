package com.ddu.dto;

public class BoardDto { // 글 한개를 저장하는 DTO
	
	private int bnum; // 게시글 번호
	private String btitle; // 게시글 제목
	private String bwriter; // 게시글 작성자
	// private String bcontents; 게시글 내용
	private  String bdate; // 게시글 등록일
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardDto(int bnum, String btitle, String bwriter, String bdate) {
		super();
		this.bnum = bnum;
		this.btitle = btitle;
		this.bwriter = bwriter;
		this.bdate = bdate;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	
	
}
