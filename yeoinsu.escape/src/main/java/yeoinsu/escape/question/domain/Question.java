package yeoinsu.escape.question.domain;

import java.sql.Date;

public class Question {
	private int queNo;
	private String queTitle;
	private String queWriter;
	private Date queDate;
	private int queHits;
	private String queContent;
	public String userId;
	public int page;
	
	public Question(){}
	
	public Question(String queTitle, String queContent, String userId){
		this.queTitle = queTitle;
		this.queContent = queContent;
		this.userId = userId;
	}
	
	public Question(String queTitle, String queContent,String queWriter,String userId){
		this.queTitle = queTitle;
		this.queContent = queContent;
		this.queWriter = queWriter;
		this.userId = userId;
	}
			
	public int getQueNo() {
		return queNo;
	}
	
	public void setQueNo(int queNo) {
		this.queNo = queNo;
	}
	
	public String getQueTitle() {
		return queTitle;
	}
	
	public void setQueTitle(String queTitle) {
		this.queTitle = queTitle;
	}
	
	public String getQueWriter() {
		return queWriter;
	}
	
	public void setQueWriter(String queWriter) {
		this.queWriter = queWriter;
	}
	
	public Date getQueDate() {
		return queDate;
	}
	
	public void setQueDate(Date queDate) {
		this.queDate = queDate;
	}
	
	public int getQueHits() {
		return queHits;
	}
	
	public void setQueHits(int queHits) {
		this.queHits = queHits;
	}
	
	public String getQueContent() {
		return queContent;
	}
	
	public void setQueContent(String queContent) {
		this.queContent = queContent;
	}
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	
}
