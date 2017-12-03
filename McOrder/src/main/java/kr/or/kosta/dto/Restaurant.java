package kr.or.kosta.dto;

import java.util.List;

public class Restaurant {

	private int branchCode;
	private String branchName;
	private String branchAddress;
	private float x;
	private float y;
	private List<Menu> menuList;
	 
	public int getBranchCode() {
		return branchCode;
	}
	public void setBranchCode(int branchCode) {
		this.branchCode = branchCode;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getBranchAddress() {
		return branchAddress;
	}
	public void setBranchAddress(String branchAddress) {
		this.branchAddress = branchAddress;
	}
	public float getX() {
		return x;
	}
	public void setX(float x) {
		this.x = x;
	}
	public float getY() {
		return y;
	}
	public void setY(float y) {
		this.y = y;
	}
	public List<Menu> getMenuList() {
		return menuList;
	}
	public void setMenuList(List<Menu> menuList) {
		this.menuList = menuList;
	}
	@Override
	public String toString() {
		return "Restaurant [branchCode=" + branchCode + ", branchName=" + branchName + ", branchAddress="
				+ branchAddress + ", x=" + x + ", y=" + y + ", menuList=" + menuList + "]";
	}
	
	
	
	
	
}
