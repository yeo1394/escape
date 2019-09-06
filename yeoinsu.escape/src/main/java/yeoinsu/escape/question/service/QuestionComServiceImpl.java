package yeoinsu.escape.question.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.question.dao.QuestionComDao;
import yeoinsu.escape.question.domain.QuestionComment;

@Service
public class QuestionComServiceImpl implements QuestionComService {
	@Autowired QuestionComDao QuestionComDao;

	@Override
	public List<QuestionComment> getCom(int queNo) {
		return QuestionComDao.getCom(queNo);
	}

	@Override
	public int addCom(QuestionComment queComment) {
		return QuestionComDao.addCom(queComment);
	}
	
	
}
