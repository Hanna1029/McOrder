package kr.or.kosta.dao;
/*
* @FileName : SalesDao
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나, 김수진
*/ 
import java.sql.Date;
import java.util.List;

import kr.or.kosta.dto.Order;
import kr.or.kosta.dto.Sales;

public interface SalesDao {
	
	/*
	 * @method Name : getSalesList
	 * @date : 2017.11.28
	 * @author :2017.11.28. : 김수진
	 * @description : 매장별 매출 리스트 보여주기
	 * @param spec : int branchCode
	 * @return : List<Sales>
	 */
	public List<Sales> getSalesList(int branchCode);
	
	/*
	 * @method Name : salesDetail
	 * @date : 2017.11.28
	 * @author :2017.11.28. : 김수진
	 * @description : 매출리스트에서 클릭하면 해당 매출 일자 주문내역 리스트 보여주기
	 * @param spec : int branchCode, Date salesDate
	 * @return : List<Order>
	 */
	public List<Order> salesDetail(int branchCode, Date salesDate);
	
	/*
	 * @method Name : getMontlySalesList
	 * @date : 2017.12.01
	 * @author :2017.12.01. : 최한나
	 * @description : 월 단위 매출 리스트 보기
	 * @param spec : int branchCode
	 * @return : List<Sales>
	 */
	public List<Sales> getMontlySalesList(int branchCode);
	
	
	/*
	 * @method Name : getWeeklySalesList
	 * @date : 2017.12.01
	 * @author :2017.12.01. : 최한나
	 * @description : 주 단위 매출 리스트 보기
	 * @param spec : int branchCode
	 * @return : List<Sales>
	 */
	public List<Sales> getWeeklySalesList(int branchCode);
	
	/*
	 * @method Name : salesWeeklyDetail
	 * @date : 2017.12.04
	 * @author :2017.12.04. : 최한나
	 * @description : 주 단위 매출 상세 내역
	 * @param spec : int branchCode, Date nextDay
	 * @return : List<Order>
	 */
	public List<Order> salesWeeklyDetail(int branchCode, Date nextDay);
	
	/*
	 * @method Name : salesMonthlyDetail
	 * @date : 2017.12.04
	 * @author :2017.12.04. : 최한나
	 * @description : 월 단위 매출 상세 내역
	 * @param spec : int branchCode, Date lastDay
	 * @return : List<Order>
	 */
	public List<Order> salesMonthlyDetail(int branchCode, Date lastDay);
}
