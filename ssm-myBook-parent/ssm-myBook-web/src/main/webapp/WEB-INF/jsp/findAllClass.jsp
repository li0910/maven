<%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/15
  Time: 8:29
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <table align="center" width="500" border="2px">
        <tr align="center">
            <th colspan="4">
                <span>书籍分类</span>
            </th>
        </tr>
        <tr align="center">
            <td>序号</td>
            <td>分类名称</td>
            <td>分类说明</td>
            <td>管理</td>
        </tr>
<c:forEach items="${pageInfo.list}" var="aClass">
        <tr align="center">
            <td>${aClass.id}</td>
            <td>${aClass.name}</td>
            <td>${aClass.descr}</td>
            <td>
                <a href="/class/updateClass?id=${aClass.id}">修改</a>
                <a href="/class/deleteClass?id=${aClass.id}">删除</a>
            </td>
        </tr>
</c:forEach>
    </table>
    <div align="center">
        <%--    跳转到首页--%>
        <c:if test="${requestScope.pageInfo.hasPreviousPage}">
            <a href="${pageContext.request.contextPath}/class/findAll?pageNum=${requestScope.pageInfo.navigateFirstPage}&pageSize=3">首页</a>
        </c:if>
        <%--    判断是否有上一页,如果有则显示出来--%>
        <c:if test="${requestScope.pageInfo.hasPreviousPage}">
            <a href="${pageContext.request.contextPath}/class/findAll?pageNum=${requestScope.pageInfo.prePage}&pageSize=3">上一页</a>
        </c:if>
        <%--    判断是否有上一页,如果有,则显示出来--%>
        <c:if test="${requestScope.pageInfo.hasPreviousPage}">
            <a href="${pageContext.request.contextPath}/class/findAll?pageNum=${requestScope.pageInfo.prePage}">${requestScope.pageInfo.prePage}</a>
        </c:if>

        <%--    当前页--%>
        <a href="${pageContext.request.contextPath}/class/findAll?pageNum=${requestScope.pageInfo.pageNum}">
            <span style="color: red">${requestScope.pageInfo.pageNum}</span>
        </a>

        <%--    判断是否有下一页,如果有则显示出来--%>
        <c:if test="${requestScope.pageInfo.hasNextPage}">
            <a href="${pageContext.request.contextPath}/class/findAll?pageNum=${requestScope.pageInfo.nextPage}">${requestScope.pageInfo.nextPage}</a>
        </c:if>

        <%--    跳转到下一页--%>
        <c:if test="${requestScope.pageInfo.hasNextPage}">
            <a href="${pageContext.request.contextPath}/class/findAll?pageNum=${requestScope.pageInfo.nextPage}&pageSize=3">下一页</a>
        </c:if>

        <%--    跳转到末页--%>
        <c:if test="${requestScope.pageInfo.hasNextPage}">
            <a href="${pageContext.request.contextPath}/class/findAll?pageNum=${requestScope.pageInfo.navigateLastPage}&pageSize=3">末页</a>
        </c:if>
        共&nbsp;${requestScope.pageInfo.pages}&nbsp;页
    </div>
</body>
</html>
