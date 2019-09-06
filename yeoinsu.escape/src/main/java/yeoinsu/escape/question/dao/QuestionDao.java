package yeoinsu.escape.question.dao;

import java.util.List;

import yeoinsu.escape.question.domain.Page;
import yeoinsu.escape.question.domain.Question;

public interface QuestionDao{
	List<Question> questionlist(Page page);
	Question getpage();
	Question getquestion(int queNo);
	int questionadd(Question question);
	int questionupdate(Question question);
	int questiondelete(int queNo);
	int updateViewCnt(int queNo);
}