package yeoinsu.escape.party.domain;

public class PartyComment {
	private int partyComNo;
	private String partyComContent;
	private int partyNo;
	private String userId;
	
	public PartyComment(){}
	
	public PartyComment(int partyNo,String partyComContent,String userId) {
		this.partyComContent = partyComContent;
		this.partyNo = partyNo;
		this.userId = userId;
	}
	
	public int getPartyComNo() {
		return partyComNo;
	}
	public void setPartyComNo(int partyComNo) {
		this.partyComNo = partyComNo;
	}
	public String getPartyComContent() {
		return partyComContent;
	}
	public void setPartyComContent(String partyComContent) {
		this.partyComContent = partyComContent;
	}
	public int getPartyNo() {
		return partyNo;
	}
	public void setPartyNo(int partyNo) {
		this.partyNo = partyNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
}
