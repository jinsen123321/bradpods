package com.bradypods.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bradypods.pojo.Position;
import com.bradypods.service.PositionService;
import com.bradypods.vo.Page;

@Controller
public class PositionController {
	@Autowired
	private PositionService positionService;
	
	@RequestMapping(value="list" ,method=RequestMethod.GET)
	public String queryByPage(Integer currentPage, Integer rows,Model model){
		Page page1=positionService.queryByPage(currentPage,rows);
		model.addAttribute("page", page1);
		return "list";
		
	}
	@RequestMapping("positiondetail/{positionId}")
	public String queryById(@PathVariable Integer positionId,Model model){
		System.out.println(positionId);
		Position position=positionService.queryById(positionId);
		model.addAttribute("position", position);
		return "positiondetail";
	}
}
