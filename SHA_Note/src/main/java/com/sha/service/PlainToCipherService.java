package com.sha.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sha.convert.*;
import com.sha.domain.Password;
import com.sha.repository.PasswordRepository;

@Service
public class PlainToCipherService {

	@Autowired
	PasswordRepository passwordRepo;
	
	public String plain;
	public String cipher;
	
	
	public String convert(String plain) {
		plainToCipher ptc = new plainToCipher(plain);
		
		this.plain = plain;
		this.cipher = ptc.convertPlainToCipher();
		
		insertPassword();

		return cipher;
	}
	
	private void insertPassword() {		
		Password password = new Password(plain);
		
		if(passwordRepo.existsById(plain)) {
			updatePassword();
		}
		else {
			
			
			
			password.setCount((long) 1);
			password.setPassword(plain);
			password.setEncryptionPassword(cipher);
			
			
			System.out.println(password.getPassword());
			
			passwordRepo.save(password);
		}
		
	}
	
	private void updatePassword() {
		Password existPassword = passwordRepo.getOne(plain);
		existPassword.setCount(existPassword.getCount()+1);
		passwordRepo.save(existPassword);
	}

}
