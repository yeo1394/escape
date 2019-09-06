package yeoinsu.escape.question.domain;

public class QuestionComment {
	private int queComNo;
	private String queComContent;
	private int queNo;
	private String userId;
	
	public QuestionComment(){}
	
	public QuestionComment(int queNo,String queComContent,String userId) {
		this.queComContent = queComContent;
		this.queNo = queNo;
		this.userId = userId;
	}
	
	public int getqueComNo() {
		return queComNo;
	}
	public void setqueComNo(int queComNo) {
		this.queComNo = queComNo;
	}
	public String getqueComContent() {
		return queComContent;
	}
	public void setqueComContent(String queComContent) {
		this.queComContent = queComContent;
	}
	public int getqueNo() {
		return queNo;
	}
	public void setqueNo(int queNo) {
		this.queNo = queNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
}
