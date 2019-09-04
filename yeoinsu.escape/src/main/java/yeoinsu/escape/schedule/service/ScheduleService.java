package yeoinsu.escape.schedule.service;

import java.util.List;

import yeoinsu.escape.schedule.domain.Schedule;

public interface ScheduleService {
	List<Schedule> getSchedules(); // 테마 전체 목록
	List<Schedule> getSchedule(String scheTitle); // 각 테마 스케쥴 목록(제목)
	List<Schedule> getSchestate(int scheState); // 예약 가능 테마 목록
	Schedule getScheno(int scheNo); // 각 테마 스케쥴 정보(번호)
	int updateSche(int scheNo); // 예약시 매진버튼 변경
	int updateSche2(int scheNo); // 예약취소시 예약버튼 변경
	int delBooking(int scheNo);
}
