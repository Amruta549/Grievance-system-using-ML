package com.digitalGovernace.entity;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="digital_Governace_lt_user_types")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserTypes implements Serializable{
    private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "USER_TYPE_DB_KEY")
	private int userTypeDbId;
	@Column(name = "USER_TYPE_NAME")
	private String userTypeName;
	

	@Column(name = "IS_ACTIVE")
	private int isActive;
	@Column(name = "CREATED_DATETIME")
	@Temporal(TemporalType.DATE)
	private	Date dateTime;
	public int getUserTypeDbId() {
		return userTypeDbId;
	}
	public void setUserTypeDbId(int userTypeDbId) {
		this.userTypeDbId = userTypeDbId;
	}
	public String getUserTypeName() {
		return userTypeName;
	}
	public void setUserTypeName(String userTypeName) {
		this.userTypeName = userTypeName;
	}
	
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	public Date getDateTime() {
		return dateTime;
	}
	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}


}
