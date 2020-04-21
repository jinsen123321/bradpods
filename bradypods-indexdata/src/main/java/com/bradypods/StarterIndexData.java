package com.bradypods;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
@MapperScan("com.bradypods.indexdata.mapper")
public class StarterIndexData {
	public static void main(String[] args) {
		SpringApplication.run(StarterIndexData.class, args);
	}
}
