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
	@Desc : 매장별 매출 리스트 보여주기............. 로그인 아이디 0001 비번 0000
	*/
	public List<Sales> showSalesList(int branchCode){
		SalesDao salesdao = session.getMapper(SalesDao.class);
		List<Sales> list = salesdao.getSalesList(branchCode);
		return list;
	}
	
	/* 
	@Class : SalesService
	@Date : 2017.11.29 
	@Author : 김수진
	@Desc : 관리자페이지에서 해당일자 매출클릭시 그 날 매출(주문내역?) 리스트 보여주기..... 로그인 아이디 0000 비번 0000
	*/
	//public List<Sales> salesDetail(Date salesDate) {
	//public List<Order> salesDetail(int branchCode, String salesDate) {
	public List<Order> salesDetail(int branchCode, Date salesDate) {
		System.out.println("서비스1 왔구요");
		SalesDao salesdao = session.getMapper(SalesDao.class);
		System.out.println("서비스2");
		System.out.println("salesDate : " + salesDate);
		System.out.println("서비스브랜치코드 : " + branchCode);
		List<Order> list = salesdao.salesDetail(branchCode, salesDate);
		//SimpleDateFormat aaa = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a");
		
		
		//System.out.println("sss " + aaa.format(list.get(3).getOrderStartTime()));
		
		return list;
	}

	// 주문완료시각생성순간에(주문완료버튼클릭시) 그날 매출일자 매출액에 더해짐
	public void addTotalSales(int branchCode, int price) {
		
	}
	
	// 한나  주 단위 매출 리스트 뽑기 또 트랜잭션 쓰자...
	
	
	// 한나 월 단위 매출 리스트 뽑기 또 트랜잭션 쓰자....
	

}
