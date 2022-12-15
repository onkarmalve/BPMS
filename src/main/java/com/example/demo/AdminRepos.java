package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepos extends JpaRepository<Admin, Integer> {
	
	Admin findByGmailAndPass(String gmail,String pass);

}
