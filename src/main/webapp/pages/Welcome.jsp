<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html:html>
<head>
<title><bean:message key="welcome.title" /></title>
</head>
<body bgcolor="white">
    <logic:notPresent name="org.apache.struts.action.MESSAGE"
        scope="application">
        <font color="red"> ERROR: Application resources not
            loaded -- check servlet container logs for error messages. </font>
    </logic:notPresent>

    <h3>
        <bean:message key="welcome.heading" />
    </h3>
    <p>
        <bean:message key="welcome.message" />
    </p>
    <ul>
        <li><a
            href='<c:url value="/Fragment.do"/>#access_type=blah'>Fragment</a></li>
        <li><a href="1169_3593_popup.jpg">Non static Image</a></li>
        <li><a href="static/1169_3591_popup.jpg">Static Image</a></li>
    </ul>
</body>
</html:html>
