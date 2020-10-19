<%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/15
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
    <meta name="renderer" content="webkit">
    <!--国产浏览器高速模式-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 公共样式 开始 -->
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/iconfont.css">
    <script type="text/javascript" src="../framework/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../js/base.js"></script>
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <!-- 滚动条插件 -->
    <link rel="stylesheet" type="text/css" href="../css/jquery.mCustomScrollbar.css">
    <script src="../framework/jquery-ui-1.10.4.min.js"></script>
    <script src="../framework/jquery.mousewheel.min.js"></script>
    <script src="../framework/jquery.mCustomScrollbar.min.js"></script>
    <script src="../framework/cframe.js"></script>
    <!-- 仅供所有子页面使用 -->
    <!-- 公共样式 结束 -->
    <title>Title</title>
</head>
<style>
    body {
        background-color: #1C1C1C;
        background-size: 100%;
        color: #BDC2C8;
    }
</style>
<body>
<table align="center" border="2px" width="500">
    <tr>
        <td>序号</td>
        <td>姓名</td>
        <td>密码</td>
        <td>电话</td>
        <td>邮箱</td>
        <td>地址</td>
        <td>管理</td>
    </tr>
    <c:forEach items="${pageInfo.list}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.psw}</td>
            <td>${customer.phone}</td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
            <td>
                <a href="/customer/delete?id=${customer.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
