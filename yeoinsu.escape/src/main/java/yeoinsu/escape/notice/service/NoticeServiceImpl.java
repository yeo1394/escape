package yeoinsu.escape.notice.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import yeoinsu.escape.notice.dao.NoticeDao;
import yeoinsu.escape.notice.domain.Notice;
import yeoinsu.escape.notice.domain.PageNavigator;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired private NoticeDao noticeDao;

	@Transactional
	public ArrayList<Notice> getAllNotices(PageNavigator navi, String open) {
		return noticeDao.getAllNotices(navi, open);
	}

	@Transactional
	public Notice getNotice(int noticeNo) {
		return noticeDao.getNotice(noticeNo);
	}
	
	@Transactional
	public int insertNotice(Notice notice) {
		return noticeDao.insertNotice(notice);
	}
	
	@Transactional
	public int updateNotice(Notice notice) {
		return noticeDao.updateNotice(notice);
	}

	@Transactional
	public int deleteNotice(int noticeNo) {
		return noticeDao.deleteNotice(noticeNo);
	}

	@Transactional
	public int updateHit(int noticeNo) {
		return noticeDao.updateHit(noticeNo);
	}

	@Override
	public int selectCount(String open) {
		return noticeDao.selectCount(open);
	}
}
