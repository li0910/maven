<%@ page import="com.qf.service.impl.BookServiceImpl" %>
<%@ page import="com.qf.pojo.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/17
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <title>Bootstrap 101 Template</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
        <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
        <!--[if lt IE 9]>
        <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
        <![endif]-->
    </head>
    <title>Title</title>
</head>
<style>
                            *{margin:0;padding:0;list-style-type:none;}
    a,img{border:0;}

    /* searchbox */
    .searchbox{width:520px;height:80px;margin:40px auto 0 auto;}
    .searchbox ul{ height:35px; width:500px; list-style:none; margin-left:20px}
    .searchbox ul li{ float:left}
    .searchbox ul li a{ float:left; line-height:35px; padding:0 20px; text-decoration:none; color:#000; font-size:14px; font-weight:bold;}
    .searchbox ul li .style1{ background-color:#000; color:#fff}
    .searchbox ul li .style2{ background-color:#f00;color:#fff}
    .searchbox ul li .style3{ background-color:#F90;color:#fff}
    .bodys input{ height:30px;line-height:30px;width:390px;padding:0 10px;float:left;}
    .bodys .one{ border:#000 3px solid}
    .bodys .two{ border:#f00 3px solid}
    .bodys .three{ border:#F90 3px solid}
    .bodys .one1{ background-color:#000; }
    .bodys .two2{ background-color:#f00;}
    .bodys .three3{ background-color:#F90;}
    .bodys button{float:left;border:0;height:36px;width:100px; color:#FFF; line-height:36px;text-align:center;overflow:hidden;}
</style>
<body>

<%--导航条--%>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <!-- 定义汉堡按钮 -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">首页</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/html/login-reg/login.html">管理员登录 <span class="sr-only">(current)</span></a>
                </li>
                <li><a href="/html/customerLogin.html">会员登录</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
                <li><a href="#">退出</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<br><br>

<%--搜索框 可以根据商品和作者查找书籍--%>
<div class="searchbox">
    <ul class="border1">
        <li><a class="style1">书名</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <li><a>作者</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <li><a>分类</a></li>
    </ul>
    <form id="selectForm" action="/book/shopNeed">
        <div class="bodys">
            <p><input type="text" name="queryBookName" value="${queryVo.queryBookName}" class="one" placeholder="输入书名"/>
                <button class="three3">搜索</button>
            </p>
        </div>
    </form>
</div>
<div style="text-align:center;">
</div>

<%--轮播图--%>
<%--align让轮播图片居中显示--%>
<div class="container" align="center">
    <br>
    <br>
    <div class="row">
        <div class="col-md-12">
            <div class="carousel slide" id="carousel-example-generic" data-ride="carousel" data-interval="1500">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="/img/TB1jernacVl614jSZKPXXaGjpXa-1000-320.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="/img/TB1e9indSR26e4jSZFEXXbwuXXa-1000-320.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="/img/TB1plsEd2zO3e4jSZFxXXaP_FXa-1000-320.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="/img/TB15dsMmsKfxu4jSZPfXXb3dXXa-1000-320.jpg" alt="">
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>
</div>
<br>

<nav class="navbar navbar-inverse">
    <%--胶囊导航条--%>
    <div class="container">
        <ul class="nav nav-pills">
            <li class="active" style="text-align: center"><a href="#">全部</a></li>
            <c:forEach items="${classes}" var="aClass">
                <li><a href="/book/findByClassId?classId=${aClass.id}" onclick="selectBook()">${aClass.name}</a></li>
            </c:forEach>
        </ul>
    </div>
</nav>
<br>
<!--    定义容器-->
<div class="container">
    <!--    定义行-->
    <div class="row">
        <!--        定义元素
                        在大显示器一行12个格子
                        在pad上一行六个格子
        -->
        <c:forEach items="${pageInfo.list}" var="book">
            <div class="col-lg-2 col-sm-3 inner">
                <img src="http://localhost:8083/upload/${book.path}" class="img" width="100px" height="100px">
                <font color="red"><h4>￥${book.price}</h4></font>
                <a href="/book/findById?id=${book.id}"><font size="1px">${book.descr}</font></a>
            </div>
        </c:forEach>
    </div>
</div>
<nav class="navbar">
    <ul class="nav nav-pills">
        <center>
            <c:if test="${pageInfo.hasPreviousPage}">
                <a href="/book/shopNeed?pageNum=${pageInfo.navigateFirstPage}">首页</a>
                <a href="/book/shopNeed?pageNum=${pageInfo.prePage}">上一页</a>
                <a href="/book/shopNeed?pageNum=${pageInfo.prePage}">${pageInfo.prePage}</a>
            </c:if>
            <a href="/book/shopNeed?pageNum=${pageInfo.pageNum}">${pageInfo.pageNum}</a>
            <c:if test="${pageInfo.hasNextPage}">
                <a href="/book/shopNeed?pageNum=${pageInfo.nextPage}">${pageInfo.nextPage}</a>
                <a href="/book/shopNeed?pageNum=${pageInfo.nextPage}">下一页</a>
                <a href="/book/shopNeed?pageNum=${pageInfo.pages}">末页</a>
            </c:if>
        </center>
    </ul>
</nav>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
<script type="text/javascript" src="/html/login-reg/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">

    $(function () {
        $(".bodys p").not(":first").hide();
        $(".searchbox ul li").mouseover(function () {
            var index = $(this).index();
            if (index == 0) {
                $(this).find("a").addClass("style1");
                $("li").eq(1).find("a").removeClass("style2");
                $("li").eq(2).find("a").removeClass("style3");
            }
            if (index == 1) {
                $(this).find("a").addClass("style2");
                $("li").eq(0).find("a").removeClass("style1");
                $("li").eq(2).find("a").removeClass("style3");
            }
            if (index == 2) {
                $(this).find("a").addClass("style3");
                $("li").eq(0).find("a").removeClass("style1");
                $("li").eq(1).find("a").removeClass("style2");
            }
            var index = $(this).index();
            $(".bodys p").eq(index).show().siblings().hide();
        });
    });

</script>
</html>