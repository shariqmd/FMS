<%--   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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

<c:forEach var="go" items="${store85}">
       
        ${go.dateOfVisit}
	 	${go.time}
		${go.location}
		${go.division}
		${go.name}
		${go.address}
		${go.mobile}
		${go.landlineNumber}
		${go.serviceInterested}
		${go.customerSignTaken}
		${go.executiveName}
		${go.fieldReport}
		${go.serviceDescription}
		${go.calender}
		${go.longitude}
		${go.latitude} 
</c:forEach>

</body>
</html>    --%>