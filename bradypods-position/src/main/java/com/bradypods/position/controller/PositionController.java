package com.bradypods.position.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bradypods.pojo.Position;
import com.bradypods.position.service.PositionService;
import com.bradypods.vo.Page;

@RestController
public class PositionController {
	@Autowired
	private PositionService positionService;
	@RequestMapping("position/queryByPage")
	public Page queryByPage(Integer currentPage,Integer rows){
		System.out.println(rows);
		return positionService.queryByPage(currentPage, rows);
	}
	
	@RequestMapping(value="position/queryById/{positiontId}")
	public Position queryById(@PathVariable String positiontId){
		System.out.println("66446616651");
		return positionService.queryById(positiontId);
	}
	
}














