package com.quiz.lesson05.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

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
	public void addWeather(Date date, String weather,String microDust,double temperatures,double precipitation, double windSpeed) {
		weatherDAO.addWeatherHistory(date, weather, microDust, temperatures, precipitation,windSpeed);
	}
}