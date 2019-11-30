<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="buyer" items="${store50}">
<table>
 <tr>
        <td>${buyer.dateOfVisit}</td>
	 	<td>${buyer.time}</td>
		<td>${buyer.location}</td>
		<td>${buyer.division}</td>
		<td>${buyer.name}</td>
		<td>${buyer.address}</td>
	    <td>${buyer.mobile}</td>
		<td>${buyer.landlineNumber}</td>
		<td>${buyer.serviceInterested}</td>
		<td>${buyer.customerSignTaken}</td>
		<td>${buyer.executiveName}</td>
		<td>${buyer.fieldReport}</td>
		<td>${buyer.serviceDescription}</td>
		<td>${buyer.calender}</td>
		<td>${buyer.longitude}</td>
		<td>${buyer.latitude} </td>
</tr>

</table>
</c:forEach>



</body>
</html>  --%>