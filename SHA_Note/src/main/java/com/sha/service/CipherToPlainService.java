package com.sha.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sha.domain.Password;
import com.sha.repository.PasswordRepository;

@Service
public class CipherToPlainService {
	
	@Autowired
	PasswordRepository passwordRepo;
	
	public String plain;
	public String cipher;
	
	public List<String> convert(String cipher){
		
		this.cipher = cipher;
		List<Password> passwordList = passwordRepo.selectByEncryptionPassword(cipher);
		
		
		if(passwordList.size() <= 0) {
			return null;
		}
		
		List<String> passwords = new ArrayList<String>();
		for(int i=0;i<passwordList.size();i++) {
			passwords.add(passwordList.get(i).getPassword());
		}
		
		return passwords;
		
		
	}
	
}
