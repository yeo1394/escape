package yeoinsu.escape.booking.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yeoinsu.escape.booking.dao.BookingDao;
import yeoinsu.escape.booking.domain.Booking;

@Service
public class BookingServiceImpl implements BookingService {
	@Autowired BookingDao bookingDao;
	
	@Override
	public int addBooking(Booking bookinglist){
		return bookingDao.addBooking(bookinglist);
	}
	
	@Override
	public Booking getBooking(String bookName,String bookTel){
		return bookingDao.getBooking(bookName,bookTel);
	}
	
	@Override
	public int delBooking(int scheNo){
		return bookingDao.delBooking(scheNo);
	}

	@Override
	public Booking getBookTel(String bookTel) {
		return bookingDao.getBookTel(bookTel);
	}
}
