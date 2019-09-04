package yeoinsu.escape.thema.domain;

public class Thema {
	private String themaTitle;
	private String themaNo;
	private int themaLevel;
	private String themaContent;
	private String themaImg;
	private int themaPrice;
	
	public Thema(){}
	
	public Thema(String themaTitle, String themaNo, int themaLevel, String themaContent,
			String themaImg){
		this.themaTitle = themaTitle;
		this.themaNo = themaNo;
		this.themaLevel = themaLevel;
		this.themaContent = themaContent;
		this.themaImg = themaImg;
	}
	
	public int getThemaPrice() {
		return themaPrice;
	}

	public void setThemaPrice(int themaPrice) {
		this.themaPrice = themaPrice;
	}

	public String getThemaTitle() {
		return themaTitle;
	}
	public void setThemaTitle(String themaTitle) {
		this.themaTitle = themaTitle;
	}
	public String getThemaNo() {
		return themaNo;
	}
	public void setThemaNo(String themaNo) {
		this.themaNo = themaNo;
	}
	public int getThemaLevel() {
		return themaLevel;
	}
	public void setThemaLevel(int themaLevel) {
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
