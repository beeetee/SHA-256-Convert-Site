package com.sha;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;

@Configuration
@SpringBootApplication(scanBasePackages= {"com.sha"})

public class ShaNoteApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShaNoteApplication.class, args);
	}
	


}
