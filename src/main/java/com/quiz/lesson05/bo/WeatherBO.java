package com.quiz.lesson05.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.model.Realtor;
import com.quiz.lesson05.dao.WeatherDAO;
import com.quiz.lesson05.model.Weather;

@Service
public class WeatherBO {
	
	@Autowired
	private WeatherDAO weatherDAO;
	
	//select
	public List<Weather> getWeatherList() {
		return weatherDAO.selectWeatherList();
	}
	
	// insert
	public void addWeather(Weather weather) {
		weatherDAO.insertWeather(weather);
	}
}
