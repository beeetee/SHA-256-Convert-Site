package com.sha.domain;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name="password")
@Getter
@Setter
@NoArgsConstructor
public class Password {

	public Password(String password) {
		this.password = password;
	}

	@Id
	private String password;
	
	private Long count;
	private String EncryptionPassword;
	
	@CreationTimestamp
	private LocalDateTime createTime;
	
	@UpdateTimestamp
	private LocalDateTime updateTime;
}
