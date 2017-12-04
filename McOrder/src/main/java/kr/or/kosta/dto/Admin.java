package kr.or.kosta.dto;
/*
* @FileName : Admin
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나, 김수진, 염주호
*/ 
public class Admin {

	private int branchCode;
	private String id;
	private String name;
	private String password;
	
	
	public int getBranchCode() {
		return branchCode;
	}
	public void setBranchCode(int branchCode) {
		this.branchCode = branchCode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Admin [branchCode=" + branchCode + ", id=" + id + ", name=" + name + ", password=" + password + "]";
	}
	
	
	
	
	
}
