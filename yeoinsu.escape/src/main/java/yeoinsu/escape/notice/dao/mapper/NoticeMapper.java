package yeoinsu.escape.notice.dao.mapper;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import yeoinsu.escape.notice.domain.Notice;


public interface NoticeMapper {
	ArrayList<Notice> getAllNotices(RowBounds rb, String open); //공지사항 목록, 페이징
	Notice getNotice(int noticeNo);	//공지사항 한개
	int insertNotice(Notice notice); //공지사항 추가
	int updateNotice(Notice notice); //공지사항 변경
	int deleteNotice(int noticeNo);	//공지사항 삭제
	int updateHit(int noticeNo); //조회수 증가
	int selectCount(String open); //paging count
}
