<%@page import="utility.Testclass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Testclass testclass = new Testclass();
out.println(testclass.testMethod());
%>
</body>
</html>