package com.quiz.lesson05.bo;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson05.dao.WeatherDAO;

@Service
public class WeatherBO {
	
	@Autowired
	private WeatherDAO weatherDAO;
	
	public void insertWeather(String name, Date date, String weather, Double temperatures, Double precipitation, String microDust, Double windSpeed) {
		weatherDAO.insertWeather(name, date, weather, temperatures, precipitation, microDust, windSpeed);
	}
}
