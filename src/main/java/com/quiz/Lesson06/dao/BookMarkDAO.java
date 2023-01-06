package com.quiz.Lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.Lesson06.model.BookMark;

@Repository
public interface BookMarkDAO {
		public void insertFavorite(
				@Param("name") String name, 
				@Param("url") String url);
		
		public List<BookMark> selectFavoriteLsit();
		
		
		// 데이터를 가져와서 푸는 법
		public List<BookMark> selectFavoriteByUrl(String url);
		
//		public boolean existAddressByUrl(String url);
		
		// 행 삭제
		public int deleteFavoriteById(int id);
}
