<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!DOCTYPE html>
<html lang="zh">
<head>
	<!-- 页面meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>被投诉用户管理</title>
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
				投诉管理
			</h1>
			<ol class="breadcrumb right-bread">
				<li><a href="${pageContext.request.contextPath}"><i class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="${pageContext.request.contextPath}/user/findAll"> 用户管理</a></li>
				<li class="active"> 投诉管理</li>
			</ol>
		</section>
		<!-- 内容头部 /-->

		<!-- 正文区域 -->
		<section class="content">

			<div class="box box-danger container">
				<div class="box-header with-buser" style="padding: 10px 0px !important;">
					<h3 class="box-title">被投诉用户信息</h3>
				</div>

				<div class="box-body container-fluid">
					<br/>
					<!--工具栏-->
					<div class="row">
						<div class="pull-left">
							<div class="form-group form-inline ">
								<div class="btn-group">
									<button id="refreshSupplier" type="button" class="btn btn-default" title="刷新"><i
											class="fa fa-refresh"></i>
										刷新
									</button>
									<button type="button" class="btn btn-default" title="导出"><i
											class="fa fa-file-excel-o"></i> 导出
									</button>
								</div>
							</div>
						</div>
					</div>
					<!--工具栏/-->

						<div class="tab-content">

							<!-- 汇总表显示内容 -->
							<div class="tab-pane active" id="tab-all">
								<!-- 用户明细表 -->
								<table id="dataList"
									   class="table table-busered table-striped table-hover dataTable row container-fluid">
									<thead class="row">
									<!-- 表头 -->
									<tr>
										<th class="text-center">ID</th>
										<th class="text-center">用户ID</th>
										<th class="text-center">用户名</th>
										<th class="text-center">用户姓名</th>
										<th class="text-center">电话</th>
										<th class="text-center">时间</th>
										<th class="text-center">投诉原因</th>
										<th class="text-center">操作</th>
									</tr>
									<!-- /表头 -->
									</thead>
									<tbody class="row ">

									<c:forEach items="${pageInfo.list}" var="coms">
										<c:if test="${empty coms}">
											<p class="text-center">暂无数据！</p>
										</c:if>
										<tr>
											<td class="text-center">${coms.id }</td>
											<td class="text-center">${coms.user.id }</td>
											<td class="text-center">${coms.user.username}</td>
											<td class="text-center">${coms.user.real_name}</td>
											<td class="text-center">${coms.user.phone}</td>
											<td class="text-center">${coms.user.loginTimeStr}</td>
											<td class="text-center">${coms.reason}</td>
											<td class="text-center">
												<button type="button" class="bg-olive2 btn-xs" onclick="location.href='${pageContext.request.contextPath}/user/saveStatusNormal?id=${coms.user.id}'">启用</button>
												<button type="button" class="bg-olive2 btn-xs" onclick="location.href='${pageContext.request.contextPath}/user/saveStatusAbnormal?id=${coms.user.id}'">禁用</button>
											</td>
										</tr>

									</c:forEach>

									</tbody>
								</table>
								<!-- /-->
							</div>
						</div>
					</div>

				<!-- .box-footer-->
				<div class="box-footer">
					<div class="pull-left">
						<div class="form-group form-inline">
							总共2页，共10 条数据。 每页
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
								<a href="${pageContext.request.contextPath}/user/findAll?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a>
							</li>
							<li><a href="${pageContext.request.contextPath}/user/findAll?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>
							<c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
								<li><a href="${pageContext.request.contextPath}/user/findAll?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
							</c:forEach>
							<li><a href="${pageContext.request.contextPath}/user/findAll?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
							<li>
								<a href="${pageContext.request.contextPath}/user/findAll?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a>
							</li>
						</ul>
					</div>

				</div>
				<!-- /.box-footer-->


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
				setSidebarActive("user-management");
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
