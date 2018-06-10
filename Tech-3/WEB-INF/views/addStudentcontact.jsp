<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student contact Details</title>
</head>
<body>
    <div align="center">
        <form:form action="response" method="post" commandName="contactForm">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Add Student Contact Details</h2></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><form:input path="firstname" /></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><form:input path="lastname" /></td>
                </tr>
                 <tr>
                    <td>Phone Number:</td>
                    <td><form:input path="phonenumber" /></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><form:input path="email" /></td>
                </tr>
                
                <tr>
                    <td>Organization:</td>
                    <td><form:select path="organization" items="${organizationList}" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit" /></td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>
