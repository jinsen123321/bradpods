package com.pradypods;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication(scanBasePackages = "com.*.*")
@MapperScan("com.pradypods.mapper")
public class Starter {
    public static void main(String[] args) {
        SpringApplication.run(Starter.class,args);
    }

}
