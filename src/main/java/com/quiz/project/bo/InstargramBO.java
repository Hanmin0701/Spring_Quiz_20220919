package com.quiz.project.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.project.dao.InstargramDAO;

@Service
public class InstargramBO {
	
	@Autowired
	private InstargramDAO instargramDAO;
	
}
