package kr.or.kosta.service;
/*
* @FileName : SalesService
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 김수진, 최한나
*/
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
	 * @method Name : showSalesList
	 * @date : 2017.11.28
	 * @author :2017.11.28. : 김수진
	 * @description : 매장별 매출 리스트 보여주기
	 * @param spec : int branchCode
	 * @return : List<Sales>
	 */
	public List<Sales> showSalesList(int branchCode){
		SalesDao salesdao = session.getMapper(SalesDao.class);
		List<Sales> list = salesdao.getSalesList(branchCode);
		return list;
	}
	
	/*
	 * @method Name : salesDetail
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 김수진
	 * @description : 관리자페이지에서 해당 일 자 매출클릭시 그 날 주문내역 리스트 보여주기
	 * @param spec : int branchCode, Date salesDate
	 * @return : List<Order>
	 */
	/*
	 * @method Name : salesDetail
	 * @date : 2017.12.04
	 * @author :2017.12.04. : 최한나 
	 * @description : 관리자페이지에서 해당일자(일, 주, 월 단위 선택 후) 매출클릭시 그 날 주문내역 리스트 보여주도록 수정
	 * @param spec : int branchCode, Date salesDate, int selectDay
	 * @return : List<Order>
	 */
	public List<Order> salesDetail(int branchCode, Date salesDate, int selectDay) {
		System.out.println("서비스1 왔구요");
		SalesDao salesdao = session.getMapper(SalesDao.class);
		System.out.println("서비스2");
		System.out.println("salesDate : " + salesDate);
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

	/*
	 * @method Name : getWeeklyTotalSales
	 * @date : 2017.12.03
	 * @author :2017.12.03. : 최한나 
	 * @description : 주 단위 매출 리스트 뽑기
	 * @param spec : int branchCode
	 * @return : List<Sales>
	 */
	public List<Sales> getWeeklyTotalSales(int branchCode){
		
		SalesDao salesDao = session.getMapper(SalesDao.class);
		
		return salesDao.getWeeklySalesList(branchCode);
		
	}
	
	/*
	 * @method Name : getMonthlyTotalSales
	 * @date : 2017.12.03
	 * @author :2017.12.03. : 최한나 
	 * @description : 월 단위 매출 리스트 뽑기
	 * @param spec : int branchCode
	 * @return : List<Sales>
	 */
	public List<Sales> getMonthlyTotalSales(int branchCode){
		
		SalesDao salesDao = session.getMapper(SalesDao.class);
		
		return salesDao.getMontlySalesList(branchCode);
		
	}

}
