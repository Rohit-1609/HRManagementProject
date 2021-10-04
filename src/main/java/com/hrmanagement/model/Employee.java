package com.hrmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Employee 
{
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
	    int id;
		@Column(length=40,name="email")
		String email;
		@Column(length=40,name="fullName")
		String fullName;
		@Column(length=20,name="password")
	    String password;
		@Column(length=20,name="role")
	    String role;
	    
	    @Column(length=20,name="employeeId")
	    String employeeId;
	    @Column(length=20,name="yearOfExperienceInOurOrg")
	    String yearOfExperienceInOurOrganisation;
	    @Column(length=20,name="position")
	    String position;
	    @Column(length=40,name="skills")
		String skills;
	    @Column(length=20,name="yearOfExperienceInPreviousOrg")
		String yearOfExperienceInPreviousOrganisation;
	    @Column(length=20,name="positionInPreviousOrg")
		String positionInPreviousOrganisation;
	    
	    
	    @Column(length=40,name="personalEmail")
	    String personalEmail;
	    @Column(length=20,name="mobile")
	    String mobile;
	    @Column(length=40, name="permanentAddress")
	    String permanentAddress;
	    @Column(length=20,name="permanentCity")
	    String permanentCity;
	    @Column(length=40, name="currentAddress")
	    String currentAddress;
	    @Column(length=20, name="currentCity")
		String currentCity;
	    @Column(length=20, name="state")
	    String state;
	    @Column(length=20,name="zipcode")
	    String zipCode;
	    @Column(length=20,name="country")
	    String country;
	    
	    
	    @Column(length=40,name="schoolName")
	    String schoolName;
	    @Column(length=20,name="tenthPercentage")
	    String tenthPercentage;
	    @Column(length=20,name="tenthPassout")
	    String tenthPassout;
	    @Column(length=40,name="collegeName")
	    String collegeName;
	    @Column(length=20,name="twelthPercentage")
	    String twelthPercentage;
	    @Column(length=20,name="twelthPassout")
	    String twelthPassout;
	    @Column(length=20,name="qualification")
	    String qualification;
	    @Column(length=20,name="degree")
	   String degree;
	    @Column(length=20,name="degrePassout")
	    String degreePassout;
	    @Column(length=20,name="degreePassout")
	    String degreePercentage;
	   
	    
	   public Employee()
	   {
		   
	   }


	public Employee(int id, String email, String fullName, String password, String role, String employeeId,
			String yearOfExperienceInOurOrganisation, String position, String skills,
			String yearOfExperienceInPreviousOrganisation, String positionInPreviousOrganisation, String personalEmail,
			String mobile, String permanentAddress, String permanentCity, String currentAddress, String currentCity,
			String state, String zipCode, String country, String schoolName, String tenthPercentage,
			String tenthPassout, String collegeName, String twelthPercentage, String twelthPassout,
			String qualification, String degree, String degreePassout, String degreePercentage) {
		super();
		this.id = id;
		this.email = email;
		this.fullName = fullName;
		this.password = password;
		this.role = role;
		this.employeeId = employeeId;
		this.yearOfExperienceInOurOrganisation = yearOfExperienceInOurOrganisation;
		this.position = position;
		this.skills = skills;
		this.yearOfExperienceInPreviousOrganisation = yearOfExperienceInPreviousOrganisation;
		this.positionInPreviousOrganisation = positionInPreviousOrganisation;
		this.personalEmail = personalEmail;
		this.mobile = mobile;
		this.permanentAddress = permanentAddress;
		this.permanentCity = permanentCity;
		this.currentAddress = currentAddress;
		this.currentCity = currentCity;
		this.state = state;
		this.zipCode = zipCode;
		this.country = country;
		this.schoolName = schoolName;
		this.tenthPercentage = tenthPercentage;
		this.tenthPassout = tenthPassout;
		this.collegeName = collegeName;
		this.twelthPercentage = twelthPercentage;
		this.twelthPassout = twelthPassout;
		this.qualification = qualification;
		this.degree = degree;
		this.degreePassout = degreePassout;
		this.degreePercentage = degreePercentage;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	public String getEmployeeId() {
		return employeeId;
	}


	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}


	public String getYearOfExperienceInOurOrganisation() {
		return yearOfExperienceInOurOrganisation;
	}


	public void setYearOfExperienceInOurOrganisation(String yearOfExperienceInOurOrganisation) {
		this.yearOfExperienceInOurOrganisation = yearOfExperienceInOurOrganisation;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public String getSkills() {
		return skills;
	}


	public void setSkills(String skills) {
		this.skills = skills;
	}


	public String getYearOfExperienceInPreviousOrganisation() {
		return yearOfExperienceInPreviousOrganisation;
	}


	public void setYearOfExperienceInPreviousOrganisation(String yearOfExperienceInPreviousOrganisation) {
		this.yearOfExperienceInPreviousOrganisation = yearOfExperienceInPreviousOrganisation;
	}


	public String getPositionInPreviousOrganisation() {
		return positionInPreviousOrganisation;
	}


	public void setPositionInPreviousOrganisation(String positionInPreviousOrganisation) {
		this.positionInPreviousOrganisation = positionInPreviousOrganisation;
	}


	public String getPersonalEmail() {
		return personalEmail;
	}


	public void setPersonalEmail(String personalEmail) {
		this.personalEmail = personalEmail;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getPermanentAddress() {
		return permanentAddress;
	}


	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}


	public String getPermanentCity() {
		return permanentCity;
	}


	public void setPermanentCity(String permanentCity) {
		this.permanentCity = permanentCity;
	}


	public String getCurrentAddress() {
		return currentAddress;
	}


	public void setCurrentAddress(String currentAddress) {
		this.currentAddress = currentAddress;
	}


	public String getCurrentCity() {
		return currentCity;
	}


	public void setCurrentCity(String currentCity) {
		this.currentCity = currentCity;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getZipCode() {
		return zipCode;
	}


	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getSchoolName() {
		return schoolName;
	}


	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}


	public String getTenthPercentage() {
		return tenthPercentage;
	}


	public void setTenthPercentage(String tenthPercentage) {
		this.tenthPercentage = tenthPercentage;
	}


	public String getTenthPassout() {
		return tenthPassout;
	}


	public void setTenthPassout(String tenthPassout) {
		this.tenthPassout = tenthPassout;
	}


	public String getCollegeName() {
		return collegeName;
	}


	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}


	public String getTwelthPercentage() {
		return twelthPercentage;
	}


	public void setTwelthPercentage(String twelthPercentage) {
		this.twelthPercentage = twelthPercentage;
	}


	public String getTwelthPassout() {
		return twelthPassout;
	}


	public void setTwelthPassout(String twelthPassout) {
		this.twelthPassout = twelthPassout;
	}


	public String getQualification() {
		return qualification;
	}


	public void setQualification(String qualification) {
		this.qualification = qualification;
	}


	public String getDegree() {
		return degree;
	}


	public void setDegree(String degree) {
		this.degree = degree;
	}


	public String getDegreePassout() {
		return degreePassout;
	}


	public void setDegreePassout(String degreePassout) {
		this.degreePassout = degreePassout;
	}


	public String getDegreePercentage() {
		return degreePercentage;
	}


	public void setDegreePercentage(String degreePercentage) {
		this.degreePercentage = degreePercentage;
	}


	
	   
}
