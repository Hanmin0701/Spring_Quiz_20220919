package com.quiz.Lesson06.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public class BookMarkDAO {
	public void insertFavorite(
			@Param("name") String name, 
			@Param("url") String url); 
}
