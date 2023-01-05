package com.quiz.Lesson06.bo;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.Lesson06.dao.BookMarkDAO;
import com.quiz.Lesson06.model.BookMark;

@Service
public class BookMarkBO {

	@Autowired
	private BookMarkDAO bookMarkDAO;
	
	public void addFavorite(String name, String url) {
		bookMarkDAO.insertFavorite(name, url);
	}
	
	public List<BookMark> getFavoriteLsit(){
		return bookMarkDAO.selectFavoriteLsit();
	}
	
	
	public boolean existAddressByUrl(String url) {
		return bookMarkDAO.existAddressByUrl(url);
	}
	
	// 행 삭제
	public Integer deleteRow(int id) {
		return bookMarkDAO.deleteRowById(id);
	}
}
