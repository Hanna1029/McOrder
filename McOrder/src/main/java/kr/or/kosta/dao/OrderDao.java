package kr.or.kosta.dao;
/*
* @FileName : OrderDao
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나
*/ 
import java.sql.Date;
import java.util.List;

import kr.or.kosta.dto.Order;
import kr.or.kosta.dto.Sales;

public interface OrderDao {

	/*
	 * @method Name : getCount
	 * @date : 2017.11.28
	 * @author :2017.11.28. : 최한나
	 * @description : 주문전체 총 갯수
	 * @param spec : 
	 * @return : int
	 */
	public int getCount();
	
	/*
	 * @method Name : getCompletedOrder
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 최한나
	 * @description : 주문전체내역리스트
	 * @param spec : int branchCode
	 * @return : List<Order>
	 */
	public List<Order> getCompletedOrder(int branchCode); 
	
	/*
	 * @method Name : completeOrder
	 * @date : 2017.12.01
	 * @author :2017.12.01. : 최한나
	 * @description : 1. 주문완료 클릭되면 주문완료시간바꾸기
	 * @param spec : int branchCode, int orderNum
	 * @return : int
	 */
	public int completeOrder(int branchCode, int orderNum);
	
	/*
	 * @method Name : getOrder
	 * @date : 2017.12.01
	 * @author :2017.12.01. : 최한나
	 * @description : 2. 1에서 리턴값이 있으면 그 해당 오더의 정보받아오기
	 * @param spec : int branchCode, int orderNum
	 * @return : Order
	 */
	public Order getOrder(int branchCode, int orderNum);
	
	/*
	 * @method Name : getSalesDate
	 * @date : 2017.12.01
	 * @author :2017.12.01. : 최한나
	 * @description : 3. orderCompleteDate의 값을 받아서 sales 테이블에 해당하는 날짜가 있는 지 확인 이떄 
	 * 				     substr로 2017-11-08이런식으로만 매칭하기
	 * @param spec : int branchCode, Date orderCompleteDate
	 * @return : Sales
	 */
	public Sales getSalesDate(int branchCode, Date orderCompleteDate);
	
	
	/*
	 * @method Name : addSalesDate
	 * @date : 2017.12.01
	 * @author :2017.12.01. : 최한나
	 * @description : 4.1 만약 3의 리턴값이 null 이라면 먼저 테이블에 그 날짜를 insert 하고 4.2 실행 
	 * @param spec : int branchCode, Date orderCompleteDate
	 * @return : void
	 */
	public void addSalesDate(int branchCode, Date orderCompleteDate);
	
	/*
	 * @method Name : addTotalSales
	 * @date : 2017.12.01
	 * @author :2017.12.01. : 최한나
	 * @description : 4.2  만약 3의 리턴값이 null이 아니라면 update문 실행해서 totalSales의 총 매출액에 price 더해주기
	 * @param spec : int branchCode, Date orderCompleteDate, int price
	 * @return : void
	 */
	public void addTotalSales(int branchCode, Date orderCompleteDate, int price);
	
	
	
	// 웹소켓 getOrder????????
	public List<Order> getOrder(int branchCode);
	
}
