package com.bradypods.service;

import java.util.HashMap;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.bradypods.pojo.User;
import com.bradypods.util.CookieUtils;

@Service
public class UserService {
	private static final String url="http://user.bradypods.com/user/";
	//注入RestTemplate
	@Autowired
	private RestTemplate client;
	public int queryName(String userName) {
		//按照接口文件进行调用和传参和数据的接收
		String userUrl=url+"checkUserName/"+userName;
		try{
			Integer exist=client.getForEntity(userUrl,Integer.class).getBody();
			return exist;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	public void saveUser(User user) {
		//按照注册接口调用user系统
		String userUrl=url+"save";
		try{
			System.out.println("webService:"+user.getUserName());
			client.postForObject(userUrl,user, Integer.class);
			System.out.println("保存用户成功");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public String doLogin(User user) {
		//按照接口文件访问登录
		String userUrl=url+"login";
		try{
			//封装参数
			Map<String, String> param=new HashMap<String, String>();
			param.put("userName", user.getUserName());
			param.put("userPassword", user.getUserPassword());
			
			String result = client.postForObject(userUrl, user, String.class);
			System.out.println("没有异常");
			//从中解析body拿到ticket
			return result;
		}catch(Exception e ){
			e.printStackTrace();
			return "";
		}
	}
	public String doLoginOut(String userId,HttpServletRequest request,
			HttpServletResponse response) {
		String logOutUrl=url+"logout";
		CookieUtils.deleteCookie(request, response, "JT_TICKET");
		String result = client.postForObject(logOutUrl, userId, String.class);
		return result;
	}

}
