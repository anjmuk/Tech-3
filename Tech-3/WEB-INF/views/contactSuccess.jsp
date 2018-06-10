<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact Add Success</title>
</head>
<body>
    <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Contact Add Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Thank you for registering! Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td>${contactForm.firstname}</td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td>${contactForm.lastname}</td>
            </tr>
            <tr>
                <td>Phone Number:</td>
                <td>${contactForm.phonenumber}</td>
            </tr>
             <tr>
                <td>E-mail:</td>
                <td>${contactForm.email}</td>
            </tr>
            
            <tr>
                <td>Organization:</td>
                <td>${contactForm.organization}</td>
            </tr>
 
        </table>
    </div>
</body>
</html>