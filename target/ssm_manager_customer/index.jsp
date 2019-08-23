<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>登录页面</title>
    <link href="css/a.css" rel="stylesheet">
</head>
<body>

<div  id="body">
    <div id="mycenter">
        <div class="text-center text-info">
            <h2>请登录</h2><br/>
        </div>

        <form action="denglu" method="post"  >
            <div class="text-center">
                <input type="text" name="username" class="mytext form-control" placeholder="请输入用户名" required
                       autofocus/><br/><br/>

                <input type="password" name="password"class="mytext form-control" placeholder="请输入密码" required
                />
                <div class="mycheckbox">
                    <input type="checkbox">记住密码</input>
                </div>
                <br/>
                <input type="submit" value="提交" class="btn btn-success mybutton"/><br/><br/><br/>

            </div>
        </form>

    </div>
</div>
</body>
</html>