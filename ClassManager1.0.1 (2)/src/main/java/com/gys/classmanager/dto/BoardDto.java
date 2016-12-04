package com.gys.classmanager.dto;

public class BoardDto {

	private int idx;
	private String category;
	private String title;
	private String content;
	private String created_at;
	private String writer;
	private int hit;
	private int teachrno;
	private String gradeNum;
	private String classNum;
	
	public BoardDto(){
		
	}
	
	public BoardDto(int idx, String category, String title, String content, String created_at, String writer, int hit,
			int teachrno, String gradeNum, String classNum) {
		super();
		this.idx = idx;
		this.category = category;
		this.title = title;
		this.content = content;
		this.created_at = created_at;
		this.writer = writer;
		this.hit = hit;
		this.teachrno = teachrno;
		this.gradeNum = gradeNum;
		this.classNum = classNum;
	}
	public int getIdx() {
		return idx;
	}
	public String getCategory() {
		return category;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getCreated_at() {
		return created_at;
	}
	public String getWriter() {
		return writer;
	}
	public int getHit() {
		return hit;
	}
	public int getTeachrno() {
		return teachrno;
	}
	public String getGradeNum() {
		return gradeNum;
	}
	public String getClassNum() {
		return classNum;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public void setTeachrno(int teachrno) {
		this.teachrno = teachrno;
	}
	public void setGradeNum(String gradeNum) {
		this.gradeNum = gradeNum;
	}
	public void setClassNum(String classNum) {
		this.classNum = classNum;
	}
	
	
}
