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
        <h1>月嫂展示界面
        </h1>
        <ol class="breadcrumb">
            <li><a href="/"><i class="fa fa-circle-o"></i>首页</a></li>
            <li class="active">月嫂展示管理</li>
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
                            <th>姓名</th>
                            <th>星级</th>
                            <th>年龄</th>
                            <th>地址</th>
                            <th>照片</th>
                            <th>标签</th>
                            <th>价格</th>
                            <th>评价</th>

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
<!-- **********************************新增月嫂********************************* -->

<div class="modal" id="modal-add">
    <div class="modal-dialog"  style="width:800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">新增月嫂</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" >
                        <form role="form" id="addForm" method="post">
                            <div class="box-body">
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="name" class="text-red">月嫂名字</label>
                                    <input type="text" class="form-control" id="name" name="name">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="star"  class="text-red">星级</label></br>
                                    <select name="star">
                                        <option value ="1星月嫂">1星月嫂</option>
                                        <option value ="2星月嫂">2星月嫂</option>
                                        <option value ="3星月嫂">3星月嫂</option>
                                        <option value ="4星月嫂">4星月嫂</option>
                                        <option value ="5星月嫂">5星月嫂</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="year"  class="text-red">年龄</label></br>
                                    <input type="text" class="form-control" id="year" name="year">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="address"  class="text-red">地址籍贯</label></br>
                                    <input type="text" class="form-control" id="address" name="address">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="photo"  class="text-red">照片</label>
                                    <input type="text" class="form-control" id="photo" name="photo">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="photo"  class="text-red">标签</label>
                                    <input type="text" class="form-control" id="sign" name="sign">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="price"  class="text-red">价格</label>
                                    <input type="text" class="form-control" id="price" name="price">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="evaluation"  class="text-red">评价</label>
                                    <input type="text" class="form-control" id="evaluation" name="evaluation">
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

<!-- *********************************编辑月嫂********************************** -->
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
                                    <label for="name" class="text-red">月嫂名字</label>
                                    <input type="text" class="form-control" id="name" name="name">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="star"  class="text-red">星级</label></br>
                                    <select name="star">
                                        <option value ="1星月嫂">1星月嫂</option>
                                        <option value ="2星月嫂">2星月嫂</option>
                                        <option value ="3星月嫂">3星月嫂</option>
                                        <option value ="4星月嫂">4星月嫂</option>
                                        <option value ="5星月嫂">5星月嫂</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="year"  class="text-red">年龄</label></br>
                                    <input type="text" class="form-control" id="year" name="year">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="address"  class="text-red">地址籍贯</label></br>
                                    <input type="text" class="form-control" id="address" name="address">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="photo"  class="text-red">照片</label>
                                    <input type="text" class="form-control" id="photo" name="photo">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="photo"  class="text-red">标签</label>
                                    <input type="text" class="form-control" id="sign" name="sign">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="price"  class="text-red">价格</label>
                                    <input type="text" class="form-control" id="price" name="price">
                                </div>
                                <div class="form-group col-md-3" style="padding-left:0">
                                    <label for="evaluation"  class="text-red">评价</label>
                                    <input type="text" class="form-control" id="evaluation" name="evaluation">
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
            url: '${pageContext.request.contextPath}/item/all',
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
                            innerHtml += "<tr onclick='selected("+i+")'><td><input id='id"+i+"' type='checkbox' value="+obj.id+" name='checkBox'/></td><td>" + getStr(obj.name) + "</td><td>" + getStr(obj.star) + "</td><td>" + getStr(obj.year) +
                                "</td><td>" + getStr(obj.address) + "</td><td>" + "<img src=\"" + getStr(obj.photo) + "\"width=100px height=100px/>" +
                                "</td><td>" + getStr(obj.sign) + "</td><td>" + getStr(obj.price) + "</td><td>" + getStr(obj.evaluation) + "</td></tr>";
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

    //添加月嫂
    $("#addmatronBtn").click(function(){
        //验证表单
        if (checkForm()) {
            var matron=$('#addForm').serializeObject();
            alert(JSON.stringify(matron));
            $.ajax({
                url: "${pageContext.request.contextPath}/item/add",
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
            url: "${pageContext.request.contextPath}/item/update",
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
        var star=checkNotEmpty("star");
        var year=checkNotEmpty("year");
        var address=checkNotEmpty("address");
        var photo=checkNotEmpty("photo");
        return name&&star&&year&&address&&photo;
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
            $.get("${pageContext.request.contextPath}/item/findById?id="+$(this).val(),function(data){
                var matron=eval(data);
                $("#editForm :input[name='id']").val(matron.obj.id);
                $("#editForm :input[name='name']").val(matron.obj.name);
                $("#editForm :input[name='star']").val(matron.obj.star);
                $("#editForm :input[name='year']").val(matron.obj.year);
                $("#editForm :input[name='address']").val(matron.obj.address);
                $("#editForm :input[name='photo']").val(matron.obj.photo);
                $("#editForm :input[name='sign']").val(matron.obj.sign);
                $("#editForm :input[name='price']").val(matron.obj.price);
                $("#editForm :input[name='evaluation']").val(matron.obj.evaluation);

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
            $.get("${pageContext.request.contextPath}/item/delectById?id="+$(this).val(),function(data){
                alert(eval(data).obj);
                window.location.reload();
            },"json");
        });
    });

</script>
</body>
</html>