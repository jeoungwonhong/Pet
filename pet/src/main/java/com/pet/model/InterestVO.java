package com.pet.model;

public class InterestVO {
	
	private String userid;
	private String hotelname;
	private String hotelcode;
	private int hotelstar;
	private String hoteladdr;
	private String hoteldetailaddr;
	private String hoteltel;
	
	
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
	public String getHoteldetailaddr() {
		return hoteldetailaddr;
	}
	public void setHoteldetailaddr(String hoteldetailaddr) {
		this.hoteldetailaddr = hoteldetailaddr;
	}
	public String getHoteltel() {
		return hoteltel;
	}
	public void setHoteltel(String hoteltel) {
		this.hoteltel = hoteltel;
	}
	
	
	@Override
	public String toString() {
		return "InterestVO [userid=" + userid + ", hotelname=" + hotelname + ", hotelcode=" + hotelcode + ", hotelstar="
				+ hotelstar + ", hoteladdr=" + hoteladdr + ", hoteldetailaddr=" + hoteldetailaddr + ", hoteltel="
				+ hoteltel + "]";
	}
	
	
	
	
}
