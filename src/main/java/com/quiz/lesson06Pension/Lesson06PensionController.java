package com.quiz.lesson06Pension;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06Pension.bo.BookingBO;

@Controller
@RequestMapping("/lesson06Pension")
public class Lesson06PensionController {
	
	@Autowired
	private BookingBO bookingBO;
	
	// 처음 화면
	@GetMapping("/quiz01/add_pension_view")
	public String addPensionView() {
		return "/lesson06Pension/quiz01/addPension";
	}
	
	@ResponseBody
	@GetMapping("/quiz01/add_pension")
	public String addPension(
			@RequestParam("name") String name,
			@RequestParam("headcount") int headcount,
			@RequestParam("day") int day,
			@RequestParam("date") Date date,
			@RequestParam("phoneNumber") String phoneNumber,
			@RequestParam("state") String state) {
		
		bookingBO.addPension(name, headcount, day, date, phoneNumber, state);
		
		return "성공";
	}
	
	@GetMapping("/quiz01/after_reservation")
	public String afterReservation() {
		return "/quiz01/afterReservation";
	}
	
	// 삭제
	@ResponseBody
	@DeleteMapping("/quiz01/delete_booking") 
	
	public Map<String, Object> deleteRow( 
			@RequestParam("id") int id) {
		Map<String, Object> result = new HashMap<>();
		
		int row = bookingBO.deleteBookingByid(id);
		
		if (row > 0) {
			result.put("code", 200);
			result.put("result", "성공");
		} else {
			result.put("code", 500);
			result.put("result", "실패");
			result.put("error_message", "예약 목록이 없습니다.");
		}
		
		return result;
	}
}
