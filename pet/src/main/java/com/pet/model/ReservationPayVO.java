package com.pet.model;

public class ReservationPayVO {
	
	private String hotelname;
	private String roomcode;
	private String roomname;
	private int roomprice;
	private String roominfo;
	private int petweight;
	
	
	public String getHotelname() {
		return hotelname;
	}
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}
	public String getRoomcode() {
		return roomcode;
	}
	public void setRoomcode(String roomcode) {
		this.roomcode = roomcode;
	}
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public int getRoomprice() {
		return roomprice;
	}
	public void setRoomprice(int roomprice) {
		this.roomprice = roomprice;
	}
	public String getRoominfo() {
		return roominfo;
	}
	public void setRoominfo(String roominfo) {
		this.roominfo = roominfo;
	}
	public int getPetweight() {
		return petweight;
	}
	public void setPetweight(int petweight) {
		this.petweight = petweight;
	}
	
	
	@Override
	public String toString() {
		return "ReservationPayVO [hotelname=" + hotelname + ", roomcode=" + roomcode + ", roomname=" + roomname
				+ ", roomprice=" + roomprice + ", roominfo=" + roominfo + ", petweight=" + petweight + "]";
	}
	
}
