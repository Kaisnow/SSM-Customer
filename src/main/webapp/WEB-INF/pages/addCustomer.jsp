<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/24
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <title>添加客户</title>
    <link href="/css/b.css" rel="stylesheet">
  <style>
    #body
    {
        background-color: #96b97d;
        height: 1000px;
    }
    #mycenter
    {
        /*background-color: white;*/
        /* border: 1px solid black;*/
        width: 500px;
        margin-top: 300px;
        margin-left: auto;
        margin-right: auto;
    }
    .mytext{
        width: 300px;
        margin-left: auto;
        margin-right: auto;
    }
    .mybutton{
        width: 150px;
    }
    #form-center{
        text-align: center;
    }
</style>
</head>
<body>

<div class="container-fluid" id="body">
    <div id="mycenter">
        <div class="text-center text-info">
            <h2>添加用户信息</h2><br/>
        </div>

        <form action="/customer/addCustomer" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="name" class="col-sm-2 control-label">用户名</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="name" id="name" placeholder="用户名">
                </div>
            </div>
            <div class="form-group">
                <label for="telephone" class="col-sm-2 control-label">电话</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="telephone" id="telephone" placeholder="电话">
                </div>
            </div>
            <div class="form-group">
                <label for="address" class="col-sm-2 control-label">地址</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="address" id="address" placeholder="地址">
                </div>
            </div>
            <div class="form-group">
                <label for="remark" class="col-sm-2 control-label">备注</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="remark" id="remark" placeholder="备注">
                </div>
            </div>



            <div class="form-group">
                <div class="col-sm-offset-5 col-sm-10">
                    <input type="submit" class="btn btn-success" value="提交"/>
                    <input type="reset" class="btn btn-warning" value="重置"/>
                </div>
            </div>
        </form>


    </div>
</div>

</body>
</html>