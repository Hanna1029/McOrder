package kr.or.kosta.service;

import java.security.Principal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.dto.BurgerSet;
import kr.or.kosta.dto.Cart;
import kr.or.kosta.dto.Menu;

@Service
public class CartService {
	@Autowired
	private SqlSession session;
	
	// 장바구니에 메뉴추가(사용자)
	public void addCart(Menu menu, Principal principal) {
		
	}
	
	// 장바구니에 버거세트 추가(사용자)
	public void addCart(BurgerSet burgerSet,  Principal principal) {
		
	}
	
	// 회원 장바구니 리스트 얻어오기
	public List<Cart> getCart(Principal principal){
		
		return null;
	}
	
	// 카트목록 중 한개 삭제
	public List<Cart> deleteCart(int cartSeq){
		return null;
	}
	
	// 한개 구매했을 때 카트에서 산 거 사라지기
	public void buyDeleteCart(int cartSeq) {
		
	}
	
	// 여러개 구매 했을 때 카트에서 구매한 거 사라지기
	public void buyDeleteCart(List<Integer> cartSeqs) {
			
	}
	
	// 회원 장바구니 수정
	public List<Cart> editCart(int cartSeq, String type, Principal principal){
		
		return null;
	}
}
