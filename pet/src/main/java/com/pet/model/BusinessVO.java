package com.pet.model;

public class BusinessVO {
	
	private String userid;
	private String userpass;
	private String username;
	private String useremail;
	private String tel;
	private String businesscode;
	private int postcode;
	private String addr;
	private String detailaddr;
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
	public String getBusinesscode() {
		return businesscode;
	}
	public void setBusinesscode(String businesscode) {
		this.businesscode = businesscode;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDetailaddr() {
		return detailaddr;
	}
	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	
	@Override
	public String toString() {
		return "BusinessVO [userid=" + userid + ", userpass=" + userpass + ", username=" + username + ", useremail="
				+ useremail + ", tel=" + tel + ", businesscode=" + businesscode + ", postcode=" + postcode + ", addr="
				+ addr + ", detailaddr=" + detailaddr + ", level=" + level + "]";
	}
}
