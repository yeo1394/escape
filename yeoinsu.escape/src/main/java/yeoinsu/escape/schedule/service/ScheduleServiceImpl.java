package yeoinsu.escape.schedule.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.schedule.dao.ScheduleDao;
import yeoinsu.escape.schedule.domain.Schedule;

@Service
public class ScheduleServiceImpl implements ScheduleService{
	@Autowired ScheduleDao scheduleDao;
	
	@Override
	public List<Schedule> getSchedules() {
		return scheduleDao.getSchedules();
	}
	
	@Override
	public List<Schedule> getSchedule(String scheTitle){
		return scheduleDao.getSchedule(scheTitle);
	}
	
	@Override
	public List<Schedule> getSchestate(int scheState){
		return scheduleDao.getSchestate(scheState);
	}
	
	@Override
	public Schedule getScheno(int scheNo){
		return scheduleDao.getScheno(scheNo);		
	}
	
	@Override
	public int updateSche(int scheNo){
		return scheduleDao.updateSche(scheNo);
	}
	
	@Override
	public int updateSche2(int scheNo) {
		return scheduleDao.updateSche2(scheNo);
	}

	@Override
	public int delBooking(int scheNo) {
		return scheduleDao.delBooking(scheNo);
	}

}
