package com.bradypods.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class IndexController {
	
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String goHome() {

		return "home";//视图解析器，前缀，后缀的拼接
		//最终页面响应的结果WEB-INF/views/index.jsp
	}
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String goIndex() {

		return "index";//视图解析器，前缀，后缀的拼接
		//最终页面响应的结果WEB-INF/views/index.jsp
	}


	//动态接收请求地址参数做页面跳转
	@RequestMapping(value="page/{pageName}",method=RequestMethod.GET)
	public String goPage(@PathVariable String pageName){
		return pageName;
	}
	
}
