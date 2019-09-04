package yeoinsu.escape.booking.dao;

import yeoinsu.escape.booking.domain.Booking;

public interface BookingDao {
	int addBooking(Booking bookinglist); // 예약자 등록
	Booking getBooking(String bookName,String bookTel); // 예약자 불러오기
	int delBooking(int scheNo); // 삭제
	Booking getBookTel(String bookTel); // 예약자 폰번 불러오기
}
