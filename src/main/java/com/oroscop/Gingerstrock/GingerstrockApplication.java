package com.oroscop.Gingerstrock;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class GingerstrockApplication {

	public static void main(String[] args) {

		SpringApplication.run(GingerstrockApplication.class, args);
		SecurityConfig security = new SecurityConfig();
	}

}
