package com.quiz.Lesson06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.Lesson06.bo.BookMarkBO;

@Controller
@RequestMapping("/lesson06")
public class lesson06Controller {
	
	@Autowired
	private BookMarkBO bookMarkBO;
	
	// 처음 화면
	@GetMapping("/quiz01/add_favorite_view")
	public String addFavoriteView() {
		return "/lesson06/quiz01/addFavorite";	
	}
	
	// AJAX
	@ResponseBody
	@PostMapping("/quiz01/add_favorite")
	public String addFavorite(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		
		bookMarkBO.addFavorite(name, url);
		
		return "성공";
	}
	
	@GetMapping("/quiz01/after_add_favorite_view")
	public String afterAddFavoriteView() {
		return "/quiz01/afterAddFavoriteView";
	}
}