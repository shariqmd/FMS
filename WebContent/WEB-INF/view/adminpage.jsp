
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin Page</title>



	
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->

	
	
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<style>
.navbar-default{

background-color: #00B7E3! important;
    height: 85px! important;
    color: black! important;
    padding-top: 16px! important;

}

.mm{
background-color: MediumSeaGreen;
margin-top:0px;

}



</style>
	

<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resources/rk_images/favicon.ico" />" />
	
	
	
	
		<script>

function doFunction(){
	
	
	var s=''

	$.ajax({
        type: "GET",
        url: "hold",
        success: function(response){
        	
        	$('#personDataTableCotainer').css("display","block");
        	
        	$('#searchTable').css("display","none");
        	
        	$('#DateTable').css("display","none");
        	
        	$('#adminform').css("display","none");
        
           	$('#serviceProvidermainCotainer').css("display","none");
           	$('#adminform').css("display","none");
           	
           	
           	
        	json= JSON.parse(response);
        	
        	
        	
         	for (var i=0; i<json.length; i++) {
        		
   console.log("JSON Data: " + json[i].id);
   s+='Date of visit'+json[i].dateOfVisit+'Time'+json[i].time+'Location'+json[i].location+'Division'+json[i].division+'Name'+json[i].name+'Address'+
   json[i].address+'Mobile'+json[i].mobile+'LandlineNumber'+json[i].landlineNumber+'ServiceInterested'+json[i].serviceInterested+'CustomerSignTaken'+
   json[i].customerSignTaken+'ExecutiveName'+json[i].executiveName+'FieldReport'+json[i].fieldReport+'ServiceDescription'+json[i].serviceDescription+
   'Calender'+json[i].calender+'Longitude'+json[i].longitude+'latitude'+json[i].latitude
   
       
} 
          	drawTable(json);
	console.log("house hold---"+json)



        //	document.getElementById('result1').innerHTML=s;// Here, Result is Storing in div
        }
        });
	
	function drawTable(data) {
	    for (var i = 0; i < data.length; i++) {
	        drawRow(data[i]);		
	    }
	}

	function drawRow(rowData) {
		
	
	    var row = $("<tr />")
	    
					
	    $("#personDataTable").append(row);  //this will append tr element to table... keep its reference for a while since we will add cels into it
	    row.append($("<td>" + rowData.dateOfVisit + "</td>"));
	    row.append($("<td>" + rowData.time + "</td>"));

	    row.append($("<td>" + rowData.location + "</td>"));
	    row.append($("<td>" + rowData.name + "</td>"));
	    row.append($("<td>" + rowData.address + "</td>"));
	    row.append($("<td>" + rowData.mobile + "</td>"));
	    row.append($("<td>" + rowData.landlineNumber + "</td>"));
	    row.append($("<td>" + rowData.serviceInterested + "</td>"));
	    row.append($("<td>" + rowData.customerSignTaken + "</td>"));
	    row.append($("<td>" + rowData.executiveName + "</td>"));
	    row.append($("<td>" + rowData.fieldReport + "</td>"));
	    row.append($("<td>" + rowData.serviceDescription + "</td>"));
	    row.append($("<td>" + rowData.calender + "</td>"));
	    row.append($("<td>" + rowData.longitude + "</td>"));
	    row.append($("<td>" + rowData.latitude + "</td>"));
	    row.append($("<td>" + rowData.division + "</td>"));
	    
	   
	} 
	  
}


function myFunction(){
	
	
	
	
		var s=''
	$.ajax({
	    type : "GET",
	    url : "provider",
	    
	   
	    success: function(response){
            $('#personDataTableCotainer').css("display","none");
            
            $('#adminform').css("display","none");
            
            $('#DateTable').css("display","none");
        	
         	$('#searchTable').css("display","none");
         	
        	$('#serviceProvidermainCotainer').css("display","block");
        	
	    json=JSON.parse(response);
	    console.log(json)
	    for (var i=0; i<json.length; i++) {
	    	   console.log("JSON Data: " + json[i].id);
	    	   s+='Date of visit'+json[i].dateOfVisit+'Time'+json[i].time+'Location'+json[i].location+'Division'+json[i].division+'Name'+json[i].name+'Address'+
	    	   json[i].address+'Mobile'+json[i].mobile+'LandlineNumber'+json[i].landlineNumber+'Firmname'+json[i].firmName+'FirmRegno'+json[i].firmRegno+'Workexp'+json[i].workExp+'ServiceInterested'+json[i].serviceInterested+'CustomerSignTaken'+
	    	   json[i].customerSignTaken+'ExecutiveName'+json[i].executiveName+'FieldReport'+json[i].fieldReport+'ServiceDescription'+json[i].serviceDescription+
	    	   'Calender'+json[i].calender+'Longitude'+json[i].longitude+'latitude'+json[i].latitude
	    	   
	    	       
	    	}
	    	        	/* document.getElementById('result2').innerHTML=s;// Here, Result is Storing in div */
	    drawTable(json);      
	    
	    }
	});
		
		function drawTable(data) {
		    for (var i = 0; i < data.length; i++) {
		        drawRow(data[i]);
		    }
		}

		function drawRow(rowData) {
		    var row = $("<tr />")
		    $("#serviceProvider").append(row); //this will append tr element to table... keep its reference for a while since we will add cels into it
		    row.append($("<td>" + rowData.dateOfVisit + "</td>"));
		    row.append($("<td>" + rowData.time + "</td>"));

		    row.append($("<td>" + rowData.location + "</td>"));
		    row.append($("<td>" + rowData.name + "</td>"));
		    row.append($("<td>" + rowData.address + "</td>"));
		    row.append($("<td>" + rowData.mobile + "</td>"));
		    row.append($("<td>" + rowData.landlineNumber + "</td>"));
		    row.append($("<td>" + rowData.firmName + "</td>"));
		    row.append($("<td>" + rowData.firmRegno + "</td>"));
		    row.append($("<td>" + rowData.workExp + "</td>"));
		    row.append($("<td>" + rowData.serviceInterested + "</td>"));
		    row.append($("<td>" + rowData.customerSignTaken + "</td>"));
		    row.append($("<td>" + rowData.executiveName + "</td>"));
		    row.append($("<td>" + rowData.fieldReport + "</td>"));
		    row.append($("<td>" + rowData.serviceDescription + "</td>"));
		    row.append($("<td>" + rowData.calender + "</td>"));
		    row.append($("<td>" + rowData.longitude + "</td>"));
		    row.append($("<td>" + rowData.latitude + "</td>"));
		    row.append($("<td>" + rowData.division + "</td>"));
		  
		} 
		  
	}



</script>



<style>

#personDataTable td, th {

padding-left: 10px;
}

#serviceProvider td, th {

    padding-left: 10px;
}





*{

padding: 0;
margin: 0;
}
.active
{
background-color: red ! important;


}
</style>
	
	<script>
	
	$(document).ready(function(){
		
		
	$("#serviceid").click(function(){

		$("#serviceid").addClass("active");
		$("#householdid").removeClass("active");
		$("#admin").removeClass("active");
	});
	$("#householdid").click(function(){
		
		$("#householdid").addClass("active");
		$("#serviceid").removeClass("active");
		$("#admin").removeClass("active");
	
	
	});
	
	$("#admin").click(function(){
		
		$("#admin").addClass("active");
		$("#serviceid").removeClass("active");
		$("#householdid").removeClass("active");
		
	});
	
	});
	
	
	
	</script>
	
	
</head>

 <style>


 .con{
 background-color:#F1F3F4;
 margin-top:-20px;

} 

.con5{
background-color: #F1F3F4;
}

@media only screen and (max-width: 600px) {
 
  #adminform{
  margin-top: 200px;
 
  
 
  }

 
 
.navbar-default .navbar-collapse, .navbar-default .navbar-form {
    border-color: #e7e7e7;
    display: grid;
}
.navbar-default .navbar-nav>li>a {

margin-top: 5px;


}




#btnSearchSubmit{

display: flex;
}

#personDataTableCotainer{

margin-top: 160px;
}

#serviceProvidermainCotainer{

margin-top: 160px;
}

}


</style>

<body>

<!-- navbar starting -->


	<nav class="navbar navbar-default">
	
	
	
	<div class="navbar-header"> 
	 
	  
	  <img src="${pageContext.request.contextPath}/resources/images/infra.png" style="width:100px;">
	 <!--     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarNav">    
            <span class="icon-bar"></span>    
            <span class="icon-bar"></span>    
            <span class="icon-bar"></span>    
        </button> -->
	   
	</div>

 
 
  
  <div class="collapse navbar-collapse" id="navbarNav"> 
 
    <ul class="nav navbar-nav pull-right"  >
    
     <li style="margin-right: 5px">
        <a href="/MyFmsProject/admin" class="active btn btn-primary" style=" color:white;background-color:#f57b42; font-weight: bold;" id="admin">Admin</a> 
      </li>
    
      <li >
        <a href="javascript:void(0)" onclick="doFunction();" style=" color:white; background-color:#f57b42; font-weight: bold;" id="householdid" class=" btn btn-primary">House Hold</a> 
      </li>
      <li style="margin-left: 5px">
        <a  href="javascript:void(0)" onclick="myFunction();" style=" color:white;background-color:#f57b42; font-weight: bold;" id="serviceid" class="btn btn-primary">Service Provider</a>
      </li>
      
    
    </ul>
  </div> 
  
  
 
</nav> 



<!-- navbar starting end  -->

<!--  seraching form-->

<%-- <c:if test="${adminPage == true }"> --%>

<div  id="adminform">
<div class="container-fluid con">

<div class="row">
	<c:if test="${not empty msg }">
	

  <%-- <h3 class="text-center">${msg}</h3> --%>

	
	</c:if>

	<div style="margin-top:20px;" class="panel panel-default col-md-6 col-md-offset-3">
			<div style="background-color:rgb(60, 169, 86);" class="panel-heading">
				<h3 style="text-align:center; color:white;"><b>Admin Form</b>  </h3>
			</div>
			
			<div class="panel-body">
			
		
				
					      <form:form  class="form-horizontal" action="modify" modelAttribute="store90" style="margin-left:160px">
				<div class=" form-group row">
					<label class="col-md-1 control-label;"></label>
					
					<div class="col-md-6">
						<form:input type="text" path="id" class="form-control" />
					</div>
					
					<div class="col-md-5">
					</div>
				</div>
				
				
					<div class="form-group row">
					<label class="col-md-3 control-label"></label> 
					
					<div class="col-md-9">
						
				   <input type="submit" class="btn btn-primary " value="Modify" >
					</div>
				
				</div>
				

			



			</form:form>
				
				
			
			
			</div>	
	

		
	
	
	
	</div>
			
			
		
			
	</div>


	

	
 

</div>


<!--  seraching form end -->



<div style="padding-top:30px;" class="container-fluid con5">





					<form:form class="form-horizontal" action="processadmin" modelAttribute="store90" name="myform" onsubmit="return MyOwnFunction()">
						<form:hidden path="id" />



<h3 style="padding-bottom:45px;" class="text-center">${msg}</h3> 





			<div class="row">


				<label for="dateOfVisit" class="control-label col-md-1">Date
					of visit</label>

				<div class="form-group col-md-2">
					<form:input type="date" path="dateOfVisit"
						placeholder="Date oF Visit" class="form-control" />

				</div>







				<label for="calender" class="control-label col-md-1">Calender</label>


				<div class="form-group col-md-2">

					<form:input type="date" path="calender" placeholder="Calender"
						class="form-control" />


				</div>


				<label for="time" class="control-label col-md-1">Time</label>

				<div class="form-group col-md-2">

					<form:input type="time" path="time" name="time" placeholder="time"
						class="form-control" />
				</div>



				<label for="location" class="control-label col-md-1">Location</label>


				<div class="form-group col-md-2">

					<form:input path="location" name="location" placeholder="Location"
						class="form-control" />


				</div>


			</div>



<br>
<br>



			<div class="row">



				<label for="name" class="control-label col-md-1">Name</label>


				<div class="form-group col-md-2">

					<form:input path="name" name="name" id="ownname" placeholder="Name"
						class="form-control" />
                 <span id="rname" style="color:red"></span>

				</div>

				<label for="division" class="control-label col-md-1">Division:</label>


				<div class="form-group col-md-2">
					<form:select path="division" class="form-control">
						<form:option value="Select division" label="Select division" />
						<form:option value="N" label="N"></form:option>
						<form:option value="S" label="S"></form:option>
						<form:option value="E" label="E"></form:option>
						<form:option value="W" label="W"></form:option>
					</form:select>

				</div>



				<label for="fname" class="control-label col-md-1">Mobile</label>


				<div class="form-group col-md-2">
					<form:input path="mobile" name="mobile" id="ownmobile"
						placeholder="Mobile" class="form-control" />
                   <span id="rmobile" style="color:red"></span>

				</div>

				<label for="fname" class="control-label col-md-1">Landline
					Number</label>

				<div class="form-group col-md-2">
					<form:input path="landlineNumber" name="landlinenumber"
						id="ownlandline" placeholder="LandlineNumber" class="form-control" />
                  
                  	<span id="rlandline" style="color:red"></span>
				</div>





			</div>
			
			<br>
			<br>
			
		<%-- 	<!-- sample -->
			
			<label for="name" class="control-label col-md-1">Name</label>


				<div class="form-group col-md-2">

					<form:input path="name" name="name" id="ownname" placeholder="Name"
						class="form-control" />


				</div>
			
			<label for="division" class="control-label col-md-1">Division:</label>


				<div class="form-group col-md-2">
					<form:select path="division" class="form-control"
						style="width:170px;">
						<form:option value="Select division" label="Select division" />
						<form:option value="N" label="N"></form:option>
						<form:option value="S" label="S"></form:option>
						<form:option value="E" label="E"></form:option>
						<form:option value="W" label="W"></form:option>
					</form:select>

				</div>
			



<!-- Sample -->

 --%>


			

							<div class="row">
							
									<label class="control-label col-md-1">Service Interested</label>
								
					

                              <div class="form-group col-md-2">
									<form:select path="serviceInterested" class="form-control">

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



								
									<label class="control-label col-md-1">Customer Sign Taken</label>
							
								<div class="form-group col-md-2">

									<form:select path="customerSignTaken" class="form-control">
										<form:option value="Yes" label="Yes"></form:option>
										<form:option value="No" label="No"></form:option>

									</form:select>

								</div>



								
									<label  class="control-label col-md-1">Longitude</label>
								
								<div class="form-group col-md-2">
	

									<form:input path="longitude" name="longitude"
										placeholder="Longitude"  class="form-control" />
								</div>



								
									<label class="control-label col-md-1">Latitude</label>
							
								<div class="form-group col-md-2">


									<form:input path="latitude" name="latitude"
										placeholder="Latitude" class="form-control" />
								</div>

							</div>

						<br>
						<br>


					


							<div class="row">


							
									<label class="control-label col-md-1">Firm Name:</label>
							
								<div  class="form-group col-md-2">
									<form:textarea path="firmName" rows="2" cols="20" class="form-control"></form:textarea>

								</div>

							
									<label class="control-label col-md-1">FirmRegNo:</label>
								
								<div class="form-group col-md-2">
									<form:textarea path="firmRegno" rows="2" cols="20" class="form-control"></form:textarea>

								</div>





							
									<label  class="control-label col-md-1">Executive Name</label>
								
									<div class="form-group col-md-2">

									<form:select path="executiveName" class="form-control">
										<form:option value="Chetan" label="Chetan"></form:option>
										<form:option value="Ram" label="Ram"></form:option>

									</form:select>

								</div>

						
									<label  class="control-label col-md-1">Work Experience:</label>
								
								<div class="form-group col-md-2">

									<form:textarea path="workExp" rows="2" cols="29" class="form-control"></form:textarea>
								</div>


							</div>
					




<br>
<br>



						<!-- here div like </div> -->






				

							<div class="row">

								
									<label class="control-label col-md-1">Service Description</label>
							
							<div class="form-group col-md-2">


									<form:textarea path="serviceDescription" rows="2" cols="20" class="form-control"></form:textarea>

								</div>







								
									<label class="control-label col-md-1">Field Report</label>
							
								
								<div class="form-group col-md-2">

									<form:textarea path="fieldReport" rows="2" cols="20" class="form-control"></form:textarea>
								</div>








							
									<label class="control-label col-md-1">Address</label>
								
								<div class="form-group col-md-2">


									<form:textarea path="address" id="ownaddress" rows="2" cols="88" class="form-control"></form:textarea>
									<span id="raddress" style="color:red"></span>
                                 
								</div>







							</div>

			<br>
			<br>


						<!-- adding new one -->


					

							<div class="row">
							
									<label class="control-label col-md-1">Call Attended</label>
							
								<div class="form-group col-md-2">


									<form:select path="callattended" class="form-control">
										<form:option value="Select Service" label="Select Service" />
										<form:option value="Yes" label="Yes"></form:option>
										<form:option value="No" label="No"></form:option>

									</form:select>
								</div>

							
									<label  class="control-label col-md-1">Feedback</label>
								
								<div class="form-group col-md-2">

									<form:textarea path="feedback" rows="2" cols="178" class="form-control"></form:textarea>


								</div>




							</div>

					
<div class="row" style="padding-left:140px; padding-bottom:10px;" id="btnSearchSubmit">
<div class="col-md-4">
</div>


	<div class="col-md-2">
	<input type="submit" class="btn btn-primary btn-block"  style="width: 101px;" value="Submit">
	</div>
	<div class="col-md-2">
	<a href="adminsearch" class="btn btn-primary btn-block"  style="width: 101px;"id="search">Search </a>
	</div>
	<div class="col-md-4">
</div>
</div>

				

					</form:form>
					
					
					
</div>
</div>
					
<%--  </c:if>	 --%> 			
					
					
					

<!-- end of main form -->












		<!-- container-fluid content -->

 <%--  <c:if test="${adminSearch == true }">	  --%>
       <c:if test="${adminclickedSearch == true}">
	
<div class="container-fluid" id="searchTable">


	<!-- <div class="well">
		<h1 class="text-center">Admin Detail</h1>
	
	</div> -->
	
	<!-- newly added -->
	
	
	
	<div style="margin-top:25px" class="row">
  	<div class="col-md-12">
  		<div  class="panel panel-default">
  				<div class="panel-heading">
  					<h3  class="text-center"><b>Admin</b></h3>
  				
  				</div>
  				<div class="panel-body" style="overflow-x:scroll; height: 450px;overflow-y:scroll  ">
  				

			<table class="table table-striped table-responsive">
				<thead>
					<tr>
						<th>Id</th>
						<th>DateOfVisit</th>
						<th>Time</th>
						<th>Location</th>
						<th>Division</th>
						<th>Name</th>
						<th>Address</th>
						<th>Mobile</th>
						<th>LandlineNumber</th>
						<th>Firmname</th>
						<th>FirmRegno</th>
						<th>Workexp</th>
						<th>ServiceInterested</th>
						<th>CustomerSignTaken</th>
						<th>ExecutiveName</th>
						<th>FieldReport</th>
						<th>ServiceDescription</th>
						<th>Calender</th>
						<th>Longitude</th>
						<th>Latitude</th>
						<th>CallAttended</th>
						<th>Feedback</th>
					</tr>

				</thead>



				<c:forEach var="adminbuyer" items="${store123}">
					<tr style="padding-left: 5px">
						<td>${adminbuyer.id}</td>
						<td>${adminbuyer.dateOfVisit}</td>
						<td>${adminbuyer.time}</td>
						<td>${adminbuyer.location}</td>
						<td>${adminbuyer.division}</td>
						<td>${adminbuyer.name}</td>
						<td>${adminbuyer.address}</td>
						<td>${adminbuyer.mobile}</td>
						<td>${adminbuyer.landlineNumber}</td>
						<td>${adminbuyer.firmName}</td>
						<td>${adminbuyer.firmRegno}</td>
						<td>${adminbuyer.workExp}</td>
						<td>${adminbuyer.serviceInterested}</td>
						<td>${adminbuyer.customerSignTaken}</td>
						<td>${adminbuyer.executiveName}</td>
						<td>${adminbuyer.fieldReport}</td>
						<td>${adminbuyer.serviceDescription}</td>
						<td>${adminbuyer.calender}</td>
						<td>${adminbuyer.longitude}</td>
						<td>${adminbuyer.latitude}</td>
						<td>${adminbuyer.callattended}</td>
						<td>${adminbuyer.feedback}</td>
					</tr>

				</c:forEach>
				
				<c:forEach var="adminbuyer" items="${store49}">
					<tr style="padding-left: 5px">
						<td>${adminbuyer.id}</td>
						<td>${adminbuyer.dateOfVisit}</td>
						<td>${adminbuyer.time}</td>
						<td>${adminbuyer.location}</td>
						<td>${adminbuyer.division}</td>
						<td>${adminbuyer.name}</td>
						<td>${adminbuyer.address}</td>
						<td>${adminbuyer.mobile}</td>
						<td>${adminbuyer.landlineNumber}</td>
						<td>${adminbuyer.firmName}</td>
						<td>${adminbuyer.firmRegno}</td>
						<td>${adminbuyer.workExp}</td>
						<td>${adminbuyer.serviceInterested}</td>
						<td>${adminbuyer.customerSignTaken}</td>
						<td>${adminbuyer.executiveName}</td>
						<td>${adminbuyer.fieldReport}</td>
						<td>${adminbuyer.serviceDescription}</td>
						<td>${adminbuyer.calender}</td>
						<td>${adminbuyer.longitude}</td>
						<td>${adminbuyer.latitude}</td>
						<td>${adminbuyer.callattended}</td>
						<td>${adminbuyer.feedback}</td>
					</tr>

				</c:forEach>
				
			</table>
			
			</div>
			</div>
			</div>
			</div>
			
			
			
			
			
			
			
			
		

</div>

<div class="container-fluid mm" id="DateTable"> 
<form:form action="myownsearchess" modelAttribute="store90" class="form-horizontal " style="margin-top:20px">

<label style="color:white;"class="control-label col-md-2">From date</label>
			
				
				<div class="form-group col-md-2">

					<form:input path="fromDateOfVisit" type="date" placeholder="From Date"
						class="form-control" />
				</div>
				

				
				<label style="color:white;" class="control-label col-md-2">To Date</label>
				
				
						
						<div class="form-group col-md-2">
                           <form:input path="toDateOfVisit" type="date" placeholder="To Date"
						   class="form-control" />
				      </div>
				
						
						
					
				
				<div class="col-md-2" >
	<input type="submit" class="btn btn-primary " value="Search" style="width: 101px;">
	</div>
				
			
		</form:form>
		</div>




 </c:if> 



	
<div class="cotainer-fluid" id="personDataTableCotainer" style="display: none;" >

<!-- <div class="well">
		<h1 class="text-center">Household Detail</h1>
	
	</div>

<table id="personDataTable" class="table table-striped table-responsive " > -->


<!-- newly added -->


<div style="margin-top:60px;  class="row">
  	<div  class="col-md-12">
  		<div class="panel panel-default">
  				<div class="panel-heading">
  					<h3  class="text-center"><b>Household</b></h3>
  				
  				</div>
  				<div class="panel-body" style="overflow-x:scroll; height: 450px;overflow-y:scroll  ">
  				
  						<table class="table table-striped table-responsive" id="personDataTable">
				<thead>

    <tr>
                   <th>DateOfVisit</th>
					<th>Time</th>
					<th>Location</th>
					<th>Name</th>
					<th>Address</th>
					
					
					<th>Mobile</th>
					<th>LandlineNumber</th>
					<th>ServiceIntereste</th>
					
					
					<th>CustomerSignTaken</th>
					<th>ExecutiveName</th>
					<th>FieldReport</th>
					<th>ServiceDescription</th>
					<th>Calender</th>
					<th>Longitude</th>
					<th>Latitude</th>
					<th>Division</th>
					
    </tr>
    
   
</table>



</div>
</div>
</div>
</div>
		
	</div>		
	



	
 <div class="cotainer-fluid" id="serviceProvidermainCotainer" style="display: none;">

<!-- <div class="well">
		<h1 class="text-center">ServiceProvider Detail</h1>
	
	</div>

<table id="serviceProvider" class="table table-striped table-responsive " >  -->


<!-- newly added -->


 <div style="margin-top:60px; class="row">
  	<div  class="col-md-12">
  		<div class="panel panel-default">
  				<div   class="panel-heading">
  					<h3 class="text-center"><b>Service Provider</b></h3>
  				
  				</div>
  				<div class="panel-body" style="overflow-x:scroll; height: 450px;  overflow-y:scroll  ">
  				
  						<table class="table table-striped table-responsive"  id="serviceProvider">
				<thead>


    <tr>
                  <th>DateOfVisit</th>
					<th>Time</th>
					<th>Location</th>
					<th>Name</th>
					<th>Address</th>
					
					
					<th>Mobile</th>
					<th>LandlineNumber</th>
				
					<th>Firm Name</th>
					<th>Firm RegNo</th>
					<th>Work Experience</th>
					<th>Service Interested</th>
					
					
					
					<th>CustomerSignTaken</th>
					<th>ExecutiveName</th>
					<th>FieldReport</th>
					<th>ServiceDescription</th>
					<th>Calender</th>
					<th>Longitude</th>
					<th>Latitude</th>
					<th>Division</th>
					
					
    </tr>
    
    
    
</table>

</div>
</div>
</div>
</div>










	</div>	

 <%-- <div class="container-fluid mm"> 
<form:form action="myownsearchess" modelAttribute="store90" class="form-horizontal " style="margin-top:20px">

<label style="color:white;"class="control-label col-md-2">From date</label>
			
				
				<div class="form-group col-md-2">

					<form:input path="fromDateOfVisit" type="date" placeholder="From Date"
						class="form-control" />
				</div>
				

				
				<label style="color:white;" class="control-label col-md-2">To Date</label>
				
				
						
						<div class="form-group col-md-2">
                           <form:input path="toDateOfVisit" type="date" placeholder="To Date"
						   class="form-control" />
				      </div>
				
						
						
					
				
				<div class="col-md-2" >
	<input type="submit" class="btn btn-primary " value="Search" style="width: 101px;">
	</div>
				
			
		</form:form>
		</div>

 --%>


	<script type="text/javascript">

function MyOwnFunction(){
	
	
	var a=document.getElementById('ownname').value;
	if(a==""||a==null){
		
		document.getElementById('rname').innerHTML="**Please Enter name";
		return false;
		
		}
	
	 /* else{
		 document.getElementById('rname').innerHTML=" ";
	 }  */
	
	var c=document.getElementById('ownmobile').value;
	if(c==null||c==""){
		
		document.getElementById('rmobile').innerHTML="**Please Enter Mobile Number";
		return false;
	}
	
	else if(isNaN(c)){
		
		document.getElementById('rmobile').innerHTML="**Enter Number Only";
		return false;
	}
	
	 else{
		 document.getElementById('rmobile').innerHTML=" ";
	 } 
	
	
	 var d=document.getElementById('ownlandline').value;
	 if(d==null||d==""){
		 
		 document.getElementById('rlandline').innerHTML="**Please Enter Landline Number";
		 return false;
	 }
	
	 else if(isNaN(d)){
		 
		 document.getElementById('rlandline').innerHTML="**Please Enter Number Only";
		 return false;
	 }
	 
	 else{
		 document.getElementById('rlandline').innerHTML=" ";
	 } 
	
	

	var b=document.getElementById('ownaddress').value;
	if(b==null||b==""){
		
		document.getElementById('raddress').innerHTML="**Please Enter Address";
		return false;
	}
	
	 else{
		 document.getElementById('raddress').innerHTML=" ";
	 } 
	
}

</script>


<!-- <script>

var s= document.getElementById('householdid');
var t= document.getElementById('serviceid');


function changehover(){
	
	
	
	


t.classList.add("active");
s.classList.remove("active");
}


function changehover2(){
s.classList.add("active");
t.classList.remove("active");




}

</script>
 -->



</body>
</html>