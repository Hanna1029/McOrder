package kr.or.kosta.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.dao.EventDao;
import kr.or.kosta.dto.Event;

@Service
public class EventService {
	@Autowired
	private SqlSession session;
	
	// 이벤트 리스트보기 (관리자 사용자 모두) (주호)
		public List<Event> getEventList() throws ClassNotFoundException, SQLException{
			EventDao eventdao =session.getMapper(EventDao.class);
			//EventDao를 가져옴 
			List<Event> list = eventdao.getEventList();
			
			return list;
		}
		
		// 이벤트 상세보기 (관리자, 사용자 모두 사용) (주호)
		public Event getEvent(int eventNum) {
			EventDao eventdao =session.getMapper(EventDao.class);
			Event event = eventdao.getEvent(eventNum);
			
			return event;
		}
		
		// 최상위 관리자가 이벤트 등록 (주호)
		public void addEvent(Event event) {
			System.out.println("service : "+event.toString());
			EventDao eventdao = session.getMapper(EventDao.class);
			eventdao.addEvent(event);
		}
	
	
		
		// 최상위 관리자가 이벤트 수정 (수진)
		public void editCompleteEvent(Event event) {
			System.out.println("서비스 시작");
			System.out.println(event.getEventContent());
			System.out.println(event.getEventImage());
			System.out.println(event.getEventTitle());
			System.out.println(event.getEventNum());
			EventDao eventdao = session.getMapper(EventDao.class);
			eventdao.editCompleteEvent(event);
			System.out.println("서비스 끄읏");
		}
		
		// 최상위 관리자가 이벤트 삭제 (수진)
		public void deleteEvent(int eventNum) {
			EventDao eventdao = session.getMapper(EventDao.class);
			eventdao.deleteEvent(eventNum);	
		} 
		
}