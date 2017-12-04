package kr.or.kosta.service;
/*
* @FileName : MenuService
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나, 염주호
*/
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.dao.MenuDao;
import kr.or.kosta.dto.Menu;

@Service
public class MenuService {
	@Autowired
	private SqlSession session;
	
	// 메뉴리스트보는건데 인기순, 가격순 처럼 orderby랑 버거 디저트 버튼도 파라미터로
	// 가져가서 해당되는 조건에 맞게 리스트 뿌리는 것
	// 메뉴타입 int 가나은가 String 이 나은가????
	public List<Menu> getMenuList(int branchCode, String menuType, String orderBy){
		return null;
	}
	
	// 메뉴상세페이지인데 이거는 해당매장 메뉴 디테일인데 그 재료상세가 아니라
	// 메뉴가 불고기버거면 like 써서 세트도 같이 뿌려줄때 사용하는 서비스
	public List<Menu> getMenu(int branchCode, String menuName){
		return null;
	}
	
	/*
	 * @method Name : getMenuDetail
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 최한나
	 * @description :  메뉴 상세보기
	 * @param spec : String menuName
	 * @return : Menu
	 */
	public Menu getMenuDetail(String menuName) {
		
		MenuDao menudao = session.getMapper(MenuDao.class);
		Menu menu = menudao.getMenuDetail(menuName);
		
		return menu;
	}
	
	// 최상위 관리자가 메뉴등록
	public int addMenu(Menu menu) {
		return 0;
	}
	
	/*
	 * @method Name : getMenuList
	 * @date : 2017.11.29
	 * @author :2017.11.29. : 최한나
	 * @description :  최상위 관리자가 보는 메뉴리스트
	 * @param spec : 
	 * @return : List<Menu>
	 */
	public List<Menu> getMenuList(){
		
		MenuDao menudao = session.getMapper(MenuDao.class);
		List<Menu> list = menudao.getMenuList();
		return list;
	}
	
	// 하위 관리자가 최상위관리자가 등록한 메뉴 리스트들 중 판매원하는 메뉴들 체크해서 등록
	public int addMenu(int branchCode, List<Menu> list) {
		return 0;
	}
	
	// 하위관리자가 만약 메뉴등록페이지에와서 체크하고 등록버튼누르면 일단 그 매장에 있는 
	// 메뉴리스트를 전체 지우고 체크한부분들을 다시 등록시키는 것이므로 선행될 전체 삭제 서비스
	public int deleteMenu(int branchCode) {
		return 0;
	}
	
	// 최상위 관리자가 메뉴 삭제
	public int deleteMenu(String menuName) {
		return 0;
	}
	
	// 최상위 관리자가 메뉴 수정
	public int updateMenu(Menu menu) {
		return 0;
	}
	
	
}
