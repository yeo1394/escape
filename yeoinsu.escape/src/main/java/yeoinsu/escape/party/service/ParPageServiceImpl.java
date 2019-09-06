package yeoinsu.escape.party.service;

import org.springframework.stereotype.Service;

import yeoinsu.escape.party.domain.ParPage;

@Service
public class ParPageServiceImpl implements ParPageService {
	
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int totRowCnt;
	private int pageNumCnt;
	private ParPage page;
	
	public ParPageServiceImpl(){}
	
	public ParPageServiceImpl(int pageNumCnt,int p, ParPage page) {
		this.totRowCnt = p;
		this.pageNumCnt = pageNumCnt;
		this.page = page;
		init();
	}
	
	public int getTotRowCnt() {
		return totRowCnt;
	}
	
	private void init() {
		endPage = (int)(Math.ceil(page.getCurrentPage()/(double)pageNumCnt)*pageNumCnt);
		startPage = (endPage-pageNumCnt)+1;
		int lastEndPage = (int)(Math.ceil(totRowCnt/(double)page.getCurrentPage()));
		
		if(endPage > lastEndPage) {
			endPage = lastEndPage;
		}
		
		prev = startPage==1?false:true;
		next = endPage*page.getRowCnt() >= totRowCnt?false:true;
	}

	@Override
	public ParPage getPage() {
		return page;
	}

	@Override
	public boolean isPrev() {
		return prev;
	}

	@Override
	public boolean isNext() {
		return next;
	}

	@Override
	public int getStartPage() {
		return startPage;
	}

	@Override
	public int getEndPage() {
		return endPage;
	}
	
	public int getPageNumCnt() {
		return pageNumCnt;
	}

	public void setTotRowCnt(int totRowCnt) {
		this.totRowCnt = totRowCnt;
	}
	
	
}
