package yeoinsu.escape.booking.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import yeoinsu.escape.booking.dao.mapper.BookingMapper;
import yeoinsu.escape.booking.domain.Booking;


@Repository
public class BookingDaoImpl implements BookingDao {
	@Autowired BookingMapper bookingMapper;
	
	@Override
	public int addBooking(Booking bookinglist){
		return bookingMapper.addBooking(bookinglist);
	}
	
	@Override
	public Booking getBooking(String bookName,String bookTel){
		return bookingMapper.getBooking(bookName,bookTel);
	}

	@Override
	public int delBooking(int scheNo) {
		return bookingMapper.delBooking(scheNo);
	}

	@Override
	public Booking getBookTel(String bookTel) {
		return bookingMapper.getBookTel(bookTel);
	}
}
