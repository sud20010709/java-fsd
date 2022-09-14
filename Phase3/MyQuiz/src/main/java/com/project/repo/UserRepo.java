package com.project.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.entity.User;


@Repository
public interface UserRepo extends JpaRepository<User, Integer> {

}