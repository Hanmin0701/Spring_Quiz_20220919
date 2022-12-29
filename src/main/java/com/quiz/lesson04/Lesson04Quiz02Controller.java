package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.RealtorBO;
import com.quiz.lesson04.model.Realtor;

@Controller
@RequestMapping("/lesson04/quiz02")
public class Lesson04Quiz02Controller {
	
	@Autowired
	private RealtorBO realtorBO;
	
	// 추가 화면
	@GetMapping("add_realtor_view")
	public String addRealtorView() {
		return "lesson04/addRealtor";
	}
	
	// insert => 방금 추가된 공인중개사 정보
	@PostMapping("/add_realtor")
	public String addRealtor(
			@ModelAttribute Realtor realtor, Model model) {
		
		// DB insert 
		realtorBO.addRealtor(realtor);
		
		// DB select
		realtor = realtorBO.getRealtorById(realtor.getId()); // 겹쳐서 할 때 이렇게 사용을 한다.
		
		// model
		model.addAttribute("realtor", realtor);
		
		// view 페이지 이동
		return "lesson04/afterAddRealtor";
	}
}
