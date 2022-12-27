package com.quiz.lesson04;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lesson04/quiz01")
public class Lesson04Quiz01Controller {
	
	@RequestMapping("/1")
	public String addSeller() {
		return "lesson04/add_seller";
	}
}
