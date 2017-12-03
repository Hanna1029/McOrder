package kr.or.kosta.dao;

import java.sql.Date;
import java.util.List;

import kr.or.emp.common.Criteria;
import kr.or.kosta.dto.Order;
import kr.or.kosta.dto.Sales;

public interface OrderDao {

/*	// 한나
	// 실시간 주문완료시  주문완료 클릭되지않은 주문리스트들 가져오기
	public List<Order> getNotCompleteOrder(int branchCode);*/
	
	// 총게시글 갯수
	public int getCount();
	
	// 한나
	// 주문내역 리스트 
	public List<Order> getCompletedOrder(int branchCode); 
	// 한나
	// 주문완료 클릭 된 주문내역 리스트 
	//public List<Order> getCompletedOrder(int branchCode, int pageStart, int perPageNum); 
	
	// 한나
	// 1. 주문완료 클릭되면 시간바꾸기
	public int completeOrder(int branchCode, int orderNum);
	
	// 2. 1에서 리턴값이 있으면 그 해당 오더의 정보받아오기
	public Order getOrder(int branchCode, int orderNum);
	
	// 3. orderCompleteDate의 값을 받아서 sales 테이블에 해당하는 날짜가 있는 지 확인 이떄 substr로 2017-11-08이런식으로만 매칭하기
	public Sales getSalesDate(int branchCode, Date orderCompleteDate);
	
	// 4.1 만약 3의 리턴값이 null 이라면 먼저 테이블에 그 날짜를 insert 하고 4.2 실행 
	public int addSalesDate(int branchCode, Date orderCompleteDate);
	
	// 4.2  만약 3의 리턴값이 null이 아니라면 update문 실행해서 totalSales의 총 매출액에 price 더해주기
	public int addTotalSales(int branchCode, Date orderCompleteDate, int price);
	
	
	
	// 웹소켓 getOrder????????
	public List<Order> getOrder(int branchCode);
	
}
