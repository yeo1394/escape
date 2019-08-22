package yeoinsu.escape.user.login.domain;

public class User {
	private String userId;
	private String userPw;
	private String userName;
	private String userTel;
	private String userMail;
	private int userPoint;
	
	public User(){}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getUserPw() {
		return userPw;
	}
	
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	
	public int getUserPoint() {
		return userPoint;
	}
	
	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}
	
	public String getUserMail() {
		return userMail;
	}
	
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	
	public String getUserTel() {
		return userTel;
	}
	
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
}
