package kr.or.kosta.dto;
/*
* @FileName : Sales
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나, 김수진
*/ 
import java.sql.Date;

public class Sales {

	private Date salesDate;
	private int totalDailySales;
	private int branchCode;
	
	// 한나 수정
	private int selectDay;
	private Date nextDay;
	private int totalWeeklySales;
	private int totalMonthlySales;
	private Date weeklyStartDate;
	private Date weeklyEndDate;
	private Date lastDay;
	
	
	//
	
	
	public Date getLastDay() {
		return lastDay;
	}
	public void setLastDay(Date lastDay) {
		this.lastDay = lastDay;
	}
	public int getSelectDay() {
		return selectDay;
	}
	public void setSelectDay(int selectDay) {
		this.selectDay = selectDay;
	}
	public Date getNextDay() {
		return nextDay;
	}
	public void setNextDay(Date nextDay) {
		this.nextDay = nextDay;
	}
	public int getTotalWeeklySales() {
		return totalWeeklySales;
	}
	public void setTotalWeeklySales(int totalWeeklySales) {
		this.totalWeeklySales = totalWeeklySales;
	}
	public int getTotalMonthlySales() {
		return totalMonthlySales;
	}
	public void setTotalMonthlySales(int totalMonthlySales) {
		this.totalMonthlySales = totalMonthlySales;
	}
	public Date getWeeklyStartDate() {
		return weeklyStartDate;
	}
	public void setWeeklyStartDate(Date weeklyStartDate) {
		this.weeklyStartDate = weeklyStartDate;
	}
	public Date getWeeklyEndDate() {
		return weeklyEndDate;
	}
	public void setWeeklyEndDate(Date weeklyEndDate) {
		this.weeklyEndDate = weeklyEndDate;
	}
	//
	private String salesDate2;
	public String getSalesDate2() {
		return salesDate2;
	}
	public void setSalesDate2(String salesDate2) {
		this.salesDate2 = salesDate2;
	}
	//
	
	public Date getSalesDate() {
		return salesDate;
	}
	public void setSalesDate(Date salesDate) {
		this.salesDate = salesDate;
	}
	public int getTotalDailySales() {
		return totalDailySales;
	}
	public void setTotalDailySales(int totalDailySales) {
		this.totalDailySales = totalDailySales;
	}
	public int getBranchCode() {
		return branchCode;
	}
	public void setBranchCode(int branchCode) {
		this.branchCode = branchCode;
	}
	@Override
	public String toString() {
		return "Sales [salesDate=" + salesDate + ", totalDailySales=" + totalDailySales + ", branchCode=" + branchCode
				+ "]";
	}
	
	
	
}
