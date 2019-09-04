package yeoinsu.escape.schedule.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yeoinsu.escape.booking.domain.Booking;
import yeoinsu.escape.booking.service.BookingService;
import yeoinsu.escape.mail.service.MailService;
import yeoinsu.escape.schedule.domain.Schedule;
import yeoinsu.escape.schedule.service.ScheduleService;
import yeoinsu.escape.thema.domain.Thema;
import yeoinsu.escape.thema.service.ThemaService;

@Controller
@RequestMapping("/booking")
public class BookingController {
	@Autowired ScheduleService scheduleService;
	@Autowired ThemaService themaService;
	@Autowired BookingService bookingService;
	@Autowired MailService mailService;

	@RequestMapping
	public String listbooking() {
		return "booking/booking";
	}

	@RequestMapping("/input")
	public String listinput() {
		return "booking/input";
	}
	
	@RequestMapping("/booklogin")
	public String booklogin() {
		return "booking/booklogin";
	}
	
	@RequestMapping("/logcompletion")
	public String logcompletion() {
		return "booking/logcompletion";
	}
	
	@RequestMapping("/inputerr")
	public String inputerr() {
		return "booking/inputerr";
	}
	
	@RequestMapping("/comUser") // 유저 예약확인 로그인
	@ResponseBody
	public Booking comUser(String bookTel, HttpSession session){
		Booking booking = bookingService.getBookTel(bookTel);
		if(booking !=null && !booking.equals("")){
			int bookCnt = booking.getScheNo();
			Schedule scheno = scheduleService.getScheno(bookCnt);
			Thema nowThema = themaService.getThemaTitle(scheno.getScheTitle());
			session.setAttribute("nowImg2", nowThema.getThemaImg());
			session.setAttribute("bUser", booking);
			session.setAttribute("sUser", scheno);
		}
		return bookingService.getBookTel(bookTel);
	}
	
   @RequestMapping("/cancle") // 예약취소
   @ResponseBody
   public int cancle(int scheNo){
	   bookingService.delBooking(scheNo);
	   scheduleService.updateSche2(scheNo);
	   return bookingService.delBooking(scheNo);
   }

	@RequestMapping("/getSchedules") // 테마 전체 목록
	@ResponseBody
	public List<Schedule> getSchedules(HttpSession session) {
		List<Schedule> schedule = scheduleService.getSchedules();
		session.setAttribute("schedulelist", schedule);
		return scheduleService.getSchedules();
	}

	@RequestMapping("/getSchedule") // 테마 1개 목록(테마제목)
	@ResponseBody
	public List<Schedule> getSchedule(String scheTitle, HttpSession session) {
		return scheduleService.getSchedule(scheTitle);
	}

	@RequestMapping("/getSchestate") // 예약 가능 테마 목록
	@ResponseBody
	public List<Schedule> getSchestate(int scheState) {
		return scheduleService.getSchestate(scheState);
	}

	@RequestMapping("/getScheno") // 테마 1개 목록(번호)
	@ResponseBody
	public Schedule getScheno(int scheNo, HttpSession session) {
		Schedule scheno = scheduleService.getScheno(scheNo);
		String themaTitle = scheno.getScheTitle();
		Thema thema = themaService.getThemaTitle(themaTitle);
		session.setAttribute("theTitle", thema);
		session.setAttribute("scheNo", scheno);
		return scheduleService.getScheno(scheNo);
	}

	@RequestMapping("/bookingInsert") // 예약 등록
	public String bookingInsert(int ScheNo, String BookName, String BookTel,
			String BookMail, int BookPrice, String BookCnt, HttpSession session) {
		Booking bookinglist = new Booking();
		bookinglist.setScheNo(ScheNo);
		bookinglist.setBookName(BookName);
		bookinglist.setBookTel(BookTel);
		bookinglist.setBookMail(BookMail);
		bookinglist.setBookPrice(BookPrice);
		bookinglist.setBookCnt(BookCnt);
		Booking ok = bookingService.getBooking(BookName, BookTel);
		if(ok!= null){
			session.setAttribute("errName", BookName);
			session.setAttribute("errTel", BookTel);
			return "booking/inputerr";
		}else{
			Schedule scheno = scheduleService.getScheno(ScheNo);
			String txt = scheno.getScheTitle()+"<br>"
					+ "예약시간: "+scheno.getScheTime()+"<br>"
					+ "인원수: "+BookCnt+"<br>"
					+ "가격: "+BookPrice+"<br>"
					+"<strong>※ 예약 취소는 하루 전까지 가능합니다.(당일 취소 시 소액의 금액지불).</strong><br>"
					+"<strong>※ 입장시간 10분 전까지 도착하여 주세요.</strong><br>"
					+"<strong>※ 입실 시 음식은 반입이 불가능합니다.</strong><br>"
					+"<strong>※ 다음 사용자를 위해 기물파손 및 도난은 절대 안됩니다.</strong><br>"
					+"<strong>※ 모든 테마룸은 CCTV 촬영 중 입니다.</strong><br>";
			mailService.send(BookMail, BookName, txt);
			bookingService.addBooking(bookinglist);
			Schedule schedule = scheduleService.getScheno(ScheNo);
			scheduleService.updateSche(ScheNo);
			session.setAttribute("booking", bookinglist);
			session.setAttribute("sche", schedule);
			Thema nowThema = themaService.getThemaTitle(schedule.getScheTitle());
			session.setAttribute("nowImg", nowThema.getThemaImg());
			return "booking/completion";
		}
	}
	@RequestMapping("/statement")
	@ResponseBody
	public int statement(int scheNo){
		System.out.println(scheduleService.getScheno(scheNo).getScheState());
		if(scheduleService.getScheno(scheNo).getScheState().equals("0")) {
			return 0;			
		}else {
			scheduleService.updateSche2(scheNo);
			scheduleService.delBooking(scheNo);
			return 1;
		}
	}
}
