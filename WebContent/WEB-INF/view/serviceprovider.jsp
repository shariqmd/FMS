
<!-- copy from homejsp css -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Service Provider</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
 <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
* {
	margin: 0px;
	padding: 0px;
}

#basic {
	width: 100%;
	height: 30px;
	background-color: #00ABEA;
	margin: 0px;
	padding: 0px;
	font-size: 18px;
	letter-spacing: 1px;
	font-weight: bold;
	text-align: center;
	color: white;
}

#basic-info {
	width: 100%;
	height: 35px;
	background-color: #00ABEA;
	margin: 0px;
	padding: 0px;
	font-size: 18px;
	letter-spacing: 1px;
	font-weight: bold;
	text-align: center;
	color: white;
}

#PropertyDetails {
	width: 100%;
	height: 30px;
	background-color: #00ABEA;
	margin: 0px;
	padding: 0px;
	font-size: 18px;
	letter-spacing: 1px;
	font-weight: bold;
	text-align: center;
	color: white;
}

#possession {
	width: 100%;
	height: 30px;
	background-color: #00ABEA;
	margin: 0px;
	padding: 0px;
	font-size: 18px;
	letter-spacing: 1px;
	font-weight: bold;
	text-align: center;
	color: white;
}

#aboutProperty {
	width: 100%;
	height: 30px;
	background-color: #00ABEA;
	margin: 0px;
	padding: 0px;
	font-size: 18px;
	letter-spacing: 1px;
	font-weight: bold;
	text-align: center;
	color: white;
}

#propertyDescription {
	width: 100%;
	height: 30px;
	background-color: #00ABEA;
	margin: 0px;
	padding: 0px;
	font-size: 18px;
	letter-spacing: 1px;
	font-weight: bold;
	text-align: center;
	color: white;
}

.rowHeightButton {
	height: 50px;
	/* background-color:yellow; */
}

* {
	box-sizing: border-box;
}

input[type=text] {
	width: 100%;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
	font-size: 14px;
}

label {
	padding: 5px 5px 5px 0;
	display: inline-block;
	margin-left: 10px;
	font-size: 13px;
	font-weight: bold;
	text-align: right;
	/*  background-color: red; */
}

input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 3px;
}

#col-15 {
	float: left;
	width: 8%;
	margin-top: 6px;
	/*  background-color: yellow; */
	text-align: right;
}

.butheight {
	/*  background-color:blue; */
	height: 40px;
	padding-top: 20px;
}

#propertyDescription {
	width: 100%;
	height: 30px;
	background-color: #00ABEA;
	margin: 0px;
	padding: 0px;
	font-size: 18px;
	letter-spacing: 1px;
	font-weight: bold;
	text-align: center;
	color: white;
}

#col-30 {
	float: left;
	width: 200px;
	margin-top: 6px;
	text-align: left;
}

.field {
	width: 200px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 14px;
	height: 32px;
}
/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}

.rw {
	padding: 20px;
}

.imag {
	max-width: 180px;
}

.blue {
	background-color: blue;
	height: 5vh;
	weight: 100%;
	text-align: center;
}

.grey {
	background-color: blue;
	height: 5vh;
	weight: 40%;
	margin-left: 50px;
}

.re {
	padding: 20px;
}

.green {
	background-color: blue;
	height: 5vh;
	margin-left: 50px;
}

.we {
	padding: 20px;
}

.blur {
	background-color: blue;
	height: 5vh;
	margin-left: 60px;
}

.th {
	padding: 20px;
}

input[type=file] {
	padding: 0px;
	background: #2d2d2d;
}

.rowHeight {
	height: 25px;
	background-color: #000;
}

.fbtn1 {
	float: right;
	margin-right: 10px;
	font-size: 14px;
	font-weight: bold;
	line-height: -30px;
}

.active, .btn:hover {
	background-color: green;
	color: white;
}

.hero {
	background: #6abaf1;
	height: 20vh;
}

.mera {
	text-align: center;
	padding-top: 60px;
	text-style: bold;
}

.footer {
	background-color: black;
	width: 100%;
}

* {
	box-sizing: border-box;
}
.con{
background-color: #F1F3F4;
}
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.header {
	overflow: hidden;
	background-color: #00B7E3;
	padding: 20px 10px;
	width:1850px;
	height:110px;
}

.header a {
	float: left;
	color: #fff;
	text-align: center;
	padding: 12px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
}

.header a.logo {
	font-size: 25px;
	font-weight: bold;
}

.header a:hover {
	/* background-color: #ddd;
	color: black; */
}

.header a.active {
	background-color: dodgerblue;
	color: white;
}

.header-right {
	float: right;
}

@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	.header-right {
		float: none;
	}
}

/* new style added */

/* Style the container */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

/* Floating column for labels: 25% width */
#col-25 {

  float: left;
  width: 25%;
  margin-top: 6px;
}

/* Floating column for inputs: 75% width */
#col-75 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  #col-25, #col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

@media screen and (min-width: 300px) {
  #col-25, #col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resources/rk_images/favicon.ico" />" />
</head>

<!-- copy from homejsp css -->

	 
	 <body>
	  
		 <div class="header">
 <!--  <a href="#default" class="logo">CompanyLogo</a> -->
  <div style="padding-bottom:45px;">
		<img src="${pageContext.request.contextPath}/resources/images/infra.png" style="width:100px;"/>
		</div>
  <div style="padding-right:340px;">
  <div class="header-right">
   <!--  <a class="" href="http://rakshaninfra.com/fms/aboutUs" style="margin-top:-100px;  padding-left:0px;">Home</a>
    <a href="mysearch">Search</a>
     <a href="admin" style="margin-top:-100px; padding-left:100px;">Admin </a> -->
     
     <div><a href="http://rakshaninfra.com/" style="margin-top:-100px; padding-left:300px;">Home</a>	</div>
			<div> <a href="admin" style="margin-top:-100px; padding-left:190px;">Admin</a> </div>
    
    </div>
  </div>
</div>
		<div class="container-fluid con" style="width:1850px;">

		<div class="container-fluid content" style="margin-top: 0px; padding-right:360px;">


			<div class="row r2">
				<!-- r2 open -->

				<div class="col-12 c2" style="margin: 0px;; padding: 2px" id="start">
					<!-- c2 open-->

					<form:form action="processSurvey1" modelAttribute="Fms1" name="myform"
						onsubmit="return MyFunction()">


						<div class="container-fluid" style="height: 55px;">

							<div class="row" style="padding-top: 10px; margin-left: 10px;">
								<!--basic-info row1 open-->



							</div>
						</div>

						
						
 
 <div class="container">
  
    <div class="row">
      <div class="col-1" id="col-25">
        <label for="dateOfVisit">Date of visit</label>
      </div>
      <div class="col-2" id="col-75">
      
       
       <form:input type="date" path="dateOfVisit" placeholder="Date oF Visit" />
      </div>
    
    
     
      <div class="col-1" id="col-25">
        <label for="calender">Calender</label>
      </div>
      <div class="col-2" id="col-75">
     
      
      <form:input type="date" path="calender" placeholder="Calender" />
      </div>
    
    
     
      <div class="col-1" id="col-25">
        <label for="time">Time</label>
      </div>
      <div class="col-2" id="col-75">
      
       
       <form:input type="time" path="time" name="time" placeholder="time" />
      </div>
    
   
 
      <div class="col-1" id="col-25">
        <label for="location">Location</label>
      </div>
      <div class="col-2" id="col-75">
       
        
        <form:input path="location" name="location" placeholder="Location" />
      </div>
    
   </div>
   
    </div>
    

<div class="container">
  
    <div class="row">
      <div class="col-1" id="col-25">
        <label for="name">Name</label>
      </div>
      <div class="col-2" id="col-75">
      <!--   <input type="text" name="name" id="name" placeholder="Name"> -->
      
      <form:input path="name" name="name" id="myname" placeholder="Name"/>
        <span id="qname"></span>
      </div>
    
    
     
     <div class="col-1" id="col-25">
								<label for="division">Division:</label>
							</div>
							<div class="col-2" id="col-75">

								<form:select path="division" class="field" style="width:170px;">
									<form:option value="Select division" label="Select division" />
									<form:option value="N" label="N"></form:option>
									<form:option value="S" label="S"></form:option>
									<form:option value="E" label="E"></form:option>
									<form:option value="W" label="W"></form:option>
								</form:select>
							</div>
    
    
     
      <div class="col-1" id="col-25">
        <label for="fname">Mobile</label>
      </div>
      <div class="col-2" id="col-75">
        <!-- <input type="text" name="mobile"  id="mobile" placeholder="Mobile"> -->
        <form:input path="mobile" name="mobile" id="mymobile"
									placeholder="Mobile" />
        	<span id="qmobile"></span>
      </div>
    
   
 
      <div class="col-1" id="col-25">
        <label for="fname">Landline Number</label>
      </div>
      <div class="col-2" id="col-75">
       <!--  <input type="text" name="landlinenumber" id="landline" placeholder="Landline Number"> -->
       
       <form:input path="landlineNumber" name="landlinenumber"
									id="mylandline" placeholder="LandlineNumber"/>
        	<span id="qlandline"></span>
        
      </div>
    
   </div>
   
    </div>

					
							
							<div class="container">
  
    <div class="row">
      <div class="col-1" id="col-25">
        <label>Service Interested</label>
      </div>
      <div class="col-2" id="col-75">
        
        
        <form:select path="serviceInterested" class="field" style="width:170px;">
        <form:option value="Select Service" label="Select Service" />
									<form:option value="CCTV" label="CCTV"></form:option>
									<form:option value="Solar" label="Solar"></form:option>
									<form:option value="Flow meter" label="Flow meter"></form:option>
									<form:option value="Electrician Service"
										label="Electrician Service">
									</form:option>
									<form:option value="Plumbing Service" label="Plumbing Service"></form:option>
									<form:option value="Carpenter Service"
										label="Carpenter Service"></form:option>
									<form:option value="Garden/Lawn/Landscape Maintenance"
										label="Garden/Lawn/Landscape Maintenance"></form:option>
									<form:option value="Event Management" label="Event Management"></form:option>
									<form:option value="Catering Service" label="Catering Service"></form:option>
									<form:option value="Buildiing Management"
										label="Building Management"></form:option>
        </form:select>
      </div>
    
    
     
     <div class="col-1" id="col-25">
								<label for="Customer Sign Taken">Customer Sign Taken</label>
							</div>
							<div class="col-2" id="col-75">

							 <form:select path="customerSignTaken" class="field" style="width:170px;">
									<form:option value="Yes" label="Yes"></form:option>
									<form:option value="No" label="No"></form:option>
							
								</form:select>
							
							</div>
    
    
     
      <div class="col-1" id="col-25">
        <label for="longitude">Longitude</label>
      </div>
      <div class="col-2" id="col-75">
 <!--        <input type="text" name="longitude" placeholder="longitude"> -->
 
 <form:input path="longitude" name="longitude"
											placeholder="Longitude"/>
      </div>
    
   
 
      <div class="col-1" id="col-25">
        <label for="latitude">Latitude</label>
      </div>
      <div class="col-2" id="col-75">
      
       
       <form:input path="latitude" name="latitude"
											placeholder="Latitude" />
      </div>
    
   </div>
   
    </div>
    
    
    <div class="container">
    
    
        <div class="row">
        
        
          <div class="col-1" id="col-25">
        <label  class="" for="firmname">Firm Name:</label>
      </div>
      <div class="col-2" id="col-75">
          <form:textarea path="firmName" rows="2" cols="20"></form:textarea>
         
     </div> 
     
     <div class="col-1" id="col-25">
      <label for="firmregno">FirmRegNo:</label>
     </div>
     <div class="col-2" id="col-75">
           <form:textarea path="firmRegno" rows="2" cols="20"></form:textarea>
         
     </div>
     
   
     
     
     
       <div class="col-1" id="col-25">
								<label for="executivename">Executive Name</label>
							</div>
							<div class="col-2" id="col-75">

							 <form:select path="executiveName" class="field" style="width:170px;">
									<form:option value="Chetan" label="Chetan"></form:option>
									<form:option value="Ram" label="Ram"></form:option>
							
								</form:select>
							
							</div>
							
							  <div class="col-1" id="col-25">
     <label for="workexperience">Work Experience:</label>
     </div>
     <div class="col-2" id="col-75">
     <form:textarea path="workExp" rows="2" cols="20"></form:textarea>
     </div> 
							
							
     </div>
     </div>
     
    
    
     
     
   
    
    
    <!-- here div like </div> -->
							
						

						
						
						
						<div class="container">
						
						<div class="row">
						
						 <div class="col-1" id="col-25">
        <label for="fname">Service Description</label>
      </div>
      <div class="col-2" id="col-75">
      
      <form:textarea path="serviceDescription" rows="2" cols="20"></form:textarea>

              </div>
    
    
     
    
    
    
     
      <div class="col-1" id="col-25">
        <label for="fname">Field Report</label>
      </div>
      <div class="col-2" id="col-75">
      
        <form:textarea path="fieldReport" rows="2" cols="20"
></form:textarea>
</div>
     
    
   
  
   
  
   
							
								 <div class="col-1" id="col-25">
        <label for="address">Address</label>
      </div>
      <div class="col-2" id="col-75">
      
      <form:textarea path="address" id="myaddress" rows="2" cols="56"></form:textarea>
      <span id="qaddress"></span>

              </div>
							
							
    
   
 
     
						
						</div>
						
						</div>
						
						
						<div class="container-fluid" style="height: 100px;">


							<div class="row rowHeightButton justify-content-center">

								<input type="submit"
									style="width: 85px; height: 45px; padding-left: 15px; margin: auto; margin-bottom: 40px; margin-right:400px;"
									value="Submit">
									
							<div>	 <a href="mysearch" type="button" style="padding-right:20px; width:85px; padding-top:10px; padding-left:13px; height:45px; margin-right:160px;background-color:lime-green;" class="">Search</a></div>
	
							</div>
							
								<div style="padding-left:620px; color:blue; padding-bottom:;">${message}</div>
								


						</div>


					</form:form>


				</div><!-- c2 -->
				<!-- outer container -->

			</div><!-- row r2 -->

		</div><!--  container-fluid content -->
		
		<div style="width: auto; height: auto;  color: green;  text-align: left">

			<table class="table" style="width: 1000px; font-size: 12px">
     <thead class="thead-dark">
				<tr>
				    <th>Id&nbsp;&nbsp;</th>
					<th>DateOfVisit&nbsp;&nbsp;</th>
					<th>Time&nbsp;&nbsp;</th>
					<th>Location&nbsp;&nbsp;</th>
					<th>Division&nbsp;&nbsp;</th>
					<th>Name&nbsp;&nbsp;&nbsp;</th>
					<th>Address&nbsp;&nbsp;</th>
					<th>Mobile&nbsp;&nbsp;</th>
					<th>LandlineNumber&nbsp;&nbsp;</th>
					<th>Firmname&nbsp;&nbsp;</th>
		            <th>FirmRegno&nbsp;&nbsp;</th>
		             <th>Workexp&nbsp;&nbsp;</th>
					<th>ServiceInterested&nbsp;&nbsp;</th>
					<th>CustomerSignTaken&nbsp;&nbsp;</th>
					<th>ExecutiveName&nbsp;&nbsp;</th>
					<th>FieldReport&nbsp;&nbsp;</th>
					<th>ServiceDescription&nbsp;&nbsp;</th>
					<th>Calender&nbsp;&nbsp;</th>
					<th>Longitude&nbsp;&nbsp;</th>
					<th>Latitude&nbsp;&nbsp;</th>
				</tr>

</thead>



				<c:forEach var="buyer" items="${store50}">
					<tr>
					    <td>${buyer.id}</td>
						<td>${buyer.dateOfVisit}</td>
						<td>${buyer.time}</td>
						<td>${buyer.location}</td>
						<td>${buyer.division}</td>
						<td>${buyer.name}</td>
						<td>${buyer.address}</td>
						<td>${buyer.mobile}</td>
						<td>${buyer.landlineNumber}</td>
						<td>${buyer.firmName}</td>
		                <td>${buyer.firmRegno}</td>
		                <td>${buyer.workExp}</td>
						<td>${buyer.serviceInterested}</td>
						<td>${buyer.customerSignTaken}</td>
						<td>${buyer.executiveName}</td>
						<td>${buyer.fieldReport}</td>
						<td>${buyer.serviceDescription}</td>
						<td>${buyer.calender}</td>
						<td>${buyer.longitude}</td>
						<td>${buyer.latitude}</td>
					</tr>

				</c:forEach>




				<!-- 	 from to date started -->




				<c:forEach var="rental" items="${store48}">
					<tr>
						<td>${rental.dateOfVisit}&nbsp;&nbsp;</td>
						<td>${rental.time}&nbsp;&nbsp;</td>
						<td>${rental.location}&nbsp;&nbsp;</td>
						<td>${rental.division}&nbsp;&nbsp;</td>
						<td>${rental.name}&nbsp;&nbsp;</td>
						<td>${rental.address}&nbsp;&nbsp;</td>
						<td>${rental.mobile}&nbsp;&nbsp;</td>
						<td>${rental.landlineNumber}&nbsp;&nbsp;</td>
						<td>${rental.firmName}&nbsp;&nbsp;</td>
		                <td>${rental.firmRegno}&nbsp;&nbsp;</td>
		                <td>${rental.workExp}&nbsp;&nbsp;</td>
						<td>${rental.serviceInterested}&nbsp;&nbsp;</td>
						<td>${rental.customerSignTaken}&nbsp;&nbsp;</td>
						<td>${rental.executiveName}&nbsp;&nbsp;</td>
						<td>${rental.fieldReport}&nbsp;&nbsp;</td>
						<td>${rental.serviceDescription}&nbsp;&nbsp;</td>
						<td>${rental.calender}&nbsp;&nbsp;</td>
						<td>${rental.longitude}&nbsp;&nbsp;</td>
						<td>${rental.latitude}&nbsp;&nbsp;</td>
					</tr>

				</c:forEach>

			</table>
		</div>

		<form:form action="myownsearches" modelAttribute="Fms1">


			<div class="row">

				<div class="col-2">
					<label>From Date </label>
				</div>
				<div class="col-4">
					<form:input path="fromDateOfVisit" type="date"
						placeholder="From Date " style="width:170px;" />

				</div>


				<div class="col-2">
					<label>To Date</label>
				</div>
				<div class="col-4">
					<form:input path="toDateOfVisit" type="date" placeholder="To Date"
						style="width:170px;" />
					<input type="submit" value="MySearch" style="width:140px; margin-right:275px; padding-right:50px; margin-top:-10px;">
				</div>
			</div>
			
		</form:form>
		
	</div><!-- container-fluid con -->
	
	
	<footer class="footer"> </footer>
		
		
<script type="text/javascript">

function MyFunction(){
	
    var a=document.getElementById('myname').value;
      if(a==null||a==""){
	
	document.getElementById('qname').innerHTML="**Please Enter name";
	return false;
}

    var b= document.getElementById('mymobile').value;
      if(b==null||b==""){
	
	document.getElementById('qmobile').innerHTML="**Please Enter Mobile number";
	return false;
}

      else if(isNaN(b)){
	
	document.getElementById('qmobile').innerHTML="** Please Enter Number Only";
	return false;
}
      
     

    var c=document.getElementById('myaddress').value;
      if(c==null||c==""){
	
	document.getElementById('qaddress').innerHTML="**Please Enter address";
	return false;
}

    var d=document.getElementById('mylandline').value;
      if(d==null||d==""){
    	
    	document.getElementById('qlandline').innerHTML="**Please Enter Landline number";
    	return false;
    }
      
      else if(isNaN(d)){
    	  
    	  document.getElementById('qlandline').innerHTML="**Please Enter Number Only";
    	  return false;
      }
 
	
}

</script>

</body>
</html>