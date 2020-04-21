package com.bradypods.user.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.bradypods.pojo.User;
import com.bradypods.user.mapper.UserMapper;
import com.bradypods.util.MD5Util;
import com.bradypods.util.MapperUtils;
import com.bradypods.util.RedisCumUtils;


@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;
	public Integer checkUserName( String userName) {
		return userMapper.queryName(userName);
	}
	public void saveUser(User user) {
		//user的id,type,password的加密
		System.out.println("userservice:"+user.getUserName());
		user.setUserId(UUID.randomUUID().toString());
		user.setUserPassword(MD5Util.md5(user.getUserPassword()));
		user.setUserType(0);
		userMapper.insertUser(user);
	}
	@Autowired
	private RedisCumUtils redis;
	public String doLogin(User user) {
		
		//查询一下数据库数据,是否存在userExist
		//处理用户密码加密
		user.setUserPassword(MD5Util.md5(user.getUserPassword()));
		User exist=userMapper.selectExist(user);
		try{
			if(exist==null){//登录失败
				return "";
			}else{
				//通过唯一值确定是否已经/曾经登录过,
				//生成一个顶替登录的唯一值,userId
				String alterKey="alterKey_"+exist.getUserId();
				if(redis.isExist(alterKey)){
					//说明有人登录过,拿到key对应的ticketvalue
					redis.delete(redis.query(alterKey));
				}
				//表示成功,存储在redis返回key值
				String ticket=MD5Util.md5("EM_TICKET"+System.currentTimeMillis()
				+exist.getUserId());
				//准备value值,mapper转化user为json字符串
				String userJson=MapperUtils.MP.writeValueAsString(exist);
				//set数据到redis供后续逻辑使用
				redis.addOrUpdateExpire(ticket, userJson, 60*30);
				//生成一个alterKey对应ticket的数据定义唯一的登录者
				redis.addOrUpdate(alterKey, ticket);
				//验证最多一个用户登录,顶替登录逻辑 
				//TODO
				return ticket;
			}	
		}catch(Exception e){
			e.printStackTrace();
			return "";
		}
	}
	public String queryTicket(String ticket) {
		//TODO 超时时间延长--续租
		//每次访问到这个方法,都是由于用户访问了head.jsp的js代码
		//判断剩余时间
		Long time=redis.queryTimeLeft(ticket);
		if(time<60*10){//将时间添加5分钟做续租
			Integer extTime=(int) (time+60*5);
			redis.expandTime(ticket, extTime);
		}
		return redis.query(ticket);
	}
	public String logOut(String userId) {
		try {
			redis.delete("alterKey_"+userId);
			return "true";
		} catch (Exception e) {
			
			e.printStackTrace();
			return "false";
		}
		
		
	}

	
	
	

	
	
	
	
	
	
}
