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
        <h1>收费标准管理
        </h1>
        <ol class="breadcrumb">
            <li><a href="/"><i class="fa fa-circle-o"></i>首页</a></li>
            <li class="active">收费标准管理</li>
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
                            <button id="modifyBtn" type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-edit"><i class="fa fa-edit"></i> 编辑</button>
                        </div>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table  class="table table-bordered table-hover">
                        <tr>
                            <th>图片</th>
                        </tr>

                            <tbody id="tbody">

                            </tbody>

                        <tr style="width: 800px;">
                            <th style="width: 800px;">备注</th>
                        </tr>
                            <tbody id="tbody2">

                            </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <input id="pageBeanData" type="hidden" value=""/>
</div>

<!-- *********************************编辑月嫂********************************** -->
<div class="modal fade" id="modal-edit">
    <div class="modal-dialog"  style="width:800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">编辑月嫂服务</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" >
                        <form role="form" id="editForm">
                            <div class="box-body">
                                <input type="hidden" class="form-control" name="id">
                                <input type="hidden" class="form-control" name="flow">
                                <input type="hidden" class="form-control" name="morning">
                                <input type="hidden" class="form-control" name="noon">
                                <input type="hidden" class="form-control" name="afternoon">
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="pic" class="text-red">图片</label>
                                    <input type="text" class="form-control" id="pic" name="pic">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="info" class="text-red">备注</label>
                                    <input type="text" class="form-control" id="info" name="info">
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

    show()
    //显示数据
    function show(){
        $.ajax({
            url: '${pageContext.request.contextPath}/Advertising/all',
            type: 'POST',
            dataType:"json",
            success : function(data){
                if (true) {
                    var list=eval(data);
                    var innerHtml="";
                    var innerHtml2="";
                    console.log(data);
                    var obj = list[0];
                    innerHtml += "<tr><td></td><td>"+
                        "<img src=\"" + getStr(obj.pic) + "\"width=1000px height=209px/> "+ "</td></tr>" ;
                    $("#tbody").html(innerHtml);
                    innerHtml2+="<tr><td></td><td style='word-break:break-all; word-wrap:break-word;'>"+getStr(obj.info) + "</td></tr>";
                    $("#tbody2").html(innerHtml2);
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
    //编辑
    $("#editBtn").click(function(){
        var matron=$('#editForm').serializeObject();
        alert(JSON.stringify(matron));
        $.ajax({
            url: "${pageContext.request.contextPath}/Advertising/update",
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
    //查询数据回显
    $("#modifyBtn").click(function(){
            $.get("${pageContext.request.contextPath}/Advertising/findById?id=1",function(data){
                var matron=eval(data);
                $("#editForm :input[name='id']").val(matron.obj.id);
                $("#editForm :input[name='morning']").val(matron.obj.morning);
                $("#editForm :input[name='noon']").val(matron.obj.noon);
                $("#editForm :input[name='afternoon']").val(matron.obj.afternoon);
                $("#editForm :input[name='flow']").val(matron.obj.flow);
                $("#editForm :input[name='pic']").val(matron.obj.pic);
                $("#editForm :input[name='info']").val(matron.obj.info);
            },"json");
    });
    //刷新
    $("#reloadBtn").click(function(){
        var currentPage = 1;
        $("#currentPage").text(currentPage);
        show(currentPage,10);
    });

</script>
</body>
</html>