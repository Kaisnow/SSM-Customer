<%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2019/7/24
Time: 15:15
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>

    <meta charset="utf-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <title>查看客户</title>
    <link href="/css/b.css" rel="stylesheet">
    <script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
    <link href="/css/bootstrap.css" rel="stylesheet">
    <script src="/js/bootstrap.js"></script>

</head>
<body>


<div class="header">

    <div class="header_elem">SSM整合</div>

    <div class="header_elem">
        <a href="/customer/toAddCustomer">增加客户信息</a>
    </div>

    <div class="header_elem">
        <a href="/customer/findAll">分页查询</a>
    </div>

</div>

<div id="information">
    <div id="font1">
        <font size="6" >${message}</font>
    </div>
</div>






</body>
</html>
