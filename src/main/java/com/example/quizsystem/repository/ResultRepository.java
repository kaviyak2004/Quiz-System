package com.example.quizsystem.repository;

import com.example.quizsystem.model.Result;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ResultRepository extends JpaRepository<Result,Integer> {
}
