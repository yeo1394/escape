package yeoinsu.escape.question.service;

import java.util.List;

import yeoinsu.escape.question.domain.Page;
import yeoinsu.escape.question.domain.Question;

public interface QuestionService {
	List<Question> questionlist(Page page);
	Question getpage();
	Question getquestion(int queNo);
	boolean questionadd(Question question);
	boolean questionupdate(Question question);
	boolean questiondelete(int queNo);
	boolean updateViewCnt(int queNo);
}
