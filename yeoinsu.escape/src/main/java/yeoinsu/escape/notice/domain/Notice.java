package yeoinsu.escape.notice.domain;


import java.sql.Date;

public class Notice{
	private int noticeNo;
	private String noticeTitle;
	private String noticeWriter;
	private Date noticeDate;
	private int noticeHits;
	private String noticeContent;
	private String noticeOpen;
	private String userId;
	
	public Notice() {}

	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeWriter() {
		return noticeWriter;
	}
	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public int getNoticeHits() {
		return noticeHits;
	}
	public void setNoticeHits(int noticeHits) {
		this.noticeHits = noticeHits;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeOpen() {
		return noticeOpen;
	}
	public void setNoticeOpen(String noticeOpen) {
		this.noticeOpen = noticeOpen;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
}