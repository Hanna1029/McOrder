package kr.or.kosta.dto;
/*
* @FileName : Event
* @Project : McOrder
* @Date : 2017.12.27 
* @Author : 최한나, 김수진, 염주호
*/ 
import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class Event {

	private int eventNum;
	
	private String eventTitle;
	private String eventContent;	
	private String writer;
	
	private String eventImage1;
	private String eventImage2;
	
	//다중 파일 업로드/////////////////////////////////////
	private List<CommonsMultipartFile> files;
	
	public List<CommonsMultipartFile> getFiles() {
		return files;
	}
	public void setFiles(List<CommonsMultipartFile> files) {
		this.files = files;
	}

	public int getEventNum() {
		return eventNum;
	}
	public void setEventNum(int eventNum) {
		this.eventNum = eventNum;
	}
	public String getEventTitle() {
		return eventTitle;
	}
	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}
	public String getEventContent() {
		return eventContent;
	}
	public void setEventContent(String eventContent) {
		this.eventContent = eventContent;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getEventImage1() {
		return eventImage1;
	}
	public void setEventImage1(String eventImage1) {
		this.eventImage1 = eventImage1;
	}
	public String getEventImage2() {
		return eventImage2;
	}
	public void setEventImage2(String eventImage2) {
		this.eventImage2 = eventImage2;
	}
	@Override
	public String toString() {
		return "Event [eventNum=" + eventNum + ", eventTitle=" + eventTitle + ", eventContent=" + eventContent
				+ ", writer=" + writer + ", eventImage1=" + eventImage1 + ", eventImage2=" + eventImage2 + ", files="
				+ files + "]";
	}

	
	
}
