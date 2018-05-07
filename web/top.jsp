<%--
  Created by IntelliJ IDEA.
  User: codingBoy
  Date: 16/10/23
  Time: 下午12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- 他的作用是为本页面所有的表单和超链接指定显示内容的框架-->
    <base target="main">
    <title>My JSP 'top.jsp' starting page</title>
</head>
<body style="text-align: center;">
    <h1>数据管理</h1>
    <a href="<c:url value='/add.jsp'/>">添加信息</a>

    <br/>
    <a href="<c:url value='/StudentServlet?method=findAll'/>"> 查询学生信息 </a>
    <a href="<c:url value='/ScServlet?method=findAll'/>"> 查询学生成绩 </a>
    <a href="<c:url value='/TeacherServlet?method=findAll'/>"> 查询教师信息 </a>
    <a href="<c:url value='/CoServlet?method=findAll'/>"> 查询课程信息 </a>
    <a href="<c:url value='/TeachServlet?method=findAll'/>"> 查询TEACH信息 </a>
    <br/>

    <a href="<c:url value='/query.jsp'/>"> 单表搜索 </a>
    <a href="<c:url value='/more_query.jsp'/>"> 多表搜索 </a>


</body>
</html>
