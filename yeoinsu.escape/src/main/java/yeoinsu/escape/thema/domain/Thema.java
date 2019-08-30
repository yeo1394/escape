package yeoinsu.escape.thema.domain;

public class Thema {
	private String themaTitle;
	private char themaNo;
	private char themaLevel;
	private String themaContent;
	private String themaImg;
	private int themaPrice;
	
	public Thema(){}
	
	public String getThemaTitle() {
		return themaTitle;
	}
	public void setThemaTitle(String themaTitle) {
		this.themaTitle = themaTitle;
	}
	public char getThemaNo() {
		return themaNo;
	}
	public void setThemaNo(char themaNo) {
		this.themaNo = themaNo;
	}
	public char getThemaLevel() {
		return themaLevel;
	}
	public void setThemaLevel(char themaLevel) {
		this.themaLevel = themaLevel;
	}
	public String getThemaContent() {
		return themaContent;
	}
	public void setThemaContent(String themaContent) {
		this.themaContent = themaContent;
	}
	public String getThemaImg() {
		return themaImg;
	}
	public void setThemaImg(String themaImg) {
		this.themaImg = themaImg;
	}
}
