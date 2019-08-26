package yeoinsu.escape.party.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.party.dao.PageDao;
import yeoinsu.escape.party.dao.PageDaoImpl;
import yeoinsu.escape.party.domain.Page;

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
	
	public PageServiceImpl(int pageNumCnt,int p, Page page) {
		this.pageDao = new PageDaoImpl();
		this.totRowCnt = p;
		this.pageNumCnt = pageNumCnt;
		this.page = page;
		init();
	}
	
	private int getTotRowCnt() {
		return pageDao.getTotRowCnt();
	}
	
	private void init() {
		endPage = (int)(Math.ceil(page.getCurrentPage()/(double)pageNumCnt)*pageNumCnt);
		startPage = (endPage-pageNumCnt)+1;
		int lastEndPage = (int)(Math.ceil(totRowCnt/(double)page.getCurrentPage()));
		System.out.println(lastEndPage);
		
		if(endPage > lastEndPage) {
			endPage = lastEndPage;
		}
		
		prev = startPage==1?false:true;
		System.out.println(prev);
		next = endPage*page.getRowCnt() >= totRowCnt?false:true;
		System.out.println(next);
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
}
