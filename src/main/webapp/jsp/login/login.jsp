<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login page</title>
</head>
<body onload='document.f.j_username.focus();'>
	<h3>Hello! Log in to your account.</h3>
	<a class="button" href="register">register</a>
<HTML>

<form name='f' action="<c:url value='j_spring_security_check' />"
	method='POST'>
	<span class="field">login</span><hr>
	<table>
		<tr>
			<td><label>Login:</label></td>
			<td><input type='text' class="inputSimple" name='j_username'
				value=''></td>
		</tr>
		<tr>
			<td><label>Password:</label></td>
			<td><input type='password' class="inputSimple" name='j_password' /></td>
		</tr>
		<tr>
			<td colspan='2'><input name="submit" class="button"
				type="submit" value="log in" /></td>
			<td colspan='2'><input name="reset" class="button" type="reset"
				value="clear" /></td>
		</tr>
	</table>
</form>

</body>
</html>