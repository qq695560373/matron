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
        <h1>回答列表
        </h1>
        <ol class="breadcrumb">
            <li><a href="/"><i class="fa fa-circle-o"></i>首页</a></li>
            <li class="active">回答列表</li>
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
                            <button id="removeBtn" type="button" class="btn btn-default"><i class="fa fa-trash-o"></i>删除</button>
                        </div>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table  class="table table-bordered table-hover">
                        <tr>
                            <th><input type="checkbox" id="allSel"></th>
                            <th>题目</th>
                            <th>答案</th>
                            <th>用户</th>
                            <th>点赞数</th>
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

<!-- *********************************编辑月嫂********************************** -->
<

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
            url: '${pageContext.request.contextPath}/answer/all',
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
                                getStr(obj.qid) + "</td><td>" +
                                getStr(obj.answer) + "</td><td>" +
                                getStr(obj.userid) + "</td><td>" +
                                getStr(obj.support) + "</td>></tr>";
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

    //验证表单函数
    function checkForm(){
        //检查姓名是否为空
        var name=checkNotEmpty("title");
        //检查姓名是否为空
        var nickname=checkNotEmpty("num");
        var username=checkNotEmpty("topic");
        var password=checkNotEmpty("userid");
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
            $.get("${pageContext.request.contextPath}/question/findById?id="+$(this).val(),function(data){
                var matron=eval(data);
                $("#editForm :input[name='id']").val(matron.obj.id);
                $("#editForm :input[name='title']").val(matron.obj.title);
                $("#editForm :input[name='num']").val(matron.obj.num);
                $("#editForm :input[name='num']").val(matron.obj.topic);
                $("#editForm :input[name='num']").val(matron.obj.time);
                $("#editForm :input[name='num']").val(matron.obj.userid);


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
            $.get("${pageContext.request.contextPath}/question/delectById?id="+$(this).val(),function(data){
                alert(eval(data).obj);
                window.location.reload();
            },"json");
        });
    });

</script>
</body>
</html>