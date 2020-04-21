package com.bradypods.user.controller;

import org.apache.commons.lang3.StringUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bradypods.pojo.User;
import com.bradypods.user.service.UserService;
import com.bradypods.util.MapperUtils;
import com.bradypods.vo.SysResult;


@RestController

@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;
	//接收前台的请求,返回数据库用户名可用还是不可用
	@RequestMapping("checkUserName/{userName}")
	public Integer checkUserName(@PathVariable String userName){
		Integer exist=userService.checkUserName(userName);
		return exist;
	}
	
	@RequestMapping(value="save",method=RequestMethod.POST)
	public Integer saveUser(@RequestBody User user){
		try{
			System.out.println("Usercontroller:"+user.getUserName());
			userService.saveUser(user);
			return 1;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	//验证登录的用户名密码是否正确
	@RequestMapping("login")
	public String doLogin(@RequestBody User user){
		System.err.println("登陆前"+user.getUserName());
		String ticket=userService.doLogin(user);
		System.err.println("登陆后");
		//成功登录返回redis的key,失败返回""
		return ticket;
	}
	
	//校验登录状态,查询redis数据
	@RequestMapping("query/{ticket}")
	public String checkTicket(@PathVariable String ticket
			,String callback){
		try{
			//走到redis校验数据
			String userJson=userService.queryTicket(ticket);
			//封装返回的json数据,SysResult
			SysResult result=null;
			if(StringUtils.isNotEmpty(userJson)){//登录状态正常
				result=SysResult.build(200, "", userJson);
			}else{
				result=SysResult.build(201, "", null);
			}
			//将result解析成json等待返回使用
			String resultJson=MapperUtils.MP.writeValueAsString(result);
			//判断请求需要的数据格式,callback
			if(callback==null){
				return resultJson;//作为json字符串返回
			}else{
				return callback+"("+resultJson+")";//jsonp格式返回
			}
		}catch(Exception e){
			return "";
		}
	}
	
	@RequestMapping("logout")
	public String logOut(String userId){
		
		String result=userService.logOut(userId);
		System.err.println("退出登录");
		return result;
	}
	
//	@RequestMapping(value="search",method=RequestMethod.GET)
//	public String IndexCon(String q) {
//		userService.index(q);
//		
//		return q;
//		
//	}
}


















