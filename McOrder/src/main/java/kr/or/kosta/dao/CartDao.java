package kr.or.kosta.dao;

import java.util.List;

import kr.or.kosta.dto.BurgerSet;
import kr.or.kosta.dto.Cart;
import kr.or.kosta.dto.Menu;

public interface CartDao {

	public List<Cart> getCart(String id);
	
	public void addCart(Menu menu, String id);
	
	public void addCart(BurgerSet burgerSet, String id);
	
	public int deleteCart(int seq);
	
	public void buyDeleteCart(int cartSeq);
	
	public void buyDeleteCart(List<Integer> cartSeqs);
	
	public void editCart(int cartSeq, String type);
	
	
}
