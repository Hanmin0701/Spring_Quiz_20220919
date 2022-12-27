package com.quiz.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {
	// quiz01 1번 select
	public RealEstate selectRealEstateById(int id);

	// quiz01 2번 select
	public List<RealEstate> selectRealEstateByRentPrice(int rentPrice);
	
	// quiz01 3번 select
	public List<RealEstate> selectRealEstateByAreaPrice(
			// @Param 어노테이션에 의해서 하나의 맵이 되었다.
			// 2개 이상이 있을 경우
			@Param("area") int area, 
			@Param("price") int price);
	
	// quiz02 1번 insert
	public int insertRealEstate(RealEstate realEstate);
	
	// quiz02 2번 insert
	public int insertRealEstateAsField(
			@Param("realtorId") int storeId, 
			@Param("address") String address,
			@Param("area") int area, 
			@Param("type") String type,
			@Param("price") int price, 
			@Param("rentPrice") int rentPrice);
	
	// quiz03 1번 update
	public int updateRealEstateById(
			@Param("id") int id, 
			@Param("type") String type, 
			@Param("price") int price);
	
	// quiz04 delete
	public void deleterealEstateById(int id);
}