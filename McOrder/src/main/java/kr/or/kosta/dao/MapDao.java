package kr.or.kosta.dao;

import java.util.List;

import kr.or.kosta.dto.Restaurant;

public interface MapDao {

	public List<Restaurant> getBranchList(float x, float y);
	
	// address 값을 like 사용해서 검색처럼 찾아서 매장리스트 뿌릴거임
	public List<Restaurant> getLikeBranchList(String address);
	
	
	
}
