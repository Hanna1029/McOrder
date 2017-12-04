package kr.or.kosta.dto;
/*
* @FileName : Nutrient
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나, 김수진, 염주호
*/ 
public class Nutrient {

	private String menuName;
	private String weight; //중량 추가
	private String calorie; // 칼로리 추가
	private String protein; // 단백질 추가
	private String natrium; // 나트륨 추가
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
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
	@Override
	public String toString() {
		return "Nutrient [menuName=" + menuName + ", weight=" + weight + ", calorie=" + calorie + ", protein=" + protein
				+ ", natrium=" + natrium + "]";
	}
}
