package yeoinsu.escape.party.service;

import yeoinsu.escape.party.domain.ParPage;

public interface ParPageService {
	ParPage getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
