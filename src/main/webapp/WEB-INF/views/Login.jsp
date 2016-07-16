<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login here</title>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>
<body>
<form:form method="POST" action="Login" commandName="loginMem">
   		<table>
    		<tr>
       			<td><form:label path="email">Email Id<font color="red">*</font></form:label></td>
        		<td><form:input path="email" /></td>
    		</tr>
    		<tr>
       			<td><form:label path="password">Password<font color="red">*</font></form:label></td>
        		<td><form:input path="password" /></td>
    		</tr>
    		<tr>
        		<td colspan="2">
            		<input type="submit" value="Login"/>
        		</td>
    		</tr>
    </table>
    </form:form>

</body>
</html>