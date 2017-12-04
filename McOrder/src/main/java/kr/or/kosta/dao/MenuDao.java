package kr.or.kosta.dao;
/*
* @FileName : MenuDao
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나, 염주호, 김수진
*/ 
import java.util.List;
import java.util.Map;

import kr.or.kosta.dto.Menu;

public interface MenuDao {

	// 오더바이할거여 !!!! 메뉴리스트 뿌리기!!
	public List<Menu> getMenuList(int branchCode, String menuType, String orderBy);
	
	/*
	 * @method Name : getMenuList
	 * @date : 2017.11.28
	 * @author :2017.11.28. : 최한나
	 * @description : 최상위관리자가보는 메뉴 리스트
	 * @param spec : 
	 * @return : List<Menu>
	 */
	public List<Menu> getMenuList();
	
	// 최상위관리자가 메뉴 추가
	public int addMenu(Menu menu);
	
	
	//최상위관리자 영양소 추가
		public int addNutrient(Menu menu);
			
		// 하위관리자가 모든 메뉴 삭제 후 체크한 것들 다 add 할 때 선행될 메소드 매장메뉴 전체삭제
		public int deleteResMenu(int branchCode);
		
		// 하위 관리자 리스트에 최상위 관리자의 메뉴를  삽입
		public int addMenuListRowAdmin(Map<String, Object> paramMap, int branchCode);
		
		//하위 관리자 메뉴 리스트 뿌리기
		public List<String> getMenuRowAdmin(int branchCode); 
	
	// 하위관리자가 모든 메뉴 삭제 후 체크한 것들 다 add 할 때 선행될 메소드 매장메뉴 전체삭제
	public int deleteMenu(int branchCode);
	
	// 최상위 관리자가 메뉴삭제
	public int deleteMenu(String menuName);
	
	// 최상위 관리자가 메뉴 수정
	public int updateMenu(Menu menu);
	
	/*
	 * @method Name : getMenuDetail
	 * @date : 2017.11.30
	 * @author :2017.11.30. : 최한나, 김수진
	 * @description : 해당 메뉴 상세정보 불러오기
	 * @param spec : String menuName
	 * @return : Menu
	 */
	public Menu getMenuDetail(String menuName);
	
	// 주문 시 불고기 버거 디테일에 버거세트 내용도 같이 뿌려줘야 해서 이때는 리스트로 뿌릴거임
	// 라이크 써서 menuName 들어간 메뉴이름 다뿌릴거야!!!!
	public List<Menu> getMenu(String menuName);
	
}
