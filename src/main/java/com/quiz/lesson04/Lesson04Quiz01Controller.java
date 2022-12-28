package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

@Controller
@RequestMapping("/lesson04/quiz01")
public class Lesson04Quiz01Controller {
	
	@Autowired
	private SellerBO sellerBO;
	
	// 판매자 추가 화면
	// http://localhost/lesson04/quiz01/add_seller_view
	@GetMapping("/add_seller_view")
	public String addSellerView() {
		return "lesson04/addSeller";
	}
	
	// 판매자 insert => 입력 성공 url
	
	@PostMapping("add_seller")
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam(value = "profileImageUrl" , required=false) String profileImageUrl,
			@RequestParam(value = "temperature" , required=false) Double temperature) {
		
		// DB 연동
		sellerBO.addSeller(nickname, profileImageUrl, temperature);
		
		
		// 응닶값 jsp
		return "lesson04/afterAddSeller";
	}
	
	// 2번(최신 1명), 3번(파라미터 id)
	// http://localhost/lesson04/quiz01/seller_info
	
	@GetMapping("/seller_info")
	public String sellerInfo(
			@RequestParam(value="id", required=false) Integer id,
			Model model) {
		
		// DB select
		Seller seller = null;  // 공통인 것을 뺀다. null로 초기화를 명시해주는 것이 좋다.
		if(id == null) {
			seller = sellerBO.getLatestSeller();
		} else {
			seller = sellerBO.getSellerById(id);
		}
		
		
		model.addAttribute("seller", seller);
		
		return "lesson04/sellerInfo";  // 결과 jsp
	}
}