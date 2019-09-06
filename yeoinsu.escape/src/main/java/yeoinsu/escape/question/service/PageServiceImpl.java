package yeoinsu.escape.question.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.question.dao.PageDao;
import yeoinsu.escape.question.dao.PageDaoImpl;
import yeoinsu.escape.question.domain.Page;

@Service
public class PageServiceImpl implements PageService {
	@Autowired PageDao pageDao;
	
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int totRowCnt;
	private int pageNumCnt;
	private Page page;
	
	public PageServiceImpl(){}
	
	public PageServiceImpl(int pageNumCnt, int p, Page page) {
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
	public Page getPage() {
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
