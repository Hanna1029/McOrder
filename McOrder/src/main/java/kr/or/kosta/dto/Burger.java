package kr.or.kosta.dto;

public class Burger extends Menu {

	private Nutrient nutrient;

	public Nutrient getNutrient() {
		return nutrient;
	}

	public void setNutrient(Nutrient nutrient) {
		this.nutrient = nutrient;
	}

	@Override
	public String toString() {
		return "Burger [nutrient=" + nutrient + "]";
	}
	
	
	
}
