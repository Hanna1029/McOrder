package kr.or.kosta.service;

/*
* @FileName : OrderService
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나
*/
import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.kosta.dao.OrderDao;
import kr.or.kosta.dto.Order;
import kr.or.kosta.dto.Sales;

@Service
public class OrderService {
	@Autowired
	private SqlSession session;

	/*
	 * @method Name : totalCount
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 최한나
	 * @description : 게시물 총 갯수 구하기
	 * @param spec :
	 * @return : int
	 */
	public int totalCount() {
		OrderDao orderdao = session.getMapper(OrderDao.class);
		int totalCount = orderdao.getCount();
		return totalCount;
	}

	/*
	 * @method Name : getOrderList
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 최한나
	 * @description : 해당 매장의 주문 내역 리스트
	 * @param spec : int branchCode
	 * @return : List<Order>
	 */
	public List<Order> getOrderList(int branchCode) {

		OrderDao orderdao = session.getMapper(OrderDao.class);
		List<Order> orderList = orderdao.getCompletedOrder(branchCode);

		return orderList;
	}

	/*
	 * @method Name : completeOrder
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 최한나
	 * @description : 주문완료버튼 클릭된 주문내역은 테이블에서 주문완료시각이 현재시간으로 업데이트
	 * @param spec : int branchCode, int orderNum
	 * @return : void
	 */
	@Transactional
	public void completeOrder(int branchCode, int orderNum) throws Exception {
		
		OrderDao orderdao = session.getMapper(OrderDao.class);

		/*
		 * // 1. 주문완료 클릭되면 시간바꾸기 public int completeOrder(int branchCode, int orderNum);
		 * // 2. 1에서 리턴값이 있으면 그 해당 오더의 정보받아오기 public Order getOrder(int branchCode, int orderNum); 
		 * // 3. orderCompleteDate의 값을 받아서 sales 테이블에 해당하는 날짜가 있는 지 확인 이때 substr로 2017-11-08이런식으로만 매칭하기 
		 * public Sales getSalesDate(int branchCode, Date orderCompleteDate); 
		 * // 4.1 만약 3의 리턴값이 null 이라면 먼저 테이블에 그 날짜를 insert 하고 4.2 실행
		 * public int addSalesDate(int branchCode, Date orderCompleteDate); 
		 * // 4.2 만약 3의 리턴값이 null이 아니라면 update문 실행해서 totalSales의 총 매출액에 price 더해주기 
		 * public int addTotalSales(int branchCode, Date orderCompleteDate, int price);
		 */
		try {
			orderdao.completeOrder(branchCode, orderNum);
			Order order = orderdao.getOrder(branchCode, orderNum);
			Date orderCompleteDate = order.getOrderCompleteTime();
			int price = order.getPrice();
			System.out.println("getSalesDate 널뜨기 전!! price는 얼마? " + price);
			// Sales sales = new Sales();
			Sales sales = orderdao.getSalesDate(branchCode, orderCompleteDate);
			System.out.println("sales 서비스 널인가  ? " + sales);
			if (sales == null) {
				sales = new Sales();
				orderdao.addSalesDate(branchCode, orderCompleteDate);
				sales.setTotalDailySales(0);
			}
			price += sales.getTotalDailySales();
			orderdao.addTotalSales(branchCode, orderCompleteDate, price);

			System.out.println("board insert , member point update");
		} catch (Exception e) {
			System.out.println("Transaction 예외 발생" + e.getMessage());
			throw e; // 예외 발생 시기면 : 자동 rollback
		}
	}

	// 웹소켓 사용할 때 쓸건데 일단 보류!!! 나중에 다시 생각해야함
	public List<Order> getOrder(int branchCode) {
		return null;
	}

}
