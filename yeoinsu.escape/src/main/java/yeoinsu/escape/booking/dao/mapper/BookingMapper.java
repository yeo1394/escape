package yeoinsu.escape.booking.dao.mapper;

import org.apache.ibatis.annotations.Param;

import yeoinsu.escape.booking.domain.Booking;

public interface BookingMapper {
	int addBooking(Booking bookinglist); // 예약자 등록
	Booking getBooking(@Param("bookName")String bookName, @Param("bookTel")String bookTel); // 예약자 불러오기
	int delBooking(int scheNo); // 삭제 
	Booking getBookTel(String bookTel); // 예약자 폰번 불러오기
}
