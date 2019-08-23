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
    <script>
        $(function () {
            // $('#myModal').on('show.bs.modal', function (event) {
            //   var button = $(event.relatedTarget);
            //
            //      var id = button.closest('tr').find('td').eq(1).text();
            //       alert(id);
            //   // var modal = $(this)
            //   // modal.find('.modal-title').text('New message to ' + recipient)
            //   // modal.find('.modal-body input').val(recipient)
            //
            //   //   window.location.href ='/customer/delete';
            // });
            $('#myModal').on('show.bs.modal', function (event) {
                $("textarea[name = refuseTextareaContext]").innerHTML = "";
                var btnThis = $(event.relatedTarget); //触发事件的按钮
                var modal = $(this);  //当前模态框

                // currentData = btnThis.closest('tr').find('th').eq(0).text();//获取某一列的内容eq后面表示列数

                modal.find('#id').val(btnThis.closest('tr').find('th').eq(0).text());

                modal.find('#id').attr("readOnly",true);
                modal.find('#name').val(btnThis.closest('tr').find('th').eq(1).text());
                modal.find('#telephone').val(btnThis.closest('tr').find('th').eq(2).text());
                modal.find('#address').val(btnThis.closest('tr').find('th').eq(3).text());
                modal.find('#remark').val(btnThis.closest('tr').find('th').eq(4).text());



            });
            $('#myModal1').on('show.bs.modal', function (event) {
                $("textarea[name = refuseTextareaContext]").innerHTML = "";
                var btnThis = $(event.relatedTarget); //触发事件的按钮
                var modal = $(this);  //当前模态框

                // currentData = btnThis.closest('tr').find('th').eq(0).text();//获取某一列的内容eq后面表示列数


            });
        });
        function Delete(id) {
            if (!id) {
                alert("error")
            } else {

                $("#dbtn").click(function () {

                    $.ajax({
                        type: "post",
                        url: "/customer/deleteCustomer",
                        data: "id=" + id,
                        success: function (data) {
                            $("body").html(data);
                        }
                    });
                });

            }
        }
    </script>
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
        <font size="6" >客户列表信息页面</font>
    </div>
</div>
<hr id="hr1"/>


<div id="form1">
    <form action="/customer/findCustomer" class="form-inline" role="form">

        <div class="form-group textdiv">

            <input type="text" class="form-control mytext" name="name" placeholder="客户姓名">
        </div>

        <div class="form-group textdiv">

            <input type="text"  class="form-control mytext"  name="tel" placeholder="客户电话">
        </div>

        <button type="submit" class="btn btn-default" >查找</button>
    </form>
</div>

<div id="mycenter">

    <table  id="tb1" class="table table-hover table-striped" >
        <thead>
        <tr>
            <th>客户编号</th>
            <th>姓名</th>
            <th>电话</th>
            <th>住址</th>
            <th>备注</th>
            <th>操作</th>
        </tr>
        </thead>

        <tbody>
            <c:forEach var="item" items="${page.beanlist}" >
                <tr >
                    <th>${item.id}</th>
                    <th>${item.name}</th>
                    <th>${item.telephone}</th>
                    <th>${item.address}</th>
                    <th>${item.remark}</th>
                    <th>
                        <button  class="btn-xs btn-warning" data-toggle="modal" data-target="#myModal"  >修改</button>
                        <button  class="btn-xs btn-danger" data-toggle="modal" data-target="#myModal1" onclick="Delete(${item.id})">删除</button>
                    </th>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">修改数据</h4>
                </div>
                <div class="modal-body">


                    <form action="/customer/updateCustomer" method="post" class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="id" class="col-sm-2 control-label">客户编号</label>
                            <div class="col-sm-10">
                                <input type="text"   class="form-control" name="id" id="id" placeholder="客户编号">
                            </div>
                        </div>
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
        </div></div>


    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModal1Label">删除数据</h4>
                </div>
                <div class="modal-body">
                    <h4>确定要删除数据吗?</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal"id="dbtn">确定</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>

                </div>
            </div>
        </div>
    </div>
</div>

<div id="page">

<%--    <c:if test="${page.pageIndex>1}">--%>
<%--        <a href="/customer/goPage?pageNumber=1">首页</a>--%>
<%--        <a href="/customer/goPage?pageNumber=${page.pageIndex-1}">上一页</a>--%>
<%--    </c:if>--%>
<%--    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>



<%--    ================================================--%>
    <c:choose>
        <c:when test="${page.pageCount<5}">
            <c:set var="begin" value="1"></c:set>
            <c:set var="end" value="${page.pageCount}"></c:set>
        </c:when>
        <c:when test="${page.pageIndex<=3}">
            <c:set var="begin" value="1"></c:set>
            <c:set var="end" value="5"></c:set>
        </c:when>
        <c:when test="${page.pageIndex>3}">
            <c:set var="begin" value="${page.pageIndex-2}"></c:set>
            <c:set var="end" value="${page.pageIndex+2}"></c:set>
            <c:if test="${page.pageIndex+2>=page.pageCount}">
                <c:set var="begin" value="${page.pageCount-4}"></c:set>
                <c:set var="end" value="${page.pageCount}"></c:set>
            </c:if>
        </c:when>
    </c:choose>

    <ul class="pagination">
        <c:if test="${page.pageIndex>1}">--%>
            <li>
                <a href="/customer/goPage?pageNumber=1">首页</a>
                <a href="/customer/goPage?pageNumber=${page.pageIndex-1}">上一页</a>
            </li>
        </c:if>



        <c:forEach begin="${begin}" end="${end}" var="index">
            <c:if test="${page.pageIndex==index}">
<%--                当前页面class=active--%>
               <li class="active"> <a href="/customer/goPage?pageNumber=${index}">${index}</a></li>
            </c:if>
            <c:if test="${page.pageIndex!=index}">
               <li><a href="/customer/goPage?pageNumber=${index}">${index}</a></li>
            </c:if>
        </c:forEach>


        <c:if test="${page.pageIndex<page.pageCount}">
          <li>  <a href="/customer/goPage?pageNumber=${page.pageIndex+1}">下一页</a></li>
            <li>   <a href="/customer/goPage?pageNumber=${page.pageCount}">末页</a></li>
        </c:if>



    </ul>


</div>

</body>
</html>
