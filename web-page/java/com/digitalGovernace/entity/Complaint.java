package com.digitalGovernace.entity;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name="complaint_details")
public class Complaint  implements Serializable{
	
	private static final long serialVersionUID =1L;

	    @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name = "ID")
	    private Long id;
	    @Column(name = "NAME")
	    private String name;
	    @Column(name = "EMAIL_ID")
	    private String email;
	    @Column(name = "COMPLAINT")
	    private String complaint;
	    @Column(name = "BRANCH_ID")
	    private Long branch;
	    @Column(name = "COLLEGE_ID")
	    private Long collegeId;
	    @Column(name = "IS_ACTIVE")
	    private int isActive;
	    @Column(name = "DATE_CREATED_ON", updatable = false)
	    private LocalDate dateCreated;
	    @Column(name="PRIORITY")
		  private String priority;
		  @Column(name="USER_TYPE_DB_KEY")
		  private int userTypeDbKey;
		  @Column(name="CONTACT_NUMBER")
		  private String contactNumber;
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
	
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getComplaint() {
			return complaint;
		}
		public void setComplaint(String complaint) {
			this.complaint = complaint;
		}
		public Long getBranch() {
			return branch;
		}
		public void setBranch(Long branch) {
			this.branch = branch;
		}
		public Long getCollegeId() {
			return collegeId;
		}
		public void setCollegeId(Long collegeId) {
			this.collegeId = collegeId;
		}
		public int getIsActive() {
			return isActive;
		}
		public void setIsActive(int isActive) {
			this.isActive = isActive;
		}
	
		public int getUserTypeDbKey() {
			return userTypeDbKey;
		}
		public void setUserTypeDbKey(int userTypeDbKey) {
			this.userTypeDbKey = userTypeDbKey;
		}
		public LocalDate getDateCreated() {
			return dateCreated;
		}
		public void setDateCreated(LocalDate dateCreated) {
			this.dateCreated = dateCreated;
		}
		public String getPriority() {
			return priority;
		}
		public void setPriority(String priority) {
			this.priority = priority;
		}
		public String getContactNumber() {
			return contactNumber;
		}
		public void setContactNumber(String contactNumber) {
			this.contactNumber = contactNumber;
		}
		 
	
}
