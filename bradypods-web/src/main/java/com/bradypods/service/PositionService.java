package com.bradypods.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.bradypods.pojo.Position;
import com.bradypods.vo.Page;
@Service
public class PositionService {

	private static final String url="http://position.bradypods.com/position/queryByPage/";
	private static final String url1="http://position.bradypods.com/position/queryById/";
	@Autowired
	private RestTemplate client;
	public Page queryByPage(Integer currentPage, Integer rows) {
		String pageUrl=url+"?currentPage={1}&rows={2}";
		Page resultPage = client.getForObject(pageUrl, Page.class, currentPage,rows);
		return resultPage;
	}
	public Position queryById(Integer positionId) {
		String positionUrl=url1+"{1}";
		Position position= client.getForObject(positionUrl, Position.class, positionId);
		return position;
	}

	
}
