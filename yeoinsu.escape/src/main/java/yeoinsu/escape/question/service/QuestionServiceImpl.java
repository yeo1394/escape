package yeoinsu.escape.question.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.question.dao.QuestionDao;
import yeoinsu.escape.question.domain.Page;
import yeoinsu.escape.question.domain.Question;

@Service
public class QuestionServiceImpl implements QuestionService {
	@Autowired QuestionDao questionDao;

	@Override
	public List<Question> questionlist(Page page) {
		return questionDao.questionlist(page);
	}

	@Override
	public Question getpage() {
		return questionDao.getpage();
	}

	@Override
	public Question getquestion(int queNo) {
		return questionDao.getquestion(queNo);
	}

	@Override
	public boolean questionadd(Question question) {
		return questionDao.questionadd(question) > 0;
	}

	@Override
	public boolean questionupdate(Question question) {
		return questionDao.questionupdate(question) > 0;
	}

	@Override
	public boolean questiondelete(int queNo) {
		return questionDao.questiondelete(queNo) > 0;
	}

	@Override
	public boolean updateViewCnt(int queNo) {
		return questionDao.updateViewCnt(queNo) > 0;
	}

}
