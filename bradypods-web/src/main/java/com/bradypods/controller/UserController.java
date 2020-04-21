package com.bradypods.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bradypods.service.UserService;

import com.bradypods.pojo.User;
import com.bradypods.util.CookieUtils;
import com.bradypods.vo.SysResult;



@Controller
public class UserController {
	@Autowired
	private UserService userService;
	//ajax查询用户是否名称存在
	@RequestMapping(value="user_ajax/checkUserName"
			,method=RequestMethod.POST)
	@ResponseBody
	public SysResult checkUserName(String userName){
		int exist=userService.queryName(userName);
		//数据库如果存在,返回1,数据库如果不存在返回0
		return SysResult.build(exist, "ok", null);
		//嘿嘿
	}
	
	@RequestMapping(value="/user_ajax/regist"
			,method=RequestMethod.POST)
	@ResponseBody
	public SysResult saveUser(User user){
		try{
			//业务层调用,插入表格数据
			System.out.println(user.getUserName());
			userService.saveUser(user);
			return SysResult.build(1, null, null);
		}catch(Exception e){
			e.printStackTrace();
			return SysResult.build(0, null, null);
		}
	}
	
	@RequestMapping(value="user_ajax/login"
			,method=RequestMethod.GET)
	@ResponseBody
	public SysResult doLogin(User user,HttpServletRequest request,
			HttpServletResponse response){
		//获取的user对象只有userName和userPassword
		String ticket=userService.doLogin(user);
		//如果ticket为空相当于登录失败
		if(!StringUtils.isNotEmpty(ticket)){//ticket为空
			return SysResult.build(0, "", null);
		}
		else{//不为空登录成功
			//返回成功信息之前,需要将ticket放到cookie中
			//调用cookie进行set值
			CookieUtils.setCookie(request, response,
					"JT_TICKET", ticket);
			return SysResult.build(1, "", null);
		}
	}
	
	@RequestMapping(value="user_ajax/logout")
	public String logOut( String userId,HttpServletRequest request,HttpServletResponse response){
		userService.doLoginOut(userId,request,response);
		
		return "redirect:/";
		//嘿嘿
	}
}




