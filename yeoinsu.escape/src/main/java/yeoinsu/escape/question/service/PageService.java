package yeoinsu.escape.question.service;

import yeoinsu.escape.question.domain.Page;

public interface PageService {
	Page getPage();
	boolean isPrev();
	boolean isNext();
	int getStartPage();
	int getEndPage();
}
