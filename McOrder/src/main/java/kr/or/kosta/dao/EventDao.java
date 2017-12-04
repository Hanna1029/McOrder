package kr.or.kosta.dao;

import java.util.List;

import kr.or.kosta.dto.Event;

public interface EventDao {

	// 이벤트 리스트 보기
	public List<Event> getEventList();
	
	// 이밴트 디테일
	public Event getEvent(int eventNum);
	
	// 관리자가 이벤트 등록
	public int addEvent(Event event);
	
	// 관리자기 이벤트 수정 (수진)
	public int editCompleteEvent(Event event);
	
	// 관리자가 이벤트 삭제 (수정__수진)
	public void deleteEvent(int eventNum);
	
}
