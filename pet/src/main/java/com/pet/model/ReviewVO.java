package com.pet.model;

public class ReviewVO {

	private int num;
	private String userid;
	private String userpass;
	private String img;
	private String subject;
	private String content;
	private int resnum;
	private int star;
	private int rvnum;
	private String wdate;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpass() {
		return userpass;
	}
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getResnum() {
		return resnum;
	}
	public void setResnum(int resnum) {
		this.resnum = resnum;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getRvnum() {
		return rvnum;
	}
	public void setRvnum(int rvnum) {
		this.rvnum = rvnum;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	
	
	@Override
	public String toString() {
		return "ReviewVO [num=" + num + ", userid=" + userid + ", userpass=" + userpass + ", img=" + img + ", subject="
				+ subject + ", content=" + content + ", resnum=" + resnum + ", star=" + star + ", rvnum=" + rvnum
				+ ", wdate=" + wdate + "]";
	}
	
	
	
}
