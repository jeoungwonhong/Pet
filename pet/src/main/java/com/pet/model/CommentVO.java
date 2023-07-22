package com.pet.model;

public class CommentVO {
	
	private String busnum;
	private int rvnum;
	private String userid;
	private String userpass;
	private String content;
	private String wdate;
	
	
	public String getBusnum() {
		return busnum;
	}
	public void setBusnum(String busnum) {
		this.busnum = busnum;
	}
	public int getRvnum() {
		return rvnum;
	}
	public void setRvnum(int rvnum) {
		this.rvnum = rvnum;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	
	
	@Override
	public String toString() {
		return "CommentVO [busnum=" + busnum + ", rvnum=" + rvnum + ", userid=" + userid + ", userpass=" + userpass
				+ ", content=" + content + ", wdate=" + wdate + "]";
	}	
}
