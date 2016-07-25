<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h2>Hello!</h2>
	<hr>
	share your books previews
	
	<hr>
	project based on latest version of:

	<ul>
		<li>Spring</li>
		<li>JSP / JQuery / Three.js</li>
		<li>Hibernate</li>
		<li>Apache tiles</li>
	</ul>
	and so on..
	<hr>
	another tools:
	<ul>
		<li>IDE: MyEclipse for Spring database:</li>
		<li>Database: Oracle 10g Express</li>
	</ul>
</body>
</html>
