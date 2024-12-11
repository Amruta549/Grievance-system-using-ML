package com.digitalGovernace.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.digitalGovernace.entity.Complaint;
import com.digitalGovernace.entity.LoginDetails;
import com.digitalGovernace.entity.ResponseBean;
import com.digitalGovernace.service.DigitalGovernaceService;
import com.digitalGovernace.service.EmailService;





@Controller
public class DigitalGovernaceController {
	@Autowired
	DigitalGovernaceService digitalGovernaceService; 
	 @Autowired
	     EmailService emailService;
	@GetMapping("/home")
	public String login() {
		return "DigitalGovernaceLogin";
		
	}

	@PostMapping("/login")
	public String loginDetails(Model model, @ModelAttribute("loginAttribute") LoginDetails loginDetails) {
		System.out.println("loginDetails" + loginDetails.getEmail()+ "" + loginDetails.getPassword());
		List<LoginDetails> list=	digitalGovernaceService.validLoginDetails(loginDetails);
		if(null != list && !list.isEmpty()) {
		System.out.println("loginDetails" + list.get(0).getUserTypeDbKey()+ "" + loginDetails.getPassword());
		if (list.get(0).getUserTypeDbKey()==1) {
			

				return "studentComplaint";

			} /*
				 * else if (list.get(0).getUserTypeDbKey()==2) { return "facultyComplaint";
				 * 
				 * }
				 */ else{
					 int activeComplaints=0;
					 int inActiveComplaints=0;
				List<Complaint> complaintDetails=	digitalGovernaceService.getComplaintDetails();
				if(null != complaintDetails && !complaintDetails.isEmpty()) {
					
					for(Complaint complaint :complaintDetails) {
						if(complaint.getIsActive()==1) {
							activeComplaints=activeComplaints+complaint.getIsActive();
						}else {
							
							inActiveComplaints=inActiveComplaints+1;
							System.out.println("inActiveComplaints" + inActiveComplaints);

						}
					}
					model.addAttribute("studentComplaints", complaintDetails);
					model.addAttribute("complaintCount", complaintDetails.size());
					model.addAttribute("pendingComplaints", activeComplaints);
					model.addAttribute("solvedComplaints", inActiveComplaints);
					model.addAttribute("toPriority",complaintDetails.get(0).getId()+ complaintDetails.get(0).getComplaint());
				}
				return "Home";
			}
		}else {
			model.addAttribute("message", "Please Enter Valid Email Id and Password");
			return "DigitalGovernaceLogin";
		}
	}
	@PostMapping("/studentComplaints")
	public String studentComplaintRegistration(Model model, @ModelAttribute("studentAttribute") Complaint Complaint) {
		Test test=new Test();
//	String value=test.requestAndResponse(Complaint.getComplaint());
		Complaint.setPriority("High");
		Complaint.setUserTypeDbKey(1);
		Complaint.setIsActive(1);
		digitalGovernaceService.saveComplaintDetails(Complaint);
		
		  SimpleMailMessage mailMessage = new SimpleMailMessage();
		  mailMessage.setTo(Complaint.getEmail());
		  mailMessage.setSubject("Complaint Registration!");
		  mailMessage.setText("Your Complaint Registered Succesfully.");
		  emailService.sendEmail(mailMessage);
		 
		model.addAttribute("message", "Complaint Registered Successfully.And Mail Send to Student");
		return "studentComplaint";
}
	@PostMapping("/facultyComplaints")
	public String facultyComplaintRegistration(Model model, @ModelAttribute("facultyAttribute") Complaint loginDetails) {
		ResponseBean response = new ResponseBean();
		return "faculty";
}
	@PostMapping("/deleteComplaints")
	public String deleteComplaints(Model model, @ModelAttribute("deleteAttribute") Complaint Complaint) {
		try {
			System.out.println("complaintDetails.get(0).getComplaint()"+Complaint.getEmail());

		digitalGovernaceService.deleteCompalaint(Complaint);
		 SimpleMailMessage mailMessage = new SimpleMailMessage();
		  mailMessage.setTo(Complaint.getEmail());
		  mailMessage.setSubject("Complaint Resolved");
		  mailMessage.setText("Issue Resolved Succesfully. ");
		  emailService.sendEmail(mailMessage);
		 int activeComplaints=0;
		 int inActiveComplaints=0;
	List<Complaint> complaintDetails=	digitalGovernaceService.getComplaintDetails();
	System.out.println("complaintDetails.get(0).getComplaint()"+complaintDetails.get(0).getComplaint());

	if(null != complaintDetails && !complaintDetails.isEmpty()) {
		for(Complaint complaint :complaintDetails) {
			if(complaint.getIsActive()==1) {
				activeComplaints=activeComplaints+complaint.getIsActive();
			}else {
				inActiveComplaints=inActiveComplaints+1;
			}
		}
		model.addAttribute("studentComplaints", complaintDetails);
		model.addAttribute("complaintCount", complaintDetails.size());
		model.addAttribute("pendingComplaints", activeComplaints);
		model.addAttribute("solvedComplaints", inActiveComplaints);
		System.out.println("complaintDetails.get(0).getComplaint()"+complaintDetails.get(0).getComplaint());
		model.addAttribute("toPriority", complaintDetails.get(0).getId()+ complaintDetails.get(0).getComplaint());
	}
		model.addAttribute("message", "Complaint deleted Successfully.And Mail Send to Student");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "Home";
}
		
}
	