package com.myfms.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="admin")
public class MyAdmin {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 private int id;
	
	@Column(name="dateOfVisit")
	private String dateOfVisit;
	
	@Column(name="time")
	 private String time;
	
	@Column(name="location")
	private String location;
	
	@Column(name="division")
	private String division;
	
	@Column(name="name")
	private String name;
	
	@Column(name="address")
	private String address;
	
	@Column(name="mobile")
	private String mobile;
	
	@Column(name="landlineNumber")
	 private String landlineNumber;
	
	
	
	
	
	@Column(name="serviceInterested")
	private String serviceInterested;
	
	@Column(name="customerSignTaken")
	private String customerSignTaken;
	
	@Column(name="executiveName")
	private String executiveName;
	
	
	@Column(name="fieldReport")
	private String fieldReport;
	
	@Column(name="serviceDescription")
	private String serviceDescription;
	
	@Column(name="calender")
	private String calender;
	 
	@Column(name="longitude")
	private String longitude;
	
	@Column(name="latitude")
	private String latitude;

	@Column(name="firmName")
	private String firmName;
	
	@Column(name="firmRegno")
	private String firmRegno;
	
	@Column(name="workExp")
	private String workExp;
	
	@Column(name="callAttended")
	private String callattended;
	
	@Column(name="feedBack")
	private String feedback;
	
	@Transient
	private String  fromDateOfVisit;
	
	@Transient
	private String toDateOfVisit;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDateOfVisit() {
		return dateOfVisit;
	}

	public void setDateOfVisit(String dateOfVisit) {
		this.dateOfVisit = dateOfVisit;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getLandlineNumber() {
		return landlineNumber;
	}

	public void setLandlineNumber(String landlineNumber) {
		this.landlineNumber = landlineNumber;
	}

	public String getServiceInterested() {
		return serviceInterested;
	}

	public void setServiceInterested(String serviceInterested) {
		this.serviceInterested = serviceInterested;
	}

	public String getCustomerSignTaken() {
		return customerSignTaken;
	}

	public void setCustomerSignTaken(String customerSignTaken) {
		this.customerSignTaken = customerSignTaken;
	}

	public String getExecutiveName() {
		return executiveName;
	}

	public void setExecutiveName(String executiveName) {
		this.executiveName = executiveName;
	}

	public String getFieldReport() {
		return fieldReport;
	}

	public void setFieldReport(String fieldReport) {
		this.fieldReport = fieldReport;
	}

	public String getServiceDescription() {
		return serviceDescription;
	}

	public void setServiceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
	}

	public String getCalender() {
		return calender;
	}

	public void setCalender(String calender) {
		this.calender = calender;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getFirmName() {
		return firmName;
	}

	public void setFirmName(String firmName) {
		this.firmName = firmName;
	}

	public String getFirmRegno() {
		return firmRegno;
	}

	public void setFirmRegno(String firmRegno) {
		this.firmRegno = firmRegno;
	}

	public String getWorkExp() {
		return workExp;
	}

	public void setWorkExp(String workExp) {
		this.workExp = workExp;
	}

	
	public String getCallattended() {
		return callattended;
	}

	public void setCallattended(String callattended) {
		this.callattended = callattended;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
	
	

	public String getFromDateOfVisit() {
		return fromDateOfVisit;
	}

	public void setFromDateOfVisit(String fromDateOfVisit) {
		this.fromDateOfVisit = fromDateOfVisit;
	}

	public String getToDateOfVisit() {
		return toDateOfVisit;
	}

	public void setToDateOfVisit(String toDateOfVisit) {
		this.toDateOfVisit = toDateOfVisit;
	}

	@Override
	public String toString() {
		return "MyAdmin [id=" + id + ", dateOfVisit=" + dateOfVisit + ", time=" + time + ", location=" + location
				+ ", division=" + division + ", name=" + name + ", address=" + address + ", mobile=" + mobile
				+ ", landlineNumber=" + landlineNumber + ", serviceInterested=" + serviceInterested
				+ ", customerSignTaken=" + customerSignTaken + ", executiveName=" + executiveName + ", fieldReport="
				+ fieldReport + ", serviceDescription=" + serviceDescription + ", calender=" + calender + ", longitude="
				+ longitude + ", latitude=" + latitude + ", firmName=" + firmName + ", firmRegno=" + firmRegno
				+ ", workExp=" + workExp + ", callattended=" + callattended + ", feedback=" + feedback + "]";
	}

	

	
}
