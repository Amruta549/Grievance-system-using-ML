
package com.digitalGovernace.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.digitalGovernace.entity.LoginDetails;

@Repository
public interface DigitalGovernaceServiceRepository extends JpaRepository<LoginDetails, Integer> {

	@Query(value = "select * from digital_Governace_login_master where EMAIL_ID=:emailId and USER_PASSWORD=:userPassword and IS_ACTIVE=:isActive ", nativeQuery = true)

	public List<LoginDetails> findByUsernameandpassword(@Param("emailId") String email, @Param("userPassword") String password, @Param("isActive") int isActive);

}
