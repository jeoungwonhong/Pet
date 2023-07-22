package com.pet.model;

public class PayVO {
	
	private int num;
	private String username;
	private String pettype;
	private double petweight;
	private int petcount;
	private String startdate;
	private String enddate;
	private String resdate;
	private int price;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPettype() {
		return pettype;
	}
	public void setPettype(String pettype) {
		this.pettype = pettype;
	}
	public double getPetweight() {
		return petweight;
	}
	public void setPetweight(double petweight) {
		this.petweight = petweight;
	}
	public int getPetcount() {
		return petcount;
	}
	public void setPetcount(int petcount) {
		this.petcount = petcount;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	@Override
	public String toString() {
		return "PayVO [num=" + num + ", username=" + username + ", pettype=" + pettype + ", petweight=" + petweight
				+ ", petcount=" + petcount + ", startdate=" + startdate + ", enddate=" + enddate + ", resdate="
				+ resdate + ", price=" + price + "]";
	}
}
