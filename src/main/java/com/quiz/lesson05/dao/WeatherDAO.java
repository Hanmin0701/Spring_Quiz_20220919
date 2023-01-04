package com.quiz.lesson05.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.model.Weather;

import jakarta.servlet.http.HttpServletResponse;

@Repository
public interface WeatherDAO {
	public void insertWeather(Weather weather);
	
	// select
	public List<Weather> selectWeatherList();

	public void addWeatherHistory(
			@Param("date") Date date,
			@Param("weather") String weather,
			@Param("microDust")  String microDust,
			@Param("temperatures") double temperatures,
			@Param("precipitation") double precipitation, 
			@Param("windSpeed") double windSpeed);
}
