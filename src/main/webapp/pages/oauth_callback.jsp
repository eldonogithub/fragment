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
<title>Callback</title>
</head>
<body>
    <h1>Callback</h1>
    <c:forEach var="item" items="${pageContext.request.parameterMap }">
        <li>${item.key }:</li>
        <ol>
            <c:forEach var="value" items="${item.value }">
                <li>${value }</li>
            </c:forEach>
        </ol>
    </c:forEach>
</body>
</html>