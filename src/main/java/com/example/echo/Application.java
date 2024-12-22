package com.example.echo;

import java.util.Optional;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.example.echo.user.User;
import com.example.echo.user.UserRepository;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

	@Bean
	CommandLineRunner commandLineRunner(UserRepository users, PasswordEncoder encoder) {
		return args -> {
			Optional<User> admin = users.findByUsername("admin");
			if (admin.isEmpty()) {
				users.save(new User("admin@admin.com", "admin", encoder.encode("password")));
			}
		};
	}

}
