
package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PassRepos extends JpaRepository<Pass, Integer> {

	
	Pass findByStatus(String status);
	
	Pass findByFullname(String fullname);
}
