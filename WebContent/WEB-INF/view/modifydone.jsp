<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<c:forEach var="accept" items="${store89}">

${accept.dateOfVisit}
${accept.time}
${accept.location}
${accept.division}
${accept.name}
${accept.address}
${accept.mobile}
${accept.landlineNumber}
${accept.serviceInterested}
${accept.customerSignTaken}
${accept.executiveName}
${accept.fieldReport}
${accept.serviceDescription}
${accept.calender}
${accept.longitude}
${accept.latitude}
${accept.firmName}
${accept.firmRegno}
${accept.workExp}
${accept.callattended}
${accept.feedback}



</c:forEach> 

</body>
</html>