package com.quiz.lesson06Pension;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06Pension.bo.BookingBO;
import com.quiz.lesson06Pension.model.Booking;

@Controller
@RequestMapping("/lesson06Pension")
public class Lesson06PensionController {
	
	@Autowired
	private BookingBO bookingBO;
	
	// 1번
	@GetMapping("/booking/add_pension_view")
	public String addPensionView(Model model) {
		List<Booking> bookingList = bookingBO.getPension();
		model.addAttribute("bookingList", bookingList);
		return "/booking/addPension";
	}
	
	// 1번 - 삭제
	@ResponseBody
	@DeleteMapping("/delete_booking") 
	public Map<String, Object> deleteBooking( 
			@RequestParam("id") int id) {
		
		Map<String, Object> result = new HashMap<>();
		
		int row = bookingBO.deleteBookingByid(id);
		
		if (row > 0) {
			result.put("code", 200);  // 성공
			result.put("result", "성공");
		} else {
			result.put("code", 500);  // 실패
			result.put("result", "실패");
			result.put("error_message", "삭제하는데 실패하였습니다.");
		}
		
		return result;
	}
	
	// 2번
	@ResponseBody
	@PostMapping("/booking/add_pension")
	public Map<String, Object> addPension(
			@RequestParam("name") String name,
			@RequestParam("headcount") int headcount,
			@RequestParam("day") int day,
			@RequestParam("date") Date date,
			@RequestParam("phoneNumber") String phoneNumber,
			@RequestParam("state") String state) {
	// or 
	// public String addPension(Booking booking){} 이렇게 해도 된다.
		
		// DB insert
		bookingBO.addPension(name, headcount, day, date, phoneNumber, state);
		
		// 응답값
		Map<String, Object> result = new HashMap<>();
		result.put("result", "성공");
		
		return result;
	}
	
	// 예약화면 조회
	@ResponseBody
	@PostMapping("/get_booking")
	public Map<String, Object> getBooking(
			@RequestParam("name") String name,
			@RequestParam("phoneNumber") String phoneNumber) {
		
		// DB insert - 최신 예약 정보 한 건(데이터 자체를 가져와서 뿌리는 것)
		Booking booking = bookingBO.getLatestBookingByNamePhoneNumber(name, phoneNumber);
		
		Map<String, Object> result = new HashMap<>();
		if(booking != null) {
			result.put("booking", booking);
			result.put("code", 1);
		} else {
			result.put("code", 500);
		}
		
		return result;
	}
}
