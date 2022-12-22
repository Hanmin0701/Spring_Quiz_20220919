package com.quiz.lesson02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson02.model.Store;

@Repository
public interface StoreDAO {
	// input: X (Service(BO)가 아무것도 안준다.)
	// output: List<Store>
	public List<Store> selectStoreList();
}
