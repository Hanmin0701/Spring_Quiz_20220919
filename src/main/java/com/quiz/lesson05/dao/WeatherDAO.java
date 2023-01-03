package com.quiz.lesson05.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.model.Weather;

@Repository
public interface WeatherDAO {
	public void insertWeather(Weather weather);
	
	// select
	public List<Weather> selectWeatherList();
}
