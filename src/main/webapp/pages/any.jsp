<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Servlet URI Parameters</h1>
From: <c:url value="http://cdivilly.wordpress.com/2011/04/22/java-servlets-uri-parameters/"/>
<ul>
    <li>Forward ContextPath: ${requestScope['javax.servlet.forward.context_path'] }</li>
    <li>Forward PathInfo: ${requestScope['javax.servlet.forward.path_info'] }</li>
    <li>Forward QueryString: ${requestScope['javax.servlet.forward.query_string'] }</li>
    <li>Forward RequestUri: ${requestScope['javax.servlet.forward.request_uri'] }</li>
    <li>Forward ServletPath: ${requestScope['javax.servlet.forward.servlet_path'] }</li>
    <li>Include PathInfo: ${requestScope['javax.servlet.include.path_info'] }</li>
    <li>PathInfo: ${pageContext.request.pathInfo }</li>
    <li>Servlet Path: ${pageContext.request.servletPath }</li>
    <li>PathInfo: <%=request.getPathInfo() %></li>
    
    <li>Query String: <c:out value="${pageContext.request.queryString }"/></li>
    <li>Request URI: <c:out value="${pageContext.request.requestURI }"/></li>
    <li>Request URL: <c:out value="${pageContext.request.requestURL }"/></li>
</ul>
</body>
</html>