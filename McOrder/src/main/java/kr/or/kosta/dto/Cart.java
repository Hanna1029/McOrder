package kr.or.kosta.dto;

public class Cart {

	private int cartSeq;
	private String id;
	private String menu;
	private int price;
	public int getCartSeq() {
		return cartSeq;
	}
	public void setCartSeq(int cartSeq) {
		this.cartSeq = cartSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Cart [cartSeq=" + cartSeq + ", id=" + id + ", menu=" + menu + ", price=" + price + "]";
	}
	
	
	
	
}
