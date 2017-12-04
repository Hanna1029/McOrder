package kr.or.kosta.dto;
/*
* @FileName : Menu
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나, 김수진, 염주호
*/ 
import java.sql.Date;

public class Menu {

	private String menuName;
	private int price;
	private int menuType;
	private Date startDate;
	private Date endDate;
	private String menuImage;
	private String weight; // 중량 추가
	private String calorie; // 칼로리 추가
	private String protein; // 단백질
	private String natrium; // 나트륨
	
	
	
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getCalorie() {
		return calorie;
	}
	public void setCalorie(String calorie) {
		this.calorie = calorie;
	}
	public String getProtein() {
		return protein;
	}
	public void setProtein(String protein) {
		this.protein = protein;
	}
	public String getNatrium() {
		return natrium;
	}
	public void setNatrium(String natrium) {
		this.natrium = natrium;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMenuType() {
		return menuType;
	}
	public void setMenuType(int menuType) {
		this.menuType = menuType;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getMenuImage() {
		return menuImage;
	}
	public void setMenuImage(String menuImage) {
		this.menuImage = menuImage;
	}
	@Override
	public String toString() {
		return "Menu [menuName=" + menuName + ", price=" + price + ", menuType=" + menuType + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", menuImage=" + menuImage + ", weight=" + weight + ", calorie=" + calorie
				+ ", protein=" + protein + ", natrium=" + natrium + "]";
	}
	
	
	
	
	
}
