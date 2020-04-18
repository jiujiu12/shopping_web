<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
    <base target="_self">
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>一级地址</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

<%--    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>--%>
<%--    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>
    <![endif]-->


    <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="../plugins/morris/morris.css">
    <link rel="stylesheet" href="../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="../plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="../plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="../plugins/select2/select2.css">
    <link rel="stylesheet" href="../plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="../plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="../plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="../plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="../plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="../plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="../plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="head.jsp"></jsp:include>
    <!-- 页面头部 -->

    <!-- 导航侧栏 -->
    <jsp:include page="slideBar.jsp"></jsp:include>
    <!-- 导航侧栏 -->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                地址
                <small>一级地址</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 地址管理</a></li>
                <li><a href="#">地址首页</a></li>
                <li class="active">一级地址</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <f class="box-body">

                    <!-- 数据表格 -->
                    <form class="table-box">

                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <div class="tab-pane" id="tab-model" style="display: inline">

                                        <button type="button" class="btn-def2" data-toggle="modal"
                                                data-target="#address"><i class="fa fa-file-o"></i> 新增地址</button>

                                        <div id="address" class="modal modal-primary" role="dialog">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title">新增省级地址</h4>
                                                    </div>
                                                    <div class="modal-body">

                                                        <div class="box-body">
                                                            <div class="form-horizontal">
                                                                <div class="form-group col-sm-6">
                                                                    <label class="col-sm-4 control-label">ID:</label>
                                                                    <div class="col-sm-8">
                                                                        <input type="text" class="form-control"
                                                                               placeholder="文本"
                                                                               value="1" disabled="disabled">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group col-sm-6">
                                                                    <label class="col-sm-4 control-label">省份:</label>
                                                                    <div class="col-sm-8">
                                                                        <input type="text" class="form-control"
                                                                               placeholder=""
                                                                               value="">
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class=" btn-outline" data-dismiss="modal">确定
                                                        </button>
                                                        <button type="button" class=" btn-outline" data-dismiss="modal">取消
                                                        </button>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>

                                            <!-- /.modal-dialog -->
                                        </div>
                                        <!-- /.modal -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" class="form-control input-sm" placeholder="搜索一级地址名称">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <!--<th class="" style="padding-right:0px;">-->
                                <!--<input id="selall" type="checkbox" class="icheckbox_square-blue">-->
                                <!--</th>-->
                                <th class="text-center" style="padding-left: 0;padding-right: 0">ID</th>
                                <th class="text-center" style="padding-left: 0;padding-right: 0">省份</th>
                                <th class="text-center" style="padding-left: 0;padding-right: 0;width: 300px">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${pageInfo.list}" var="province">
                                <tr>
                                    <!--<td><input name="ids" type="checkbox"></td>-->
                                    <td class="text-center">${province.ID}</td>
                                    <td class="text-center">${province.pro_name}</td>
                                    <td class="text-center" >
                                        <div class="tab-pane" id="tab-model3" style="display: inline">
                                            <button type="button" class="bg-olive2 btn-xs" data-toggle="modal" id="update"
                                                    onclick="openUpdateModal(this)">
                                                修改
                                            </button>
                                        </div>

                                        <div class="tab-pane" id="tab-model2" style="display: inline">
                                            <button type="button" class=" bg-olive2 btn-xs" data-toggle="modal" id="del"
                                                    onclick="openDeleteModal(this)"  style="margin-left: 10px" >
                                                删除
                                            </button>
                                        </div>

                                        <button id="show1" type="button" class=" bg-olive2 btn-xs" style="margin-left: 10px" onclick="location.href='${pageContext.request.contextPath}/city/findById?ID=${province.ID}'">查看下级</button>
                                    </td>
                                </tr>
                            </c:forEach>

                            <!-- 修改模态框 -->
                            <form action="${pageContext.request.contextPath}/province/updatePro" method="post">
                                <div id="cost" class="modal modal-primary" role="dialog">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title">地址详情</h4>
                                            </div>
                                            <div class="modal-body">

                                                <div class="box-body">
                                                    <div class="form-horizontal">
                                                        <div class="form-group col-sm-6">
                                                            <label class="col-sm-4 control-label">ID:</label>
                                                            <div class="col-sm-8">
                                                                <input id="model-name" type="text" class="form-control"
                                                                       placeholder="文本"
                                                                       value="" disabled="disabled" id="id" name="modelID">
                                                            </div>
                                                        </div>

                                                        <div class="form-group col-sm-6">
                                                            <label class="col-sm-4 control-label">省份:</label>
                                                            <div class="col-sm-8">
                                                                <input id="model-value" type="text" class="form-control"
                                                                       placeholder="文本"
                                                                       value="" id="pro" name="modelPro">
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class=" btn-outline" data-dismiss="modal">修改
                                                </button>
                                                <button type="submit" class=" btn-outline" data-dismiss="modal">取消
                                                </button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                </div>
                                <!-- /.modal-dialog -->
                            </form>

                            <!-- 删除模态框 -->
                            <div id="mdel" class="modal modal-primary" role="dialog">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">确认删除</h4>
                                        </div>
                                        <div class="modal-body">

                                            <div class="box-body" style="text-align: center">

                                                <div style="font-size: 18px;margin-bottom: 40px">确定删除？</div>
                                                <button type="button" class=" btn-outline" data-dismiss="modal"
                                                        style="margin-right: 20px">确定
                                                </button>
                                                <button type="button" class=" btn-outline" data-dismiss="modal"
                                                        style="margin-left: 20px">取消
                                                </button>

                                            </div>


                                        </div>

                                    </div>
                                    <!--<div class="modal-footer" style="text-align: center">-->
                                    <!--<button type="button" class="btn btn-outline" data-dismiss="modal"-->
                                    <!--style="margin-right: 15px">确定-->
                                    <!--</button>-->
                                    <!--<button type="button" class="btn btn-outline" data-dismiss="modal"-->
                                    <!--style="margin-left: 15px">取消-->
                                    <!--</button>-->
                                    <!--</div>-->
                                </div>
                                <!-- /.modal-content -->
                            </div>

                            </tbody>
                            <!--
                        <tfoot>
                        <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                        </tr>
                        </tfoot>-->
                        </table>
                        <!--数据列表/-->

                    <!-- 数据表格 /-->


                    </form>
                <!-- /.box-body -->

                <!-- .box-footer-->
                <div class="box-footer">
                    <div class="pull-left">
                        <div class="form-group form-inline">
                            总共${pageInfo.pages}页，共${pageInfo.total}条数据。 每页
                            <select class="form-control" id="changePageSize" onchange="changePageSize()">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option selected>5</option>
                            </select> 条
                        </div>
                    </div>

                    <div class="box-tools pull-right">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/province/findall?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/province/findall?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>
                            <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
                                <li><a href="${pageContext.request.contextPath}/province/findall?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
                            </c:forEach>
                            <li><a href="${pageContext.request.contextPath}/province/findall?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
                            <li>
                                <a href="${pageContext.request.contextPath}/province/findall?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /.box-footer-->



            </div>

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- 底部导航 -->


</div>


<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../plugins/raphael/raphael-min.js"></script>
<script src="../plugins/morris/morris.min.js"></script>
<script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../plugins/knob/jquery.knob.js"></script>
<script src="../plugins/daterangepicker/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="../plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../plugins/fastclick/fastclick.js"></script>
<script src="../plugins/iCheck/icheck.min.js"></script>
<script src="../plugins/adminLTE/js/app.min.js"></script>
<script src="../plugins/treeTable/jquery.treetable.js"></script>
<script src="../plugins/select2/select2.full.min.js"></script>
<script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="../plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="../plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="../plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="../plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="../plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="../plugins/ckeditor/ckeditor.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="../plugins/chartjs/Chart.min.js"></script>
<script src="../plugins/flot/jquery.flot.min.js"></script>
<script src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script src="../plugins/flot/jquery.flot.categories.min.js"></script>
<script src="../plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="../plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="../plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="../plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="../js/load.js"></script>
<script>
    function openUpdateModal(obj) {
        $("#cost").modal('show');
        var currnNode = $(obj).parent().parent();
        var firstNode = currnNode.prev();
        var modelValue = firstNode.html();
        var modelId = firstNode.prev().html();

        $("#model-name").attr("value", modelId);
        $("#model-value").attr("value", modelValue);

    }
    function openDeleteModal(obj) {
        $("#mdel").modal('show');
    }
    function changePageSize() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").val();


        //向服务器发送请求，改变没页显示条数
        location.href = "${pageContext.request.contextPath}/province/findall?page=1&size="
            + pageSize;
    }
    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });


    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }


    $(document).ready(function () {
        // 激活导航位置
        var num = 0;
        $(document).ajaxSuccess(function(evt, request, settings) {
            num++;
            if (num == 3) {
                setSidebarActive("inventory-business-borrow");
            }
        });
    });
</script>
<script>
    document.getElementById("newBorrow").onclick=function () {
        window.location.href="inventory-business-borrow-new.html";
    }
    document.getElementById("newExport").onclick=function () {

    }
    document.getElementById("hisDetial").onclick=function () {
        window.location.href="inventory-business-borrow-history.html";
    }
    document.getElementById("rGoods").onclick=function () {
        window.location.href="inventory-business-backgoods.html";
    }
    document.getElementById("detial").onclick=function () {
        window.location.href="inventory-business-borrow-detial.html"
    }
</script>
</body>

</html>