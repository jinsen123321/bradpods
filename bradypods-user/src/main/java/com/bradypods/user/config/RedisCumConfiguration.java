package com.bradypods.user.config;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import redis.clients.jedis.JedisShardInfo;
import redis.clients.jedis.ShardedJedisPool;

/**
 * 在当前工程扫描范围之内的configuration配置类
 * 读取前缀是redis的所有key值,根据私有属性名称的getter/stter
 * 赋值给属性
 * @author TEDU
 *
 */
@Configuration
@ConfigurationProperties(prefix="redis")
public class RedisCumConfiguration {
	//根据前缀读取数据,私有属性名称,必须和
	//properties中的值相同
	private String nodes;
	private Integer maxTotal;
	private Integer maxIdle;
	private Integer minIdle;
	
	//编写初始化JedisShardPool对象的方法,@Bean将返回对象
	//作为框架管理的bean
	@Bean 
	public ShardedJedisPool initJedisPool(){
		//利用本类中读取的属性,创建连接池对象
		//先做一个config对象
		GenericObjectPoolConfig config=new GenericObjectPoolConfig();
		config.setMaxIdle(maxIdle);
		config.setMaxTotal(maxTotal);
		//config.setMinIdle(minIdle);
		//解析nodes,生成一个list对象
		//准备一个空内容
		List<JedisShardInfo> infoList=new ArrayList<JedisShardInfo>();
		String[] node = nodes.split(",");//{"10.9.9.9:6379","10l.9.9.9:6380",""}
		for (String hostAndPort : node) {
			String host=hostAndPort.split(":")[0];
			int port=Integer.parseInt(hostAndPort.split(":")[1]);
			infoList.add(new JedisShardInfo(host, port));
		}
		//list,config,构造连接池对象返回
		return new ShardedJedisPool(config,infoList);
	}
	
	
	public String getNodes() {
		return nodes;
	}
	public void setNodes(String nodes) {
		this.nodes = nodes;
	}
	public Integer getMaxTotal() {
		return maxTotal;
	}
	public void setMaxTotal(Integer maxTotal) {
		this.maxTotal = maxTotal;
	}
	public Integer getMaxIdle() {
		return maxIdle;
	}
	public void setMaxIdle(Integer maxIdle) {
		this.maxIdle = maxIdle;
	}
	public Integer getMinIdle() {
		return minIdle;
	}
	public void setMinIdle(Integer minIdle) {
		this.minIdle = minIdle;
	}
	
	
	
	
	
	
	
}
