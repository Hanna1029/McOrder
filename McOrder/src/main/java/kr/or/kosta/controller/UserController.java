package kr.or.kosta.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;

import kr.or.kosta.dto.BurgerSet;
import kr.or.kosta.dto.Menu;
import kr.or.kosta.service.CartService;
import kr.or.kosta.service.MenuService;
import kr.or.kosta.service.OrderService;
import kr.or.kosta.service.ViewService;

@Controller
@RequestMapping("/User/")
public class UserController {

	
	@Autowired
	private View jsonview;
	
	/*========================장바구니 관련 Controller============================*/
	
	@Autowired
	private CartService cartService;
	
	// 회원이 장바구니에 메뉴 하나 추가 , 장바구니 추가 전 선행되는거라 void여야함 한번더 탈거여
	public void addCart(Menu menu, Principal principal) {
		
	}
	
	// 회원이 장바구니에 버거세트 추가, 장바구니 추가 전 선행되는거라 void여야함 한번더 탈거여
	public void addCart(BurgerSet burgerSet, Principal principal) {
		
	}
	
	// 회원 장바구니 목록 보기
	@RequestMapping("shoppingCart.htm")
	public String getCart(Principal principal, ModelMap map) {
		return "shoppingCart.user";
	}
	
	// 회원 장바구니 1개 삭제 > 아마 장바구니 삭제가 한개씩만 될거얼??? 비동기!!!!
	public View deleteCart(int cartSeq, ModelMap map) {
		return jsonview;
	}
	 
	// 회원이 하나 주문하면 주문완료 되면서 장바구니에서 해당 메뉴 삭제
	public String buyDeleteCart(int cartSeq) {
		return null;
	}
	
	// 회원이 여러개 주문하면 주문완료 되면서 장바구니에서 해당 메뉴들 삭제
	public String buyDeleteCart(List<Integer> cartSeqs) {
		return null;
	}
	
	// 장바구니에서 세트메뉴 구성품 변경시 사용  비동기다!!!!
	public View editCart(int cartSeq, String type, Principal principal, ModelMap map) {
		return jsonview;
	}
	
	/*========================메뉴 & 주문 관련 Controller============================*/
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private OrderService orderService;
	
	// 웹상에서 매장 선택후 보이는 메뉴리스트(QR코드 사용 x) 
	@RequestMapping("mainmenu.htm")
	public String showMenuList(/*int brachCode,*/ Model model) {
		return "mainMenu.user";
	}
	
	// 초기화면에서 매장들 보여주고 선택하게 하는 뷰? (매장이름 리스트가 필요한가? 일단 Model 추가)
	// 필요하면 매장이름 리스트로 받아서 뿌려주자 > dao 메소드 추가해야할듯
	public String selectBranch(Model model) {
		return null;
	}
	
	// 매장선택후 주문하기로 넘어가기전 매뉴를 선택하는 페이지 아마 매장코드를 받아서 그 매장에해당하느느
	// 메뉴리스트만 뿌려줄거야!!!
	// 2017-11.29
	// 11:57
	// 신동민
	// 메뉴 보여주기 (QR코드 사용)
	@RequestMapping("qrmainmenu.htm")
	public String selectedBranch(int branchCode, Model model) {
		return "mainMenu.user";
	}
	
	// 메뉴타입을? 오더바이? 해서 인기순, 뭐순으로 뿌려주게....
	public View seletedMenuType(int branchCode, String menuType, String orderBy, ModelMap map) {
		return jsonview; // 왜필요한지 생각좀
	}
	
	
	// 메뉴보여주는 리스트에서 위에 카테고리를 누르면 그게 menuType으로 들어오고 그거에 따라 해당되는
	// 메뉴리스트들을 보여줄거야!!! 비동기로 뿌려>??? 일단 String 처리!!
	public String selectedMenu(int branchCode, String menuName, Model momdel) {
		return null;
	}
	
	// 위의 메뉴리스트들 중에서 선택된 메뉴의 상세페이지
	@RequestMapping("selectMenu.htm")
	public String selectedMenuDetail(/*int branchCode, String menuName, */Model model) {
		return "selectMenu.user";
	}
	
	// 메뉴를 선택 후 세트인지, 라지세트인지, 단품인지 선택했을 때 화면
	@RequestMapping("menuDetail.htm")
	public String menuDetail() {
		return "menuDetail.user";
	}
	
	
	/*========================지도 관련 Controller============================*/
	@Autowired
	private ViewService viewService;
	
	// 지도 메뉴보여주는 창 (스크립트인건가? 어케할지 생각좀)
	@RequestMapping("map.htm")
	public String showMap() {
		return "map.user";
	}
	
	// 매장리스트 보여주기 (경도위도로 직선거리 근처 매장들 보여주는것)
	public View getBranchList(float x, float y, ModelMap mpa) {
		return jsonview;
	}
	
	// 선택된 주소 근처 매장 리스트 뿌리기???
	public View getBranchList(String address, ModelMap map) {
		return jsonview;
	}
	
}
