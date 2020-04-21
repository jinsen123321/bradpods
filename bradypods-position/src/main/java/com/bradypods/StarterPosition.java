package com.bradypods;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.bradypods.position.mapper")
public class StarterPosition {
	public static void main(String[] args) {
		SpringApplication.run(StarterPosition.class, args);
	}
}
