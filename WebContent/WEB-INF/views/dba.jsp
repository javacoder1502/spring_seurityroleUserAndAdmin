<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>DBA page</title>
</head>
<body>
	Dear <strong>${user}</strong>, Welcome to DBA Page.
	<a href="<c:url value="/logout" />">Logout</a>
	
	<sec:authentication var="principal" property="principal" />
	helloo  ${principal.username}
	
	
	<%-- <sec:authorize access="hasRole('ADMIN')"> --%>
<%-- <sec:authorize access="hasRole('ROLE_ADMIN')"> --%>
<%-- <sec:authorize access="hasAuthority('ROLE_ADMIN')"> --%>
<sec:authorize access="hasAuthority('ROLE_ADMIN')">
This session will be visible to an admin only.<br/>
You are an Administrator.<br/>
</sec:authorize>
	
</body>
</html>