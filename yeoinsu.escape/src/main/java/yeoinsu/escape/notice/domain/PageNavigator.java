package yeoinsu.escape.notice.domain;

public class PageNavigator {
	private int countPerPage; //페이지당 글목록 수
	private int pagePerGroup; //그룹당 페이지 수
	private int currentPage; //현재 페이지(1부터 시작)
	private int totalRecordsCount; //전체 글 수
	private int totalPageCount; //전체 페이지 수
	private int currentGroup; //현재 그룹(0부터 시작)
	private int startPageGroup; //현재 그룹의 첫 페이지
	private int endPageGroup; //현재 그룹의 마지막 페이지
	private int startRecord; //전체 레코드 중 현재 페이지 첫 글의 위치(0부터 시작)
	
	public PageNavigator(int countPerPage, 
						int currentPage, int totalRecordsCount) {
		this.countPerPage = countPerPage;
		this.totalRecordsCount = totalRecordsCount;
		
		//전체 페이지 수 
		totalPageCount = (totalRecordsCount+countPerPage-1)/countPerPage;
		
		//페이지 그룹
		pagePerGroup = totalPageCount < 3 ? totalPageCount : 3;
		
		//전달된 현재 페이지가 1보다 작으면 현재페이지를 1페이지로 지정
		if(currentPage < 1) currentPage = 1;
		//전달된 현재 페이지가 마지막 페이지보다 크면 현재페이지를 마지막 페이지로 지정
		if(currentPage > totalPageCount) currentPage = totalPageCount;		
		this.currentPage = currentPage;
		
		//현재 그룹
		currentGroup = (currentPage - 1)/ pagePerGroup;
		//현재 그룹의 첫 페이지 
		startPageGroup = currentGroup * pagePerGroup +1;
		//현재 그룹과 첫 페이지가 1보다 작으면 1로 처리
		startPageGroup = startPageGroup < 1 ? 1 : startPageGroup;
		//현재 그룹의 마지막 페이지
		endPageGroup = startPageGroup + pagePerGroup - 1;
		//현재 그룹의 마지막 페이지가 전체 페이지 수보다 작으면 전체 페이지 수를 마지막으로
		endPageGroup = endPageGroup < totalPageCount ? endPageGroup : totalPageCount;
				
		//전체 레코드 중 현재 페이지 첫 글의 위치
		startRecord = (currentPage - 1) * countPerPage;
		
	}
	
	public int getCountPerPage() {
		return countPerPage;
	}
	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}
	public int getPagePerGroup() {
		return pagePerGroup;
	}
	public void setPagePerGroup(int pagePerGroup) {
		this.pagePerGroup = pagePerGroup;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalRecordsCount() {
		return totalRecordsCount;
	}
	public void setTotalRecordsCount(int totalRecordsCount) {
		this.totalRecordsCount = totalRecordsCount;
	}
	public int getTotalPageCount() {
		return totalPageCount;
	}
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public int getCurrentGroup() {
		return currentGroup;
	}
	public void setCurrentGroup(int currentGroup) {
		this.currentGroup = currentGroup;
	}
	public int getStartPageGroup() {
		return startPageGroup;
	}
	public void setStartPageGroup(int startPageGroup) {
		this.startPageGroup = startPageGroup;
	}
	public int getEndPageGroup() {
		return endPageGroup;
	}
	public void setEndPageGroup(int endPageGroup) {
		this.endPageGroup = endPageGroup;
	}
	public int getStartRecord() {
		return startRecord;
	}
	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}
}
