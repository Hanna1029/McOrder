package kr.or.kosta.dto;

public class BurgerSet extends Menu {

	private Burger burger;
	private Dessert dessert;
	private Drink drink;
	
	public Burger getBurger() {
		return burger;
	}
	public void setBurger(Burger burger) {
		this.burger = burger;
	}
	public Dessert getDessert() {
		return dessert;
	}
	public void setDessert(Dessert dessert) {
		this.dessert = dessert;
	}
	public Drink getDrink() {
		return drink;
	}
	public void setDrink(Drink drink) {
		this.drink = drink;
	}
	
	@Override
	public String toString() {
		return "BurgerSet [burger=" + burger + ", dessert=" + dessert + ", drink=" + drink + "]";
	}
	
	
	
	
}
