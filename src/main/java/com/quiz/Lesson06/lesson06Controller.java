package com.quiz.Lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.Lesson06.bo.BookMarkBO;
import com.quiz.Lesson06.model.BookMark;

@Controller
@RequestMapping("/lesson06")
public class lesson06Controller {
	
	@Autowired
	private BookMarkBO bookMarkBO;
	
	// 처음 화면 (츨겨찾기 처음화면)
	@GetMapping("/quiz01/add_favorite_view")
	public String addFavoriteView() {
		return "/lesson06/quiz01/addFavorite";	
	}
	
	// AJAX(즐겨찾기 추가)
	@ResponseBody
	@PostMapping("/quiz01/add_favorite")
	public Map<String, String> addFavorite(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		
		// DB insert
		bookMarkBO.addFavorite(name, url);
		
		// 성공 값(응답 값) 여기에서는 model을 사용을 하지 않는다.
		Map<String, String> result = new HashMap<>();
		result.put("result", "성공");
		
		return result;   // JACKSON => JSON String으로 내려간다. 
	}
	
	// 즐겨찾기 목록 화면 
	@GetMapping("/quiz01/after_add_favorite_view")
	public String afterAddFavoriteView(Model model) {
		
		// select
		List<BookMark> favoriteList = bookMarkBO.getFavoriteLsit();
		
		model.addAttribute("favoriteList", favoriteList);
		
		// 응답 값
		return "/quiz01/afterAddFavoriteView";
		
	}
	
	// AJAX 통신 확인
	@ResponseBody
	@GetMapping("/quiz02/url_duplication")
	public Map<String, Boolean> urlDuplication(
			@RequestParam("url") String url) {
		
		Map<String, Boolean> result = new HashMap<>();
		result.put("urlDuplication", bookMarkBO.existAddressByUrl(url));
		return result;
	}
	
	// 삭제 버튼
	@GetMapping("/quiz02/delete_row")
	public Integer deleteRow(
			@RequestParam("id") int id) {
		return bookMarkBO.deleteRow(id);
	}
}