package com.quiz.lesson03.bo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson03.dao.RealEstateDAO;
import com.quiz.lesson03.model.RealEstate;

@Service
public class RealEstateBO {
	
	// quiz02 select
	
	@Autowired
	private RealEstateDAO realEstateDAO;
	// input: controller가 넘겨주는 id
	// output: RealEstate 단건 => Controller한테 넘김
	public RealEstate getRealEstateById(int id) {
		return realEstateDAO.selectRealEstateById(id);
	}
	
	// input: Controller 넘겨준 rentPrice
	// output: List<RealEstate> => 컨트롤러한테 넘김
	public List<RealEstate> getRealEstateByRentPrice(int rentPrice) {
		return realEstateDAO.selectRealEstateByRentPrice(rentPrice);
	}
	
	// input: Controller 넘겨준 area, price
	// output: List<RealEstate> => 컨트롤러한테 넘김
	public List<RealEstate> getRealEstateByAreaPrice(int area, int price) {
		//Map<String, Object> params = new HashMap<>();   // 이렇게 할 수도 있다.
		return realEstateDAO.selectRealEstateByAreaPrice(area, price);
	}
	
	// quiz02 insert
	
	public int addRealEstate(RealEstate realEstate) {
		return realEstateDAO.insertRealEstate(realEstate);
	}
	
	public int addRealEstateAsField(int storeId, String address, int area, String type, int price, Integer rentPrice) { // 매매 인 걸 확인해야하기 떄문에 Integer로 해야한다.
		return realEstateDAO.insertRealEstateAsField(storeId, address, area, type, price, rentPrice) ;
	}
	
	// quiz03 update
	
	public int updateRealEstateById(int id, String type, int price) {
		return realEstateDAO.updateRealEstateById(id, type, price);
	}
	
	
	// quiz04 delete
	public void deleterealEstateById(int id) {
		realEstateDAO.deleterealEstateById(id);
	}
}
