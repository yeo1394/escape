package yeoinsu.escape.party.domain;

public class ParPage {
	private int currentPage;
	private int rowCnt;

	public ParPage() {
		this(1,10);
	}
	
	public ParPage(int currentPage) {
		this(currentPage, 10);
	}
	
	public ParPage(int currentPage, int rowCnt) {
		this.currentPage = currentPage;
		this.rowCnt = rowCnt;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getRowCnt() {
		return rowCnt;
	}

	public void setRowCnt(int rowCnt) {
		this.rowCnt = rowCnt;
	}
}
