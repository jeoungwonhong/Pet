package com.pet.model;

public class MemberVO {
	
	private String userid;
	private String userpass;
	private String username;
	private String useremail;
	private String tel;
	private int level;
	
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ", userpass=" + userpass + ", username=" + username + ", useremail="
				+ useremail + ", tel=" + tel + ", level=" + level + "]";
	}

	
}
