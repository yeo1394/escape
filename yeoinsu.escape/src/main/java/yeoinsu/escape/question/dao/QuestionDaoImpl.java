package yeoinsu.escape.question.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yeoinsu.escape.question.dao.mapper.QuestionMapper;
import yeoinsu.escape.question.domain.Page;
import yeoinsu.escape.question.domain.Question;

@Repository
public class QuestionDaoImpl implements QuestionDao {
	@Autowired QuestionMapper questionMapper;

	@Override
	public List<Question> questionlist(Page page) {
		return questionMapper.questionlist(page);
	}
	
	@Override
	public Question getpage() {
		return questionMapper.getpage();
	}
	
	@Override
	public Question getquestion(int queNo) {
		return questionMapper.getquestion(queNo);
	}

	@Override
	public int questionadd(Question question) {
		return questionMapper.questionadd(question);
	}

	@Override
	public int questionupdate(Question question) {
		return questionMapper.questionupdate(question);
	}

	@Override
	public int questiondelete(int queNo) {
		return questionMapper.questiondelete(queNo);
	}

	@Override
	public int updateViewCnt(int queNo) {
		return questionMapper.updateViewCnt(queNo);
	}

}