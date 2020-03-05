package com.sha.convert;

import com.sha.Encryprion.SHA256_Encryption;

public class plainToCipher {
	
	private String plain;
	private String cipher;
	
	public plainToCipher(String data) {
		this.plain = data;		
	}
	
	public String convertPlainToCipher() {
		cipher = SHA256_Encryption.encrypt(plain);
		return cipher;
	}
	

}
