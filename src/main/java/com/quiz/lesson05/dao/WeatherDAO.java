package com.quiz.lesson05.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

@Repository
public interface WeatherDAO {
	public void insertWeather(
			@Param("name") String name,
			@Param("date") Date date,
			@Param("weather") String weather,
			@Param("temperatures") Double temperatures,
			@Param("name") Double precipitation,
			@Param("microDust") String microDust,
			@Param("windSpeed") Double windSpeed);
}
