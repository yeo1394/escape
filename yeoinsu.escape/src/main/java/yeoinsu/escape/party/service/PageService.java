package yeoinsu.escape.party.service;

import yeoinsu.escape.party.domain.Page;

public interface PageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
