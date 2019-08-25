<%--
  Created by IntelliJ IDEA.
  User: 19401
  Date: 2018/11/18
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function del(id){
            $.get("/delPerson?id=" + id,function(data){
                if("success" == data.result){
                    alert("删除成功");
                    window.location.reload();
                }else{
                    alert("删除失败");
                }
            });
        }
    </script>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" onclick="managePage('/index.jsp')">首页</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#" onclick="managePage('/views/addPerson.jsp')">添加用户</a></li>
                <li><a href="#" onclick="managePage('/views/user-manage.html')">用户管理</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Java
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">jmeter</a></li>
                        <li><a href="#">EJB</a></li>
                        <li><a href="#">Jasper Report</a></li>
                        <li class="divider"></li>
                        <li><a href="#">分离的链接</a></li>
                        <li class="divider"></li>
                        <li><a href="#">另一个分离的链接</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div id="content-pane">
    <h3><a href="/toAddPerson">添加用户</a></h3>

    <table border="1">
        <tbody>
        <tr>
            <th>姓名</th>
            <th>邮箱</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        <c:if test="${!empty personList}">
            <c:forEach items="${personList}" var="person">
                <tr>
                    <td>${person.name }</td>
                    <td>${person.email }</td>
                    <td>${person.status }</td>
                    <td>
                        <a href="/getPerson?id=${person.id }">编辑</a>
                        <a href="javascript:del('${person.id}')">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
        </tbody>
    </table>

</div>
</body>
<script type="application/javascript">
    function managePage(x) {
        $("#content-pane").load(x);
    }

</script>
</html>

