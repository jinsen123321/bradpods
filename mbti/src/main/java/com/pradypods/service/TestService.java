package com.pradypods.service;


import com.pradypods.mapper.TestMapper;
import com.pradypods.pojo.Suggestion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestService {
	@Autowired
	private TestMapper positionMapper;
	
	public Suggestion query(String str) {
		return positionMapper.query(str);
	}
}
