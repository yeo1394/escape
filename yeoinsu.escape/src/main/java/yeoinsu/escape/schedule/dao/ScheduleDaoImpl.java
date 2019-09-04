package yeoinsu.escape.schedule.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yeoinsu.escape.schedule.dao.mapper.ScheduleMapper;
import yeoinsu.escape.schedule.domain.Schedule;

@Repository
public class ScheduleDaoImpl implements ScheduleDao{
	@Autowired ScheduleMapper scheduleMapper;
	
	@Override
	public List<Schedule> getSchedules() {
		return scheduleMapper.getSchedules();
	} 
	
	@Override
	public List<Schedule> getSchedule(String scheTitle){
		return scheduleMapper.getSchedule(scheTitle);
	}
	
	@Override
	public List<Schedule> getSchestate(int scheState){
		return scheduleMapper.getSchestate(scheState);
	}
	
	@Override
	public Schedule getScheno(int scheNo){
		return scheduleMapper.getScheno(scheNo);
	}
	
	@Override
	public int updateSche(int scheNo){
		return scheduleMapper.updateSche(scheNo);
	}
	
	@Override
	public int updateSche2(int scheNo) {
		return scheduleMapper.updateSche2(scheNo);
	}

	@Override
	public int delBooking(int scheNo) {
		return scheduleMapper.delBooking(scheNo);
	}
	
}
