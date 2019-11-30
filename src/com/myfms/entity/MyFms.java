package com.myfms.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="fmssurvey")
public class MyFms {
	
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
	
	@Transient
	 private String fromDateOfVisit;
	
	@Transient
	 private String toDateOfVisit;
	
	
	
	
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

	/*
	private String fromdate;
	
	
	private String todate;
	*/
	
	public MyFms() {}

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
		return "MyFms [id=" + id + ", dateOfVisit=" + dateOfVisit + ", time=" + time + ", location=" + location
				+ ", division=" + division + ", name=" + name + ", address=" + address + ", mobile=" + mobile
				+ ", landlineNumber=" + landlineNumber + ", serviceInterested=" + serviceInterested
				+ ", customerSignTaken=" + customerSignTaken + ", executiveName=" + executiveName + ", fieldReport="
				+ fieldReport + ", serviceDescription=" + serviceDescription + ", calender=" + calender + ", longitude="
				+ longitude + ", latitude=" + latitude + "]";
	}

	public void setParameter(String string, String myownvisit) {
		// TODO Auto-generated method stub
		
	}

	/*public String getFromdate() {
		return fromdate;
	}

	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}

	public String getTodate() {
		return todate;
	}

	public void setTodate(String todate) {
		this.todate = todate;
	}*/

	
	
	

	
	


	

}
