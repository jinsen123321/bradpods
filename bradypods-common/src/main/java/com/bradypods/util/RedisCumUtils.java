package com.bradypods.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPool;

@Component
public class RedisCumUtils {
	@Autowired(required=false)
	private ShardedJedisPool pool;
	//query,addOrUpdate,delete,isExists
	public String query(String key){
		ShardedJedis jedis = pool.getResource();
		try{
			return jedis.get(key);
		}catch(Exception e){
			//异常处理逻辑
			return null;
		}finally{
			pool.returnBrokenResource(jedis);
		}
	}
	public void addOrUpdate(String key,String value){
		ShardedJedis jedis = pool.getResource();
		try{
			jedis.set(key, value);
		}catch(Exception e){
			//异常处理逻辑
		}finally{
			pool.returnBrokenResource(jedis);
		}
	}
	public void delete(String key){
		ShardedJedis jedis = pool.getResource();
		try{
			jedis.del(key);
		}catch(Exception e){
			//异常处理逻辑
		}finally{
			pool.returnBrokenResource(jedis);
		}
	}
	public Boolean isExist(String key){
		ShardedJedis jedis = pool.getResource();
		try{
			return jedis.exists(key);
		}catch(Exception e){
			//异常处理逻辑
			return false;
		}finally{
			pool.returnBrokenResource(jedis);
		}
	}
	//封装一个带有超时逻辑的add方法
	public void addOrUpdateExpire(String key,String value,Integer seconds){
		ShardedJedis jedis = pool.getResource();
		try{
			jedis.setex(key, seconds, value);
		}catch(Exception e){
			//异常处理逻辑
		}finally{
		}
	}
	public Long queryTimeLeft(String key){
		ShardedJedis jedis = pool.getResource();
		try{
			return jedis.ttl(key);
		}catch(Exception e){
			e.printStackTrace();
			return 0l;
		}finally{
			pool.returnBrokenResource(jedis);
		}
	}
	public void expandTime(String key,Integer seconds){
		ShardedJedis jedis = pool.getResource();
		try{
			jedis.expire(key, seconds);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.returnBrokenResource(jedis);
		}
	}
}




