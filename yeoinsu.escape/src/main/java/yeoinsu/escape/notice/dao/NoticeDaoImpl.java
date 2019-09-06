package yeoinsu.escape.notice.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.request.SessionScope;

import yeoinsu.escape.notice.dao.mapper.NoticeMapper;
import yeoinsu.escape.notice.domain.Notice;
import yeoinsu.escape.notice.domain.PageNavigator;
import yeoinsu.escape.user.login.domain.User;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	
	@Autowired private NoticeMapper noticeMapper;
	
	@Override
	public ArrayList<Notice> getAllNotices(PageNavigator navi, String open) {
		ArrayList<Notice> noticeList = new ArrayList<Notice>();
		try{
			RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
			noticeList = noticeMapper.getAllNotices(rb, open);
			
		} catch (Exception e) {
			e.printStackTrace();
			return noticeList;
		}
			return noticeList;
	}

	@Override
	public Notice getNotice(int noticeNo) {
		return noticeMapper.getNotice(noticeNo);
	}

	@Override
	public int insertNotice(Notice notice) {
		return noticeMapper.insertNotice(notice);
	}
	
	@Override
	public int updateNotice(Notice notice) {
		return noticeMapper.updateNotice(notice);
	}

	@Override
	public int deleteNotice(int noticeNo) {
		return noticeMapper.deleteNotice(noticeNo);
	}

	@Override
	public int updateHit(int noticeNo) {
		return noticeMapper.updateHit(noticeNo);
	}

	@Override
	public int selectCount(String open) {
		System.out.println("noticeDaoImpl:"+open);
		return noticeMapper.selectCount(open);
	}
}
