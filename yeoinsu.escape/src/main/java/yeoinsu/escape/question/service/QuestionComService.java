package yeoinsu.escape.question.service;

import java.util.List;

import yeoinsu.escape.question.domain.QuestionComment;

public interface QuestionComService {
	List<QuestionComment> getCom(int queNo);
	int addCom(QuestionComment queComment);
}
