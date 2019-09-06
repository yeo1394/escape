package yeoinsu.escape.notice.service;

import java.util.ArrayList;

import yeoinsu.escape.notice.domain.Notice;
import yeoinsu.escape.notice.domain.PageNavigator;

public interface NoticeService {
	ArrayList<Notice> getAllNotices(PageNavigator navi,String open);
	Notice getNotice(int noticeNo);	
	int insertNotice(Notice notice);
	int updateNotice(Notice notice);
	int deleteNotice(int noticeNo);
	int updateHit(int noticeNo);
	int selectCount(String open);
}

