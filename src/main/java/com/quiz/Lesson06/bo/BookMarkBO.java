package com.quiz.Lesson06.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.Lesson06.dao.BookMarkDAO;

@Service
public class BookMarkBO {

	@Autowired
	private BookMarkDAO bookMarkDAO;
	
	public void addFavorite(String name, String url) {
		bookMarkDAO.insertFavorite(name, url);
	}
}
