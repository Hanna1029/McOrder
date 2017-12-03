package kr.or.kosta.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.dto.Restaurant;

@Service
public class ViewService {

	@Autowired
	private SqlSession session;
	
	// 매장의 경도위도받아서 직선거리를 구해서? 내위치 근처 매장리스트 뿌리기
	public List<Restaurant> getBranchList(float x, float y){
		return null;
	}
	
	// 모달? 지역 선택하는 창에서 선택한 주소 근처 매장 리스트 보여주기
	public List<Restaurant> getBranchList(String address){
		return null;
	}
}
