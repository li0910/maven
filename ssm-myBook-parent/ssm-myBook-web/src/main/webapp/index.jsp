<%@ page import="com.qf.service.BookService" %>
<%@ page import="com.qf.pojo.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="com.qf.controller.BookController" %>
<%@ page import="com.qf.pojo.QueryVo" %>
<%@ page import="org.springframework.web.bind.annotation.RequestParam" %>
<%@ page import="org.springframework.web.servlet.ModelAndView" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    body {
        background-image: url("/img/7408.gif_wh860.gif");
        background-repeat: no-repeat;
        background-size: 100%;
    }


    .table {
        float: left;
        position: relative;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        -moz-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        -o-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);

    }

</style>

    <body>

    <%
        QueryVo queryVo = new QueryVo();
    %>
    <div class="table">
        <form id="skipAdmin" action="/html/login-reg/login.html">
            <input class="button" type="button" value="管理员入口" onclick="AdminLogin()">
        </form>
    </div>
    <div class="table">
        <form id="skipCustomer" action="/book/shopNeed">
            <input class="button" type="button" value="商城入口" onclick="CustomerLogin()">
        </form>
    </div>

    </body>

<script src="/js/jquery-1.8.3.js"></script>
<script>
    function AdminLogin() {
        $("#skipAdmin").submit();
        // alert("如果没有账号请先注册")
    }

    function CustomerLogin() {
        $("#skipCustomer").submit();
        // alert("如果没有账号请先注册")
    }
</script>
</html>
