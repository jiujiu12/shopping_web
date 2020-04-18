<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!DOCTYPE html>
<html lang="zh">
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>订单详情</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mystyle.css">

</head>

<body class="hold-transition skin-red sidebar-mini">

<div class="wrapper">

<!-- 页面头部 -->
<jsp:include page="head.jsp"></jsp:include>
<!-- 页面头部 /-->
<!-- 导航侧栏 -->
<jsp:include page="slideBar.jsp"></jsp:include>

<!-- 内容区域 -->
<div class="content-wrapper">

<!-- 内容头部 -->
<section class="content-header">
    <h1>
        订单管理
        <small>订单详情</small>
    </h1>
    <ol class="breadcrumb right-bread">
        <li><a href="${pageContext.request.contextPath}"><i class="fa fa-dashboard"></i> 首页</a></li>
        <li><a href="${pageContext.request.contextPath}/order/findAll"> 订单管理</a></li>
        <li class="active">订单详情</li>
    </ol>
</section>
<!-- 内容头部 /-->

<!-- 正文区域 -->
<section class="content">

<div class="box box-danger container">
<div class="box-header with-border" style="padding: 10px 0px !important;">
    <h3 class="box-title">订单详情</h3>
</div>

<div class="box-body container-fluid">
<!--tab页-->
<div class="nav-tabs-custom">
<div class="form-horizontal">
<form>
    <div class="form-group">
    <label for="" class="col-sm-2 control-label">商品名称:</label>
    <div class="col-sm-8">
    <input type="text" class="form-control" placeholder="商品名称"
    value="${orderList.goods.goods_name}"
    disabled="disabled">
    </div>
    </div>
    <div class="form-group">
    <label for="" class="col-sm-2 control-label">团长编号:</label>
    <div class="col-sm-3">
    <input type="text" class="form-control" placeholder="团长编号"
    value="${orderList.headman.id}" disabled="disabled">
    </div>
    <label for="" class="col-sm-2 control-label">团长姓名:</label>
    <div class="col-sm-3">
    <input type="text" class="form-control" placeholder="团长姓名"
    value="${orderList.headman.user.username}" disabled="disabled">
    </div>
    </div>
    <div class="form-group">
    <label for="" class="col-sm-2 control-label">团长电话:</label>
    <div class="col-sm-3">
    <input type="text" class="form-control" placeholder="团长电话"
    value="${orderList.headman.user.phone}" disabled="disabled">
    </div>
    <label for="" class="col-sm-2 control-label">金额:</label>
    <div class="col-sm-3">
    <input type="text" class="form-control" placeholder="金额"
    value="${orderList.goods.goods_price}" disabled="disabled">
    </div>
    </div>
    <div class="form-group">
    <label for="" class="col-sm-2 control-label">详细地址:</label>
    <div class="col-sm-8">
    <input type="text" class="form-control" placeholder="详细地址"
    value="${orderList.headman.user.user_address}" disabled="disabled">
    </div>
    </div>
    </form>
    </div>
    <!--tab内容-->
    <div class="tab-content">

    <!-- 汇总表显示内容 -->
    <div class="tab-pane active" id="tab-all">
    <!-- 订单团员明细表 -->
    <table id="dataList"
    class="table table-bordered table-striped table-hover dataTable row container-fluid">
    <thead class="row">
    <!-- 表头 -->
    <tr>
    <th class="text-center">ID</th>
    <th class="text-center">用户名</th>
    <th class="text-center">姓名</th>
    <th class="text-center">电话</th>
    <th class="text-center">购买数量</th>
    <th class="text-center">花费</th>
    <th class="text-center">备注</th>
    </tr>
    <!-- /表头 -->
    </thead>
    <tbody class="row ">

    <tr>
    <td class="text-center">1</td>
    <td class="text-center">linyuan</td>
    <td class="text-center">林园</td>
    <td class="text-center">18834176653</td>
    <td class="text-center">4斤</td>
    <td class="text-center">43</td>
    <td class="text-center"></td>
    </tr>
    <tr>
    <td class="text-center">1</td>
    <td class="text-center">linyuan</td>
    <td class="text-center">林园</td>
    <td class="text-center">18834176653</td>
    <td class="text-center">4斤</td>
    <td class="text-center">43</td>
    <td class="text-center"></td>
    </tr>
    <tr>
    <td class="text-center">1</td>
    <td class="text-center">linyuan</td>
    <td class="text-center">林园</td>
    <td class="text-center">18834176653</td>
    <td class="text-center">4斤</td>
    <td class="text-center">43</td>
    <td class="text-center"></td>
    </tr>
    <tr>
    <td class="text-center">1</td>
    <td class="text-center">linyuan</td>
    <td class="text-center">林园</td>
    <td class="text-center">18834176653</td>
    <td class="text-center">4斤</td>
    <td class="text-center">43</td>
    <td class="text-center"></td>
    </tr>
    <tr>
    <td class="text-center">1</td>
    <td class="text-center">linyuan</td>
    <td class="text-center">林园</td>
    <td class="text-center">18834176653</td>
    <td class="text-center">4斤</td>
    <td class="text-center">43</td>
    <td class="text-center"></td>
    </tr>

    </tbody>
    </table>
    <!-- /-->
    </div>
    </div>
    </div>


    </div>
    </div>

    </section>
    <!-- 正文区域 /-->

    </div>


    <!-- 底部导航 -->
    <jsp:include page="footer.jsp"></jsp:include>

    </div>


    <script src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
    <script>
    $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
    <script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/js/load.js"></script>

    <script>
    $(document).ready(function () {
    // 选择框
    $(".select2").select2();

    // WYSIHTML5编辑器
    $(".textarea").wysihtml5({
    locale: 'zh-CN'
    });

    });
    $(document).ready(function () {

    //起始时间
    $('#datepicker1').datepicker({
    autoclose: true,
    language: 'zh-CN'
    });
    //截止日期
    $('#datepicker2').datepicker({
    autoclose: true,
    language: 'zh-CN'
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
    $(document).ajaxSuccess(function (evt, request, settings) {
    num++;
    if (num == 3) {
    setSidebarActive("order-management");
    }
    });
    // 列表按钮
    $("#dataList td input[type='checkbox']").iCheck({
    checkboxClass: 'icheckbox_square-blue',
    increaseArea: '20%'
    });
    // 全选操作
    $("#selall").click(function () {
    var clicks = $(this).is(':checked');
    if (!clicks) {
    $("#dataList td input[type='checkbox']").iCheck("uncheck");
    } else {
    $("#dataList td input[type='checkbox']").iCheck("check");
    }
    $(this).data("clicks", !clicks);
    });
    });
    </script>
    </body>
    </html>
