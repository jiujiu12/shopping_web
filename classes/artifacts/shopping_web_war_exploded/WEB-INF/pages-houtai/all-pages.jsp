<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>首页</title>
    <meta name="keywords" content="AdminLTE2定制版">

    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="plugins/morris/morris.css">
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="plugins/select2/select2.css">
    <link rel="stylesheet" href="plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
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
                首页
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}"><i class="fa fa-dashboard"></i> 首页</a></li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">


            <!-- 统计数值 -->
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>150</h3>

                            <p>新订单</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="order-management.html" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>53</h3>

                            <p>新上架商品</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="goods.html" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3>44</h3>

                            <p>新注册用户</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="user-management.jsp" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>65</h3>

                            <p>新申请团长</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="head-of-community-apply.html" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
            <!-- /.row -->
            <!-- AREA CHART -->
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">销售趋势图</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="chart">
                        <canvas id="areaChart" style="height:250px"></canvas>
                    </div>
                </div>
            </div>



        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- 内容区域 /-->


    <!-- 底部导航 -->
    <jsp:include page="footer.jsp"></jsp:include>

</div>



<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/raphael/raphael-min.js"></script>
<script src="plugins/morris/morris.min.js"></script>
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="plugins/knob/jquery.knob.js"></script>
<script src="plugins/daterangepicker/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<script src="plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="plugins/fastclick/fastclick.js"></script>
<script src="plugins/iCheck/icheck.min.js"></script>
<script src="plugins/adminLTE/js/app.min.js"></script>
<script src="plugins/treeTable/jquery.treetable.js"></script>
<script src="plugins/select2/select2.full.min.js"></script>
<script src="plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="plugins/ckeditor/ckeditor.js"></script>
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="plugins/chartjs/Chart.min.js"></script>
<script src="plugins/flot/jquery.flot.min.js"></script>
<script src="plugins/flot/jquery.flot.resize.min.js"></script>
<script src="plugins/flot/jquery.flot.pie.min.js"></script>
<script src="plugins/flot/jquery.flot.categories.min.js"></script>
<script src="plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="js/load.js"></script>
<script src="js/chart.js"></script>

</body>

</html>
