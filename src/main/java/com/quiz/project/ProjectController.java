package com.quiz.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.project.bo.InstargramBO;
import com.quiz.project.model.Instargram;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@Autowired
	private InstargramBO instargramBO;
	
	// 로그인 화면
	@GetMapping("login_view")
	public String loginView() {
		return "/instargram/login";
	}
	
}
