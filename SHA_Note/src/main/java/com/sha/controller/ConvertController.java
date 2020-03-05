package com.sha.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sha.service.PlainToCipherService;
import com.sha.service.CipherToPlainService;

@Controller
public class ConvertController {
	
	@Autowired
	PlainToCipherService plainToCipher;
	@Autowired
	CipherToPlainService CipherToPlain;
	

	@PostMapping("encryption")
	public String EncrptionPage(@RequestParam String data, Model model) {
		String cipher = plainToCipher.convert(data);
		model.addAttribute("cipher",cipher);
		model.addAttribute("plain", data);
		
		return "01.encryption";
	}
	
	@PostMapping("decryption")
	public String DecrptionPage(@RequestParam String data, Model model) {
		
		model.addAttribute("cipher",data);
		
		if(CipherToPlain.convert(data) != null) {
			model.addAttribute("plains", CipherToPlain.convert(data));			
			return "02.decryption";
		}
		
		
		return "03.NotFindPlainPassword";
	}
	
}
