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
	
	// 중복확인
	// db에서 가져온 하나의 행 
	// controller 에서 BookMark가 있냐 없냐에 대해서 여기서 작동을 하는 것이다.
	public BookMark getFavoriteByUrl(String url) {
		List<BookMark> favoriteList = bookMarkDAO.selectFavoriteByUrl(url);
		// 0 1		[]
		// favoriteList 이게 null이 아니여서 isEmpty가 적용이 된다.
		if (favoriteList.isEmpty() == false) { // 리스트가 채워져 있을 때 
			return favoriteList.get(0);
		}
		
		// 비어 있는 경우
		return null;
	}
	
	// 내가 한 거
//	public boolean existAddressByUrl(String url) {
//		return bookMarkDAO.existAddressByUrl(url);
//	}
//	
	// 행 삭제
	public int deleteFavoriteById(int id) {
		return bookMarkDAO.deleteFavoriteById(id);
	}
}
