package kr.or.kosta.dao;

import java.sql.Date;
import java.util.List;

import kr.or.kosta.dto.Order;
import kr.or.kosta.dto.Sales;

public interface SalesDao {
	
	// 매출 리스트 보기 (차트 사용시 수정 들어가거나 메소드 추가해야할 수도)
	public List<Sales> getSalesList(int branchCode);
	//public List<Sales> getSalesList();
	
	// 매출리스트에서 클릭하면 매출 상세보기 
	//public List<Order> salesDetail(int branchCode, String salesDate);
	public List<Order> salesDetail(int branchCode, Date salesDate);
	//public List<Sales> salesDetail(Date salesDate);
	
	
	// 주문완료시 매출액에 자동 합산
	//public int addTotalSales(int branchCode, int price);
	
	// 월 단위 매출 리스트 보기 
	public List<Sales> getMontlySalesList(int branchCode);
	
	// 주 단위 매출 리스트 보기
	public List<Sales> getWeeklySalesList(int branchCode);
	
	
}
