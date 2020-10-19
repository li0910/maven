<%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/15
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<form action="/class/addClass" method="post">
    <table align="center" border="1px" width="500px">
        <tr align="center">
            <th colspan="2">
                <h1>添加书籍分类</h1>
            </th>
        </tr>
        <tr align="center">
            <td>分类名称</td>
            <td><input type="text" name="name"></td>
        </tr>
        
        <tr align="center">
            <td>分类管理</td>
            <td><input type="text" name="descr"></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="保存">&nbsp;&nbsp;
                <input type="reset" value="重置">&nbsp;&nbsp;
                <input type="button" value="返回" onclick="back()">
            </td>
        </tr>
    </table>
</form>
</body>
<script src="/js/jquery-1.8.3.js"></script>
<script>
    function back() {
        $.ajax({
            type:"post",
            url:"/html/backStageFrameset.jsp",
            success:function () {
                alert("返回上一级");
            }
        });
    }
</script>
</html>
