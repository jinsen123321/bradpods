package com.bradypods;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class Web_Starter {
	public static void main(String[] args) {
		SpringApplication.run(Web_Starter.class,args);
	}
	
//	@LoadBalanced //注解本质上启动一个拦截器,拦截restTemplate发送的请求,将其中
	//服务名称替换成实例节点信息,进行访问
	@Bean
	public RestTemplate initRibbonRestTemplate(){
		return new RestTemplate();

}
}
