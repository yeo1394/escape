package yeoinsu.escape.question.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yeoinsu.escape.question.dao.mapper.QuestionComMapper;
import yeoinsu.escape.question.domain.QuestionComment;

@Repository
public class QuestionComDaoImpl implements QuestionComDao {
	@Autowired QuestionComMapper QuestionComMapper;
	
	@Override
	public List<QuestionComment> getCom(int queNo) {
		return QuestionComMapper.getCom(queNo);
	}

	@Override
	public int addCom(QuestionComment queComment) {
		return QuestionComMapper.addCom(queComment);
	}
	
}
