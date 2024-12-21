package com.example.echo.repository;

import java.util.Optional;
import java.util.UUID;

import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

import com.example.echo.model.User;

@Repository
public interface UserRepository extends ListCrudRepository<User, UUID> {

    Optional<User> findByUsername(String username);

    Optional<User> findByEmail(String username);

}
