
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Service Provider</title>


<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resources/rk_images/favicon.ico" />" />
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style>
    *{
  margin: 0px;
  padding: 0px;
  }  
  
  .con{
background-color: #F1F3F4;
margin-top:-20px;


}
.mm{
background-color: MediumSeaGreen;
margin-top:0px;

}
.put{
background-color:red;
}
 
  
  </style>
  

<style>
.navbar-default{

background-color: #00B7E3! important;
    height: 85px! important;
    color: black! important;
    padding-top: 16px! important;
    

}


</style>
</head>

<style>

@media only screen and (max-width: 600px) {
 
  #serviceform{
  margin-top: 200px;
  
 
  }

 
 
.navbar-default .navbar-collapse, .navbar-default .navbar-form {
    border-color: #e7e7e7;
    display: grid;
}
.navbar-default .navbar-nav>li>a {

margin-top: 5px;


}




#btnSearchSubmit2{

display:flex;

}

</style>

<body>


	<%-- <nav class="navbar navbar-default">
	
	<div class="container-fluid">
	
	<div class="navbar-header"> 
	  <img src="${pageContext.request.contextPath}/resources/images/infra.png" style="width:100px;" class="navbar-brand">
	  
	  <img src="${pageContext.request.contextPath}/resources/images/infra.png"  style="width:100px;"> 
	</div>

<!--   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button> -->
  
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="nav navbar-nav pull-right" >
    
    <li><a  href="https://www.rakshaninfra.com/" style="font-weight: bold; color:white; font-size: 20px" target="_blank">Home</a>	</li>
    <li> <a  href="admin" style="font-weight: bold; color:white; font-size: 20px"> <img src="${pageContext.request.contextPath}/resources/images/circled-chevron-right.png" style="width:25px;"/>Admin</a></li>
    <li> <a  href="${pageContext.request.contextPath}/searchBydate" style="font-weight: bold; font-size: 20px">Search ByDate</a></li>   
      
    
    </ul>
  </div>
  
  </div>
</nav>

 --%>
 
 
 <nav class="navbar navbar-default">
	
	
	
	
	
	
	<div class="navbar-header"> 

	  
	  <img src="${pageContext.request.contextPath}/resources/images/infra.png"  style="width:100px;">
	  
	    <!--  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myidname">    
            <span class="icon-bar"></span>    
            <span class="icon-bar"></span>    
            <span class="icon-bar"></span>    
        </button>  --> 
	   
	</div>


  <div class="container-fluid">
  <div class="navbar-collapse collapse" id="myidname">
    <ul class="nav navbar-nav pull-right" >
    
    <li><a  href="https://www.rakshaninfra.com/" style="font-weight: bold; color:red; font-size: 20px" target="_blank">Home</a>	</li>
    <li> <a  href="admin" style="font-size: 20px; color:red; font-weight:bold;"><img src="${pageContext.request.contextPath}/resources/images/circled-chevron-right.png" style="width:25px;"/>Admin</a></li>

      
    
    </ul>
  </div>
  
  </div>
</nav>
 

				
	
	 
	 <!--start-->
	 
	<div id="serviceform">
	 
	 <div  class="container-fluid con">



<div style="padding-top:23px;" class="row">
	<div  class="col-md-12">
		<div  class="panel-default">
				 <div style="background-color:rgb(60, 169, 86);" class="panel-heading">
					<h3  style="color:white;" class="text-center"><b>Service ProviderForm</b>  <span style="color:black;">${message}<span>  </h3>
				
				</div>		 
				<div class="panel-body">
				
				<form:form class="form-horizontal" action="processSurvey1" modelAttribute="Fms1" onsubmit="return MyFunction()" style="margin-top:30px;">
					









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

					<form:input path="name" name="name" id="myname" placeholder="Name"
						class="form-control" />
                 <span id="qname" style="color:red"></span>

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
					<form:input path="mobile" name="mymobile" id="mymobile"
						placeholder="Mobile" class="form-control" />
                   <span id="qmobile" style="color:red"></span>

				</div>

				<label for="fname" class="control-label col-md-1">Landline
					Number</label>

				<div class="form-group col-md-2">
					<form:input path="landlineNumber" name="landlinenumber"
						id="mylandline" placeholder="LandlineNumber" class="form-control" />
                  
                  	<span id="qlandline" style="color:red"></span>
				</div>





			</div>
			
			<br>
			<br>
			
		


			

							<div class="row">
							
									<label class="control-label col-md-1">Service Interested</label>
								
					

                              <div class="form-group col-md-2">
									<form:select path="serviceInterested" class="form-control">
>
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


							
									





							
									<label  class="control-label col-md-1">Executive Name</label>
								
									<div class="form-group col-md-2">

									<form:select path="executiveName" class="form-control">
										<form:option value="Chetan" label="Chetan"></form:option>
										<form:option value="Ram" label="Ram"></form:option>

									</form:select>

								</div>
								
								
									<%-- <label class="control-label col-md-1">Field Report</label>
							
								
								<div class="form-group col-md-2">

									<form:textarea path="fieldReport" rows="3" cols="75"></form:textarea>
								</div> --%>
								
								
								 <label class="control-label col-md-1">Firm Name</label>
							
								
								<div class="form-group col-md-2">

									<form:textarea path="firmName" rows="2" cols="28" class="form-control"></form:textarea>
								</div> 
								
								 <label class="control-label col-md-1">Firm Regno</label>
							
								
								<div class="form-group col-md-2">

									<form:textarea path="firmRegno" rows="2" cols="28" class="form-control"></form:textarea>
								</div> 
								
								
								 <label class="control-label col-md-1">Work Exp</label>
							
								
								<div class="form-group col-md-2">

									<form:textarea path="workExp" rows="2" cols="28" class="form-control"></form:textarea>
								</div> 
								
								
								

						

							</div>
					




<br>
<br>



						<!-- here div like </div> -->






				

							<div class="row">

								
									<label class="control-label col-md-1">Service Description</label>
							
							<div class="form-group col-md-2">


									<form:textarea path="serviceDescription" rows="2" cols="28" class="form-control"></form:textarea>

								</div>


                                

                            <label class="control-label col-md-1">Field Report</label>
							
								
								<div class="form-group col-md-2">

									<form:textarea path="fieldReport" rows="2" cols="30" class="form-control"></form:textarea>
								</div> 


								
								







							
									<label class="control-label col-md-1">Address</label>
								
								<div class="form-group col-md-2">


									<form:textarea path="address" id="myaddress" rows="2" cols="47" class="form-control"></form:textarea>
									<span id="qaddress" style="color:red"></span>
                                  
								</div>







							</div>

			<br>
			<br>


						<!-- adding new one -->


<div class="row" style="margin-top:-10px; padding-left:80px;" id="btnSearchSubmit2">
<div class="col-md-4">
</div>


	<div class="col-md-2" >
	<input type="submit" class="btn btn-primary" value="Submit" style="width: 101px;">
	</div>
	<div class="col-md-2">
	<a href="mysearch" class="btn btn-primary" id="search" style="width: 101px;">Search </a>
	</div>
	<div class="col-md-4">
</div>
</div>

				

					</form:form>
				
				</div>
		</div>
	
	</div>

</div>

	
					
					
					
</div>

</div>


<!-- table -->

<!-- <table class="table" style="width: 1000px; font-size: 12px">
     <thead class="thead-dark"> -->
     
     <c:if test="${serviceclickedSearch == true }"> 
  <div style="padding-top:25px;" class="container-fluid">
  
  <div  class="row">
  	<div class="col-md-12">
  		<div class="panel panel-default">
  				<div class="panel-heading">
  					<h3 class="text-center"><b>ServiceProvider</b> </h3>
  				
  				</div>
  				<div class="panel-body" style="overflow-x:scroll; height: 450px;overflow-y:scroll  ">
  				
  						<table class="table table-striped table-responsive" style="margin-top: 10px">
				<thead>
				<tr>
					
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
				</tr>

</thead>



				<c:forEach var="buyer" items="${store50}">
					<tr>
						
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
				
				
				
				<c:forEach var="rental" items="${store48}">
					<tr>
						<td>${rental.dateOfVisit}</td>
						<td>${rental.time}</td>
						<td>${rental.location}</td>
						<td>${rental.division}</td>
						<td>${rental.name}</td>
						<td>${rental.address}</td>
						<td>${rental.mobile}</td>
						<td>${rental.landlineNumber}</td>
						<td>${rental.firmName}</td>
		                <td>${rental.firmRegno}</td>
		                <td>${rental.workExp}</td>
						<td>${rental.serviceInterested}</td>
						<td>${rental.customerSignTaken}</td>
						<td>${rental.executiveName}</td>
						<td>${rental.fieldReport}</td>
						<td>${rental.serviceDescription}</td>
						<td>${rental.calender}</td>
						<td>${rental.longitude}</td>
						<td>${rental.latitude}</td>
					</tr>

				</c:forEach>
				
				
				

</table>
  				</div>
  		</div>
  	
  	</div>
  
  </div>
 
  
 </div>
<%-- </c:if> --%>


 <%--  <c:if test="${searchByDate == true }">  --%>
 
   <div class="container-fluid mm"> 
<form:form action="myownsearches" modelAttribute="Fms1" class="form-horizontal" style="margin-top:20px">

<label style="color:white;" class="control-label col-md-2">From date</label>
			<!-- <div class="row"> -->

				<!-- <div class="col-2">
					<label>From Date </label>
				</div> -->
				<%-- <div class="col-4">
					<form:input path="fromDateOfVisit" type="date"
						placeholder="From Date " style="width:170px;" />

				</div> --%>
				
				<div class="form-group col-md-2">

					<form:input path="fromDateOfVisit" type="date" placeholder="From Date"
						class="form-control" />
				</div>
				


				<!-- <div class="col-2"> 
					<label>To Date</label>
				</div> -->
				
				<label style="color:white;" class="control-label col-md-2">To Date</label>
				
				<!-- <div class="col-4"> -->
					<%-- <form:input path="toDateOfVisit" type="date" placeholder="To Date"
						style="width:170px;" />
						 --%>
						
						<div class="form-group col-md-2">
                           <form:input path="toDateOfVisit" type="date" placeholder="To Date"
						   class="form-control" />
				      </div>
				
						
						
					<!-- <input type="submit" value="Search" style="width:100px; margin-right:190px; margin-top:-10px;"> -->
					
					<!-- <div class="col-md-2">
	                 <input type="submit" value="Search" class="btn btn-primary btn-block" value="Submit"> 
	                
	                	
				</div> -->
				
				<div class="col-md-2" >
	<input type="submit" class="btn btn-primary " value="Search" style="width: 101px;">
	</div>
				<!-- this -->
	              <!--  </div> -->
					
					
				<!-- </div> -->
				
			<!-- </div> -->
			
		</form:form>
		</div>
		
		<%-- </c:if>   --%>
		</c:if>
		
	 
	 
	 
	<footer class="footer"> </footer>


	<script type="text/javascript">
	
		function MyFunction() {

			var name = document.getElementById('myname').value;
			if (name == null || name == "") {
				document.getElementById('qname').innerHTML = " **Please enter name";
				return false;
			}
			
			  else{
				 document.getElementById('qname').innerHTML=" ";
			 } 
			
			


			var mobile = document.getElementById('mymobile').value;
			if (mobile == null || mobile == "") {

				document.getElementById('qmobile').innerHTML = "**Please enter mobile number";
				return false;
			}
				
			 if (isNaN(mobile)) {
				document.getElementById('qmobile').innerHTML = "**Enter number only";
				return false;
			}
			  
			  if (mobile.length!=10){
				
				document.getElementById('qmobile').innerHTML= "**Mobile number must be 10 digit";
				return false;
			} 
                 
			 if((mobile.charAt(0)!=9) && (mobile.charAt(0)!=8) && (mobile.charAt(0)!=7)){
                	 
                	 document.getElementById('qmobile').innerHTML= "**Mobile number must start with 9,8,7";
     				return false;
                	 
                 }
			
			 else{
				 document.getElementById('qmobile').innerHTML=" ";
			 } 
			
                
			
			
			
			
		
 
			var store = document.getElementById('mylandline').value;
			
			if (store == null || store == "") {
				document.getElementById('qlandline').innerHTML = "**Please Enter Landline Number";
				return false;
				
			} 
			
			 if (isNaN(store)) {
				document.getElementById('qlandline').innerHTML = "**Enter Number only";
				return false;
			}
			
			  else{
				 document.getElementById('qlandline').innerHTML=" ";
			 } 
			
			
			
			

			var store1 = document.getElementById('myaddress').value;
			
			if (store1 == null || store1 == "") {

				document.getElementById('qaddress').innerHTML = "**Please Enter address";
				return false;
			}
			
			 else{
				 document.getElementById('qaddress').innerHTML=" ";
			 } 
			
			
			 
			
			
			

		}
	</script>
	
	
		
</body>
</html>









