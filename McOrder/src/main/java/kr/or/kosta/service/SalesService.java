package kr.or.kosta.service;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.dao.SalesDao;
import kr.or.kosta.dto.Order;
import kr.or.kosta.dto.Sales;

@Service
public class SalesService {
	@Autowired
	private SqlSession session;
	
	/* 
	@Class : SalesService
	@Date : 2017.11.28 
	@Author : 김수진
	@Desc : 매장별 매출 리스트 보여주기
	*/
	public List<Sales> showSalesList(int branchCode){
		SalesDao salesdao = session.getMapper(SalesDao.class);
		List<Sales> list = salesdao.getSalesList(branchCode);
		return list;
	}
	
	/* 
	@Class : SalesService
	@Date : 2017.11.29 
	@Author : 김수진 + 최한나 수정 
	@Desc : 관리자페이지에서 해당일자 매출클릭시 그 날 매출(주문내역?) 리스트 보여주기..... 로그인 아이디 0000 비번 0000
	*/
	//public List<Sales> salesDetail(Date salesDate) {
	//public List<Order> salesDetail(int branchCode, String salesDate) {
	public List<Order> salesDetail(int branchCode, Date salesDate, int selectDay) {
		System.out.println("서비스1 왔구요");
		SalesDao salesdao = session.getMapper(SalesDao.class);
		System.out.println("서비스2");
		System.out.println("salesDate : " + salesDate);
		System.out.println("서비스브랜치코드 : " + branchCode);
		System.out.println("서비스브랜치코드 : " + branchCode);
		System.out.println("매출단위 : " + selectDay);
		
		List<Order> list = null;
		
		if(selectDay ==1 ) {
			list = salesdao.salesDetail(branchCode, salesDate);
		}else if(selectDay == 2) {
			list = salesdao.salesWeeklyDetail(branchCode, salesDate);
		}else {
			System.out.println("월단위 서비스에서 디비로 간다.");
			list = salesdao.salesMonthlyDetail(branchCode, salesDate);
		}
		return list;
	}

	
	// 한나  주 단위 매출 리스트 뽑기
	public List<Sales> getWeeklyTotalSales(int branchCode){
		
		SalesDao salesDao = session.getMapper(SalesDao.class);
		
		return salesDao.getWeeklySalesList(branchCode);
		
	}
	
	
	// 한나 월 단위 매출 리스트 뽑기
	public List<Sales> getMonthlyTotalSales(int branchCode){
		
		SalesDao salesDao = session.getMapper(SalesDao.class);
		
		return salesDao.getMontlySalesList(branchCode);
		
	}

}
