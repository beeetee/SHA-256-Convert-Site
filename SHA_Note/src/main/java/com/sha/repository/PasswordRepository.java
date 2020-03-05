package com.sha.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.sha.domain.Password;

@Repository
public interface PasswordRepository extends JpaRepository<Password, String> {

	@Query("SELECT p FROM Password p WHERE ENCRYPTION_PASSWORD = ?1")
	List<Password> selectByEncryptionPassword(String cipher);

	List<Password> findAllByOrderByCountDesc();



}
