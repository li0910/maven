<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
    <meta name="renderer" content="webkit">
    <!--国产浏览器高速模式-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 公共样式 开始 -->
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link rel="bookmark" href="images/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/iconfont.css">
    <script type="text/javascript" src="framework/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/frameStyle.css">
    <script type="text/javascript" src="framework/frame.js"></script>

</head>
<style>
    .main {
        width: 250px;
        float: right;
    }

    .right-navigate {
        float: right;
    }

    .navigate-item {
        float: left;
    }

    body {
        background-color:#1C1C1C;
        background-size: auto;
    }
    .frameTop{
        width: 100%;
        height: 60px;
        background-color:#1C1C1C;
        position: relative;
    }
    .frameTop .topMenu{
        height: 60px;
        float: right;
    }

</style>
<body>

<!-- 头部栏 - 开始 -->
<div class="frameTop">
    <div class="topMenu">
        <ul class="right-navigate">
            <li class="navigate-item"><a href="AdminMes/adminMessage.jsp" target="_parent"><i class="iconfont icon-yonghu1"></i>${admin.name}</a></li>
            <li class="navigate-item"><a href="/admin/adminLogout" target="_parent"><i class="iconfont icon-xiugaimima"></i>注销</a></li>
            <li class="navigate-item"><a href="AdminMes/updatePsw.jsp" target="_parent"><i class="iconfont icon-xiugaimima"></i>修改密码</a></li>

        </ul>
    </div>
</div>

</body>
</html>