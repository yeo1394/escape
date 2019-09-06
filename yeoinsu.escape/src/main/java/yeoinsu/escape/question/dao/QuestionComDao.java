package yeoinsu.escape.question.dao;

import java.util.List;

import yeoinsu.escape.question.domain.QuestionComment;

public interface QuestionComDao {
	List<QuestionComment> getCom(int queNo);
	int addCom(QuestionComment queComment);
}
