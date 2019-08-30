package yeoinsu.escape.party.domain;

import java.sql.Date;

public class Party {
	private int partyNo;
	private String partyTitle;
	private String partyWriter;
	private Date partyDate;
	private int partyHits;
	private String partyContent;
	private String userId;
	private int page;
	private String partyThema;
	private String partyTime;
	
	public Party(String partyThema,String partyTime, String partyContent, String userId) {
		this.partyThema = partyThema;
		this.partyTime = partyTime;
		this.partyContent = partyContent;
		this.userId = userId;
	}
	
	public String getPartyThema() {
		return partyThema;
	}

	public void setPartyThema(String partyThema) {
		this.partyThema = partyThema;
	}

	public String getPartyTime() {
		return partyTime;
	}

	public void setPartyTime(String partyTime) {
		this.partyTime = partyTime;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public Party(){}
	
	public int getPartyNo() {
		return partyNo;
	}
	public void setPartyNo(int partyNo) {
		this.partyNo = partyNo;
	}
	public String getPartyTitle() {
		return partyTitle;
	}
	public void setPartyTitle(String partyTitle) {
		this.partyTitle = partyTitle;
	}
	public String getPartyWriter() {
		return partyWriter;
	}
	public void setPartyWriter(String partyWriter) {
		this.partyWriter = partyWriter;
	}
	public Date getPartyDate() {
		return partyDate;
	}
	public void setPartyDate(Date partyDate) {
		this.partyDate = partyDate;
	}
	public int getPartyHits() {
		return partyHits;
	}
	public void setPartyHits(int partyHits) {
		this.partyHits = partyHits;
	}
	public String getPartyContent() {
		return partyContent;
	}
	public void setPartyContent(String partyContent) {
		this.partyContent = partyContent;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
}
