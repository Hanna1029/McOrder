package kr.or.kosta.dto;

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
