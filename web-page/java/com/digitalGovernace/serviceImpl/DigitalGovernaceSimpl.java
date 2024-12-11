package com.digitalGovernace.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digitalGovernace.entity.Complaint;
import com.digitalGovernace.entity.LoginDetails;
import com.digitalGovernace.repository.DigitalGovernaceServiceRepository;
import com.digitalGovernace.repository.SaveComplaintDetailsRepository;
import com.digitalGovernace.service.DigitalGovernaceService;
@Service
public class DigitalGovernaceSimpl implements DigitalGovernaceService{
	
	  @Autowired 
	  DigitalGovernaceServiceRepository digitalGovernaceServiceRepository;
	  
	  @Autowired 
	  SaveComplaintDetailsRepository saveComplaintDetailsRepository;
	 

	@Override
	public List<LoginDetails> validLoginDetails(LoginDetails loginDetails) {
	return	digitalGovernaceServiceRepository.findByUsernameandpassword(loginDetails.getEmail() , loginDetails.getPassword(),1);
		
	}


	@Override
	public void saveComplaintDetails(Complaint complaint) {
		saveComplaintDetailsRepository.save(complaint);
		
	}


	@Override
	public 	List<Complaint>  getComplaintDetails() {
		return saveComplaintDetailsRepository.getComplaintDetails();
		
	}


	@Override
	public void deleteCompalaint(Complaint complaint) {
		saveComplaintDetailsRepository.deleteComplaint(complaint.getId(),0);
		
	}

}
