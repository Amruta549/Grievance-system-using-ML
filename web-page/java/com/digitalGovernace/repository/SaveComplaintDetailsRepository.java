package com.digitalGovernace.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.digitalGovernace.entity.Complaint;

import jakarta.transaction.Transactional;


public interface SaveComplaintDetailsRepository extends JpaRepository<Complaint, Integer>{

	@Query(value = "select id,name,email_Id,complaint,COLLEGE_ID,BRANCH_ID,IS_ACTIVE,DATE_CREATED_ON,PRIORITY,USER_TYPE_DB_KEY,CONTACT_NUMBER from complaint_details where priority='High' order by 1 asc ", nativeQuery = true)
	List<Complaint> getComplaintDetails();
	 @Modifying
	    @Transactional
	   @Query(value ="UPDATE complaint_details  SET IS_ACTIVE =:isActive  WHERE id=:id", nativeQuery = true)
	int deleteComplaint(@Param("id") Long id, @Param("isActive") int isActive);

}
