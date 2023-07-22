package com.pet.model;

public class HotelVO {
	
	private String hotelname;
	private String hotelcode;
	private String hoteladdr;
	private String hoteldetailaddr;
	private String hoteltel;
	private String businesscode;
	private String username;
	private String hotelinfo;
	
	
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
	public String getBusinesscode() {
		return businesscode;
	}
	public void setBusinesscode(String businesscode) {
		this.businesscode = businesscode;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getHotelinfo() {
		return hotelinfo;
	}
	public void setHotelinfo(String hotelinfo) {
		this.hotelinfo = hotelinfo;
	}
	
	
	@Override
	public String toString() {
		return "HotelVO [hotelname=" + hotelname + ", hotelcode=" + hotelcode + ", hoteladdr=" + hoteladdr
				+ ", hoteldetailaddr=" + hoteldetailaddr + ", hoteltel=" + hoteltel + ", businesscode=" + businesscode
				+ ", username=" + username + ", hotelinfo=" + hotelinfo + "]";
	}
}
