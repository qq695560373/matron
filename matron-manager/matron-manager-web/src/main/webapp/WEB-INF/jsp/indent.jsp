<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/jstl.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- jQuery 3 -->
    <script src="${path}/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="${path}/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${path}/adminlte/dist/js/adminlte.min.js"></script>
    <script src="${path}/adminlte/bower_components/ckeditor/ckeditor.js"></script>
</head>
<body onload="show(1,10)">
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>订单管理
        </h1>
        <ol class="breadcrumb">
            <li><a href="/"><i class="fa fa-circle-o"></i>首页</a></li>
            <li class="active">订单管理</li>
        </ol>
    </section>


    <!-- Main content -->
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <div class="btn-group">
                            <button id="reloadBtn" class="btn btn-default"><i class="fa fa-refresh"></i> 刷新</button>
                            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-add"><i class="fa fa-plus"></i> 新增</button>
                            <button id="modifyBtn" type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-edit"><i class="fa fa-edit"></i> 编辑</button>
                            <button id="removeBtn" type="button" class="btn btn-default"><i class="fa fa-trash-o"></i>删除</button>
                        </div>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table  class="table table-bordered table-hover">
                        <tr>
                            <th><input type="checkbox" id="allSel"></th>
                            <th>订单编号</th>
                            <th>用户id</th>
                            <th>月嫂id</th>
                            <th>创建日期</th>
                            <th>结束日期</th>
                            <th>交易金额</th>
                            <th>订单状态(1未付款，2已付款，3未发货，4已发货，5交易成功，6交易关闭)</th>

                        </tr>
                        <tbody id="tbody">

                        </tbody>
                    </table>
                </div>
                <div class="box-footer clearfix">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        <li><a href="javascript:void(0);" id="prePageBtn">&laquo;</a></li>
                        <li><a href="javascript:void(0);" id="currentPage">1</a></li>
                        <li><a href="javascript:void(0);" id="nextPageBtn">&raquo;</a></li>
                        <li><a href="javascript:void(0);" id="firstPageBtn">首页</a></li>
                        <li><a href="javascript:void(0);" id="lastPageBtn">尾页</a></li>
                        <li><a href="javascript:void(0);" id="totalPage">共0页</a></li>
                        <li><a href="javascript:void(0);" id="totalCount">总计:0条</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <input id="pageBeanData" type="hidden" value=""/>
</div>
<!-- **********************************新增订单********************************* -->

<div class="modal" id="modal-add">
    <div class="modal-dialog"  style="width:800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">新增用户</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" >
                        <form role="form" id="addForm" method="post">
                            <div class="box-body">
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="name" class="text-red">用户姓名</label>
                                    <input type="text" class="form-control" id="name" name="name">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="nickname" class="text-red">用户昵称</label>
                                    <input type="text" class="form-control" id="nickname" name="nickname">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="username"  class="text-red">账号</label></br>
                                    <input type="text" class="form-control" id="username" name="username">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="pass"  class="text-red">密码</label></br>
                                    <input type="text" class="form-control" id="pass" name="pass">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="ismatron"  class="text-red">是否月嫂</label></br>
                                    <select name="ismatron">
                                        <option value ="1">是</option>
                                        <option value ="0">否</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="phone"  class="text-red">手机</label>
                                    <input type="text" class="form-control" id="phone" name="phone">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="email"  class="text-red">邮箱</label>
                                    <input type="text" class="form-control" id="email" name="email">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="permission"  class="text-red">权限级别</label></br>
                                    <select name="permission">
                                        <option value ="1">普通用户</option>
                                        <option value ="2">月嫂用户</option>
                                        <option value ="3">管理人员</option>
                                    </select>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </form>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
            <div class="modal-footer">
                <button id="addmatronBtn" type="button" class="btn btn-default pull-right" data-dismiss="modal">提交</button>
                <button type="button" class="btn btn-default pull-right" data-dismiss="modal">关闭</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- *********************************编辑订单  ********************************** -->
<div class="modal fade" id="modal-edit">
    <div class="modal-dialog"  style="width:800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">编辑月嫂</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" >
                        <form role="form" id="editForm">
                            <div class="box-body">
                                <input type="hidden" class="form-control" name="id">
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="name" class="text-red">用户姓名</label>
                                    <input type="text" class="form-control" id="name" name="name">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="nickname" class="text-red">用户昵称</label>
                                    <input type="text" class="form-control" id="nickname" name="nickname">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="username"  class="text-red">账号</label></br>
                                    <input type="text" class="form-control" id="username" name="username">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="pass"  class="text-red">密码</label></br>
                                    <input type="text" class="form-control" id="pass" name="pass">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="ismatron"  class="text-red">是否月嫂</label></br>
                                    <select name="ismatron">
                                        <option value ="1">是</option>
                                        <option value ="0">否</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="phone"  class="text-red">手机</label>
                                    <input type="text" class="form-control" id="phone" name="phone">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="email"  class="text-red">邮箱</label>
                                    <input type="text" class="form-control" id="email" name="email">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="permission"  class="text-red">权限级别</label></br>
                                    <select name="permission">
                                        <option value ="1">普通用户</option>
                                        <option value ="2">月嫂用户</option>
                                        <option value ="3">管理人员</option>
                                    </select>
                                </div>
                            </div>
                            <!--/.box-body-->
                        </form>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
            <div class="modal-footer">
                <button id="editBtn" type="button" class="btn btn-default pull-right" data-dismiss="modal">修改 </button>
                <button type="button" class="btn btn-default pull-right" data-dismiss="modal">关闭</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>-->

<!-- ********************************js*********************************** -->
<script type="text/javascript">
    var num = {
        value: 0
    };
    show(1,10);
    //显示数据
    function show(currentPage,pageSize){
        var params = 'currentPage='+currentPage+'&pageSize='+pageSize;
        $.ajax({
            url: '${pageContext.request.contextPath}/indent/all',
            type: 'POST',
            data: params,
            dataType:"json",
            success : function(data){
                if (true) {
                    var list=eval(data);
                    var innerHtml="";
                    console.log(data);
                    for(var i=0;i<list.length;i++){
                        if(i>=(currentPage-1)*pageSize&&i<currentPage*pageSize) {
                            var obj = list[i];
                            innerHtml += "<tr onclick='selected("+i+")'><td><input id='id"+i+"' type='checkbox' value="+obj.id+" name='checkBox'/></td><td>" +
                                getStr(obj.id) + "</td><td>" +
                                getStr(obj.userid) + "</td><td>" +
                                getStr(obj.matronid) + "</td><td>" +
                                getStr(obj.ctime) + "</td><td>" +
                                getStr(obj.etime) + "</td><td>" +
                                getStr(obj.price) + "</td><td>" +
                                getStr(obj.status) + "</td></tr>";
                        }
                    }

                    $("#tbody").html(innerHtml);
                    //$("#currentPage").text(json.obj.currentPage);
                    $("#totalPage").text("共"+Math.ceil(list.length/10)+"页");
                    num.value = Math.ceil(list.length/10);
                    $("#totalCount").text("总计:"+list.length+"条");
                }
            },
            error : function(data){
                alert("服务器繁忙，请稍后重试！");
            }
        });
    }

    function getStr(str){
        if(str==null){
            return "";
        }
        return str;
    }

    //将表单转换成json
    $.fn.serializeObject = function(){
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
            if (o[this.name]) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };

    //添加
    $("#addmatronBtn").click(function(){
        //验证表单
        if (checkForm()) {
            var matron=$('#addForm').serializeObject();
            alert(JSON.stringify(matron));
            $.ajax({
                url: "${pageContext.request.contextPath}/user/add",
                type: "POST",
                data: JSON.stringify(matron),
                dataType:"json",
                contentType:'application/json;charset=UTF-8',
                success: function (data) {
                    var json = eval(data);
                    alert(json.msg);
                    window.location.reload();
                },
                error: function (data) {
                    alert(json.msg);
                }
            });
        }else{
            alert("表单中必填选项的内容不能为空！");
        }

    });

    //编辑
    $("#editBtn").click(function(){
        var matron=$('#editForm').serializeObject();
        alert(JSON.stringify(matron));
        $.ajax({
            url: "${pageContext.request.contextPath}/user/update",
            type: "POST",
            data: JSON.stringify(matron),
            dataType:"json",
            contentType:'application/json;charset=UTF-8',
            success: function (data) {
                var json = eval(data);
                alert(json.msg);
                window.location.reload();
            },
            error: function (data) {
                alert(json.msg);
            }
        });

    });

    //验证表单函数
    function checkForm(){
        //检查姓名是否为空
        var name=checkNotEmpty("name");
        //检查姓名是否为空
        var nickname=checkNotEmpty("nickname");
        var username=checkNotEmpty("username");
        var password=checkNotEmpty("password");
        var phone=checkNotEmpty("phone");
        var email=checkNotEmpty("email");
        return name&&nickname&&username&&password&&phone&&email;
    }
    //校验表单元素不能为空
    function checkNotEmpty(id){
        var text=$("#id").val();
        if(text=="") {
            //说明为空
            return false;
        }else{
            return true;
        }
    }

    //全选，给全选设置点击事件
    $("#allSel").click(function(){
        if (this.checked) {
            $('input[name="checkBox"]').attr("checked",true);
        } else{
            $('input[name="checkBox"]').each(function(){
                $('input[name="checkBox"]').attr("checked",false);
            });
        }
    });

    //查询数据回显
    $("#modifyBtn").click(function(){
        $('input[name="checkBox"]:checked').each(function(){
            $.get("${pageContext.request.contextPath}/user/findById?id="+$(this).val(),function(data){
                var matron=eval(data);
                $("#editForm :input[name='id']").val(matron.obj.id);
                $("#editForm :input[name='name']").val(matron.obj.name);
                $("#editForm :input[name='nickname']").val(matron.obj.nickname);
                $("#editForm :input[name='username']").val(matron.obj.username);
                $("#editForm :input[name='pass']").val(matron.obj.pass);
                $("#editForm :input[name='password']").val(matron.obj.password);
                $("#editForm :input[name='ismatron']").val(matron.obj.ismatron);
                $("#editForm :input[name='phone']").val(matron.obj.phone);
                $("#editForm :input[name='email']").val(matron.obj.email);
                $("#editForm :input[name='permissionid']").val(matron.obj.permissionid);

            },"json");
        });
    });


    //上一页
    $("#prePageBtn").click(function(){

        var currentPage = Number($("#currentPage").text())-1;
        if(currentPage == 0){
            currentPage = 1;
            alert("首页啦 ʅ（´◔౪◔）ʃ");
        }
        $("#currentPage").text(currentPage);
        show(currentPage,10);
    });
    //下一页
    $("#nextPageBtn").click(function(){

        var currentPage = Number($("#currentPage").text())+1;
        var totalPage = num.value;
        if(currentPage > totalPage){
            currentPage = totalPage;
            alert("最后一页啦，别点啦  (¯(∞)¯)")
        }
        $("#currentPage").text(currentPage);
        show(currentPage,10);
    });
    //首页
    $("#firstPageBtn").click(function(){
        var currentPage = 1;
        $("#currentPage").text(currentPage);
        show(currentPage,10);
    });
    //刷新
    $("#reloadBtn").click(function(){
        var currentPage = 1;
        $("#currentPage").text(currentPage);
        show(currentPage,10);
    });
    //尾页
    $("#lastPageBtn").click(function(){
        var currentPage = num.value;
        $("#currentPage").text(currentPage);
        show(currentPage,10);
    });
    //删除
    $("#removeBtn").click(function(){
        $('input[name="checkBox"]:checked').each(function(){
            $.get("${pageContext.request.contextPath}/user/delectById?id="+$(this).val(),function(data){
                alert(eval(data).obj);
                window.location.reload();
            },"json");
        });
    });

</script>
</body>
</html>