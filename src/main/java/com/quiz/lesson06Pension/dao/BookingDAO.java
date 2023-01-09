package com.quiz.lesson06Pension.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06Pension.model.Booking;

@Repository
public interface BookingDAO {
	
	// select
	public List<Booking> selectPension();

	// delete
	public int deleteBookingByid(int id);
	
	// insert
	public void insertPension(
			@Param("name") String name, 
			@Param("headcount") int headcount,
			@Param("day") int day, 
			@Param("date") Date date, 
			@Param("phoneNumber") String phoneNumber, 
			@Param("state") String state);
	
	public Booking getLatestBookingByNamePhoneNumber(
			@Param("name") String name, 
			@Param("phoneNumber") String phoneNumber);
}
