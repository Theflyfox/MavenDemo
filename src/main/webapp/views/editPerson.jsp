<%--
  Created by IntelliJ IDEA.
  User: 19401
  Date: 2018/11/18
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>编辑用户</h1>
<form action="/updatePerson" name="userForm" method="post">
    <input type="hidden" name="id" value="${person.id}">
    姓名：<input type="text" name="name" value="${person.name}">
    <input type="submit" value="编辑" >
</form>
</body>
</html>
