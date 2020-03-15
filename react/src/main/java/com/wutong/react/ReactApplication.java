package com.wutong.react;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.wutong.react.mapper")
public class ReactApplication {

    public static void main(String[] args) {
        SpringApplication.run(ReactApplication.class, args);
        System.out.println("REACT-ADMIN启动成功");

    }

}
