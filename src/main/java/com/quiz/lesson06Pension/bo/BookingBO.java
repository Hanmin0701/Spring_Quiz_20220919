package com.quiz.lesson06Pension.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06Pension.dao.BookingDAO;
import com.quiz.lesson06Pension.model.Booking;

@Service
public class BookingBO {

	@Autowired
	private BookingDAO bookingDAO;

	// select
	public List<Booking> getPension() {
		return bookingDAO.selectPension();
	}

	// delete
	public int deleteBookingByid(int id) {
		return bookingDAO.deleteBookingByid(id);
	}

	// insert
	public void addPension(String name, int headcount, int day, Date date, String phoneNumber, String state) {
		bookingDAO.insertPension(name, headcount, day, date, phoneNumber, state);
	}
	
	public Booking getLatestBookingByNamePhoneNumber(String name, String phoneNumber) {
		return bookingDAO.getLatestBookingByNamePhoneNumber(name, phoneNumber);
	}
}
