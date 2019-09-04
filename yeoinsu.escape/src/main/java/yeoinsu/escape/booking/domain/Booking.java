package yeoinsu.escape.booking.domain;

public class Booking {
	private String bookName;
	private String bookTel;
	private String bookMail;
	private int bookPrice;
	private String bookCnt;
	private int scheNo;
	
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookTel() {
		return bookTel;
	}
	public void setBookTel(String bookTel) {
		this.bookTel = bookTel;
	}
	public String getBookMail() {
		return bookMail;
	}
	public void setBookMail(String bookMail) {
		this.bookMail = bookMail;
	}
	public int getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}
	public String getBookCnt() {
		return bookCnt;
	}
	public void setBookCnt(String bookCnt) {
		this.bookCnt = bookCnt;
	}
	public int getScheNo() {
		return scheNo;
	}
	public void setScheNo(int scheNo) {
		this.scheNo = scheNo;
	}
}
