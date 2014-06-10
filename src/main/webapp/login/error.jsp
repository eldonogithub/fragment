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
<title>Login</title>
</head>
<body>
    <h1>Login - Failed</h1>
    <form method="POST" action="j_security_check">
        <fieldset>
            <legend>Enter Credentials</legend>
            <table>
                <tbody>
                    <tr>
                        <td><label for="j_username">User
                                Name</label></td>
                        <td><input name="j_username" type="text"
                            placeholder="E.g. Eldon"></td>
                    </tr>
                    <tr>
                        <td><label for="j_password">Password</label></td>
                        <td><input name="j_password"
                            type="password" placeholder="E.g. s3cr3t"></td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
    </form>
    
</body>
</html>