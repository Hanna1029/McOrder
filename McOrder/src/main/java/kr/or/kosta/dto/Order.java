package kr.or.kosta.dto;

import java.sql.Date;

public class Order {

	private int orderNum;
	private String id;
	private int price;
	private String menu; // 주문내역 스트링으로 받을거다
	private String phoneNum;
	private Date orderStartTime;
	private Date orderCompleteTime;
	//수정
	private String orderCompleteTimestr;
	public String getOrderCompleteTimestr() {
		return orderCompleteTimestr;
	}
	public void setOrderCompleteTimestr(String orderCompleteTimestr) {
		this.orderCompleteTimestr = orderCompleteTimestr;
	}
	// 
	private String orderComplete; // 주문완료되면 0 이 1이된다
	private int deliveryNum;
	private int branchCode; // 한나 추가
	private String address;
	
	public int getBranchCode() {
		return branchCode;
	}
	public void setBranchCode(int branchCode) {
		this.branchCode = branchCode;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public Date getOrderStartTime() {
		return orderStartTime;
	}
	public void setOrderStartTime(Date orderStartTime) {
		this.orderStartTime = orderStartTime;
	}
	public Date getOrderCompleteTime() {
		return orderCompleteTime;
	}
	public void setOrderCompleteTime(Date orderCompleteTime) {
		this.orderCompleteTime = orderCompleteTime;
	}
	public String getOrderComplete() {
		return orderComplete;
	}
	public void setOrderComplete(String orderComplete) {
		this.orderComplete = orderComplete;
	}
	public int getDeliveryNum() {
		return deliveryNum;
	}
	public void setDeliveryNum(int deliveryNum) {
		this.deliveryNum = deliveryNum;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "Order [orderNum=" + orderNum + ", id=" + id + ", price=" + price + ", menu=" + menu + ", phoneNum="
				+ phoneNum + ", orderStartTime=" + orderStartTime + ", orderCompleteTime=" + orderCompleteTime
				+ ", orderComplete=" + orderComplete + ", deliveryNum=" + deliveryNum + ", branchCode=" + branchCode
				+ ", address=" + address + "]";
	}

	
	
	
	
	

}
