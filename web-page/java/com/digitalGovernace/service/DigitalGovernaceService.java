package com.digitalGovernace.service;


import java.util.List;

import com.digitalGovernace.entity.Complaint;
import com.digitalGovernace.entity.LoginDetails;

public interface DigitalGovernaceService {

	List<LoginDetails> validLoginDetails(LoginDetails loginDetails);

	void saveComplaintDetails(Complaint complaint);

	List<Complaint>  getComplaintDetails();

	void deleteCompalaint(Complaint complaint);

}
