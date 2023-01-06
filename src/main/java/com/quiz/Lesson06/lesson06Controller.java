package com.quiz.Lesson06;

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
	@ResponseBody // view로 보내는 것이 아니다.
	@PostMapping("/quiz02/is_duplication_url")
	public Map<String, Boolean> isDuplicationUrl (
			@RequestParam("url") String url) {
		
		Map<String, Boolean> result = new HashMap<>();
		
		// 중복확인 select - 데이터를 가져와서 풀어보는 방법
		BookMark bookMark = bookMarkBO.getFavoriteByUrl(url);
		if(bookMark != null) {
			// 중복
			result.put("is_duplication", true);
		} else {
			result.put("is_duplication", false);
		}
		
// 		result.put("is_duplication", bookMarkBO.existAddressByUrl(url));
		return result;
	}
	
	// AJAX에서 삭제 버튼
	@ResponseBody
	@DeleteMapping("/quiz02/delete_favorite") 
	// 삭제가 get으로 하면 다른사람이 들어올 수 있어서 조금 혼동이 올 수 있다.
	// form태그는 안된다. 
	// 이제는 이렇게 정확하게 해야한다.
	
	public Map<String, Object> deleteRow( @RequestParam("id") int id) {
		Map<String, Object> result = new HashMap<>();
		
		// DB delete
		int row = bookMarkBO.deleteFavoriteById(id);
		// 실무에서는 result.put 같은 것을 다 객체화 시켜서 한다.
		if (row > 0) {
			result.put("code", 1); // 성공
			result.put("result", "성공");
		} else {
			result.put("code", 500); // 실패
			result.put("result", "실패");
			result.put("error_message", "삭제된 행이 없습니다.");
		}
		
		return result;
	}
}