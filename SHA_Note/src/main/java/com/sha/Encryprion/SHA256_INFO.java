package com.sha.Encryprion;

public class SHA256_INFO {
	public int uChainVar[];
	public int uHighLength;
	public int uLowLength;
	public byte szBuffer[];
	
	public SHA256_INFO(int[] uChainVar, byte[] szBuffer) {
		this.uChainVar = uChainVar;
		this.szBuffer = szBuffer;
	}	
}
