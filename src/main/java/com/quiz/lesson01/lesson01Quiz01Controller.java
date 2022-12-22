package com.quiz.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/lesson01/quiz01")
public class lesson01Quiz01Controller {
	
	// 1번
	@ResponseBody
	@RequestMapping("/1")
	public String project() {
		return "<h1>테스트 프로젝트 완성</h1><br><h3>해당 프로젝트를 통해서 문제 풀이를 진행합니다.</h3>";
	}
	
	// 2번
	@ResponseBody
	@RequestMapping("/2")
	public Map<String, Integer> score() {
		Map<String, Integer> map = new HashMap<>();
		map.put("국어", 80);
		map.put("수학", 90);
		map.put("영어", 85);
		
		return map; // jackson 라이브러리로 인해 map에서 json으로 변환이 된다.
	}
}
