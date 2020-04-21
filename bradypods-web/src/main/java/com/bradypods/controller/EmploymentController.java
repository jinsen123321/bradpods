package com.bradypods.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bradypods.service.EmpService;
import com.bradypods.vo.Page;

@Controller
public class EmploymentController {
	@Autowired
	private EmpService empService;
	//职业的分页查询
	@RequestMapping("position/page")
	public String queryByPage (Integer currentPage,Integer rows){
//		Page emp=empService.queryByPage(currentPage,rows);
		
		return "查询完跳转到主页";
		
	}
}
