package com.project.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.entity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>{



}