	    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="rental" items="${store55}">
       
        ${rental.dateOfVisit}
	 	${rental.time}
		${rental.location}
		${rental.division}
		${rental.name}
		${rental.address}
		${rental.mobile}
		${rental.landlineNumber}
		${rental.serviceInterested}
		${rental.customerSignTaken}
		${rental.executiveName}
		${rental.fieldReport}
		${rental.serviceDescription}
		${rental.calender}
		${rental.longitude}
		${rental.latitude} 
</c:forEach>

</body>
</html>  