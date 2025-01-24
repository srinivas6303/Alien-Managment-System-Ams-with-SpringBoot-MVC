package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository 
public interface AlienRepo extends JpaRepository<Alien,Integer>{

	List<Alien> findByAname(String name);

}
