package com.sha.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sha.repository.PasswordRepository;
import com.sha.domain.Password;


@Service
public class RankService {
	@Autowired
	PasswordRepository passwordRepo;
	
	public List<Password> selectPasswordOrderByCount(){
		passwordRepo.findAll();
		return passwordRepo.findAllByOrderByCountDesc();
		
	}
	
	
}
