package com.pet.model;

public class InterestVO {
	
	private String userid;
	private String hotelname;
	private String hotelcode;
	private String hotelinfo;
	private int hotelstar;
	private String hoteladdr;
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getHotelname() {
		return hotelname;
	}
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}
	public String getHotelcode() {
		return hotelcode;
	}
	public void setHotelcode(String hotelcode) {
		this.hotelcode = hotelcode;
	}
	public String getHotelinfo() {
		return hotelinfo;
	}
	public void setHotelinfo(String hotelinfo) {
		this.hotelinfo = hotelinfo;
	}
	public int getHotelstar() {
		return hotelstar;
	}
	public void setHotelstar(int hotelstar) {
		this.hotelstar = hotelstar;
	}
	public String getHoteladdr() {
		return hoteladdr;
	}
	public void setHoteladdr(String hoteladdr) {
		this.hoteladdr = hoteladdr;
	}
	
	
	@Override
	public String toString() {
		return "InterestVO [userid=" + userid + ", hotelname=" + hotelname + ", hotelcode=" + hotelcode + ", hotelinfo="
				+ hotelinfo + ", hotelstar=" + hotelstar + ", hoteladdr=" + hoteladdr + "]";
	}
	
}
