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
