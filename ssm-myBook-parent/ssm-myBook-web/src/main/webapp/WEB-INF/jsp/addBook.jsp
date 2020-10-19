<%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/14
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>添加书籍</title>
</head>
<style>
    body {
        background-color: #1C1C1C;
        background-size: 100%;
        color: #BDC2C8;
    }

</style>
<body>
<form action="/book/addBook" method="post" enctype="multipart/form-data">
    <table align="center" width="500px" border="2px">
        <tr align="center">
            <th colspan="2">添加书籍</th>
        </tr>
        <tr align="center">
            <td>书名:</td>
            <td>
                <input type="text" name="bookName">
            </td>
        </tr>

        <tr align="center">
            <td>作者</td>
            <td>
                <input type="text" name="author">
            </td>
        </tr>

        <tr align="center">
            <td>价格</td>
            <td>
                <input type="text" name="price">
            </td>
        </tr>

        <tr align="center">
            <td>封面</td>
            <td>
                <div class="input-file-box">
                    &nbsp;<input type="file" name="picture" id="uploadfile" multiple>
                </div>
                <div id="img-box"></div>
            </td>
        </tr>

        <tr align="center">
            <td>描述</td>
            <td><textarea name="descr"></textarea>
            </td>
        </tr>

        <tr align="center">
            <td>所属分类</td>
            <td class="cls">请选择分类:&nbsp;&nbsp;
                <select name="classId">
                    <c:forEach items="${classes}" var="bookClass">
                        <option value="${bookClass.id}">${bookClass.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="保存">&nbsp;&nbsp;
                <input type="reset" value="重置">&nbsp;&nbsp;
                <input type="button" value="返回" onclick="back()">
            </td>
        </tr>
    </table>
    <script src="/js/jquery-1.8.3.js"></script>
    <script>
        function back() {
            $.ajax({
                type: "post",
                url: "/html/backStageFrameset.jsp",
                success: function () {
                    alert("返回上一级");
                }
            });
        }

        window.onload = function () {
            var input = document.getElementById("uploadfile");
            var div;
            // 当用户上传时触发事件
            input.onchange = function () {
                readFile(this);
            }
            //处理图片并添加都dom中的函数
            var readFile = function (obj) {
                // 获取input里面的文件组
                var fileList = obj.files;
                //对文件组进行遍历，可以到控制台打印出fileList去看看
                for (var i = 0; i < fileList.length; i++) {
                    var reader = new FileReader();
                    reader.readAsDataURL(fileList[i]);
                    // 当文件读取成功时执行的函数
                    reader.onload = function (e) {
                        div = document.createElement('div');
                        div.innerHTML = '<img src="' + this.result + '" />';
                        document.getElementById("img-box").appendChild(div);
                    }
                }
            }
        }
    </script>
</form>
</body>
</html>
