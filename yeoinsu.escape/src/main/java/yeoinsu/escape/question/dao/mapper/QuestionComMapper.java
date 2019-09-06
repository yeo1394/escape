package yeoinsu.escape.question.dao.mapper;

import java.util.List;

import yeoinsu.escape.question.domain.QuestionComment;

public interface QuestionComMapper {
	List<QuestionComment> getCom(int queNo);
	int addCom(QuestionComment queComment);
}
