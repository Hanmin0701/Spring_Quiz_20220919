package com.quiz.lesson06Pension.dao;

import java.util.Date;

import org.springframework.stereotype.Repository;

import com.quiz.lesson06Pension.model.Booking;

@Repository
public interface BookingDAO {
	
	// insert
	public String insertPension(String name, int headcount, int day, Date date, String phoneNumber, String state);
	
	// select
	public Booking selectPension();
	
	// delete
	public int deleteBookingByid(int id);

}
