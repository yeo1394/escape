package yeoinsu.escape.question.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yeoinsu.escape.question.dao.mapper.PageMapper;

@Repository
public class PageDaoImpl implements PageDao {
	@Autowired PageMapper pageMapper;
	
	public int getTotRowCnt() {
		SqlSession sqlSession = null;
		int count = sqlSession.selectOne("getTotRowCnt");
		System.out.println(count);
		return count;
	}
}
