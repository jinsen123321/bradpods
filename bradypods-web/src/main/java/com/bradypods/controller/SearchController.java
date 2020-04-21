package com.bradypods.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bradypods.pojo.Position;
import com.bradypods.service.SearchService;
import com.bradypods.vo.Page;

@Controller
public class SearchController {
	@Autowired
	private SearchService searcher;
	//跳转到search.jsp
	@RequestMapping("search")
	public String search(String q,Integer page,Model model){
		System.out.println("开始搜索");
		if(page==null){page=1;}
		List<Position> pList=searcher.search(q,page);
		System.out.println(pList);
		
		Page page1 = new Page();
		page1.setCurrentPage(1); 
		page1.setTotalPage(1);
		page1.setPositions(pList);
		model.addAttribute("page",page1);
		
		//想完成每个分词的高亮,不仅要返回q,还要返回q的分词结果,配合页面的使用
		return "list";//WEB-INF/views/search.jsp
	}
}