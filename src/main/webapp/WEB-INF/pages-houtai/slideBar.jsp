<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<slide class="main-sidebar">
<section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
        <div class="pull-left image">
            <img src="${pageContext.request.contextPath}/img/user3-128x128.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
            <p>管理员</p>
        </div>
    </div>

    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
        <li>
            <!--        首页-->
            <a href="${pageContext.request.contextPath}">
                <i class="fa fa-dashboard"></i> <span>首页</span>
            </a>
            <!--/首页-->
        </li>
        <li class="treeview">
<!--        用户管理-->
            <a href="#">
                <i class="fa fa-user-md"></i> <span>用户管理</span>
                <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
            </a>
            <ul class="treeview-menu">

                <li id="user-management-select" >
                    <a href="${pageContext.request.contextPath}/user/findAll">
                        <i class="fa fa-circle-o"></i> 用户查询
                    </a>
                </li>
            </ul>
            <ul class="treeview-menu">

                <li id="user-management-deal" >
                    <a href="${pageContext.request.contextPath}/user/complain">
                        <i class="fa fa-circle-o"></i> 投诉管理
                    </a>
                </li>
            </ul>
        <!--/用户管理-->
        </li>
        <li>
        <!--        订单管理-->
            <a href="${pageContext.request.contextPath}/order/findAll">
            <i class="fa fa-file-text"></i> <span>订单管理</span>
        </a>
        <!--/订单管理-->
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-folder"></i> <span>地址管理</span>
                <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
            </a>
            <ul class="treeview-menu">

                <li id="warehouse-details-wind-farm-head" >
                    <a href="address-first.jsp">
                        <i class="fa fa-circle-o"></i> 一级地址
                    </a>
                </li>

                <li id="admin-register">
                    <a href="address-second.jsp">
                        <i class="fa fa-circle-o"></i> 二级地址
                    </a>
                </li>

                <li id="admin-register2">
                    <a href="address-three.jsp">
                        <i class="fa fa-circle-o"></i> 三级地址
                    </a>
                </li>

            </ul>
        </li>


        <li class="treeview">
            <a href="#">
                <i class="fa fa-pie-chart"></i> <span>商品分类管理</span>
                <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
            </a>
            <ul class="treeview-menu">

                <li id="charts-chartjs">
                    <a href="goods-category-first.jsp">
                        <i class="fa fa-circle-o"></i> 一级分类
                    </a>
                </li>

                <li id="charts-chartjs2">
                    <a href="goods-category-second.jsp">
                        <i class="fa fa-circle-o"></i> 二级分类
                    </a>
                </li>

                <li id="charts-chartjs3">
                    <a href="goods-category-three.jsp">
                        <i class="fa fa-circle-o"></i> 三级分类
                    </a>
                </li>


            </ul>
        </li>


        <li class="treeview">
            <a href="#">
                <i class="fa fa-laptop"></i> <span>团长管理</span>
                <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
            </a>
            <ul class="treeview-menu">

                <li id="elements-general">
                    <a href="head-of-community.jsp">
                        <i class="fa fa-circle-o"></i> 团长信息查询
                    </a>
                </li>

                <li id="elements-general2">
                    <a href="head-of-community-apply.jsp">
                        <i class="fa fa-circle-o"></i> 团长申请处理
                    </a>
                </li>

                <li id="elements-general3">
                    <a href="head-of-community-handing.jsp">
                        <i class="fa fa-circle-o"></i> 投诉处理
                    </a>
                </li>

            </ul>
        </li>


    </ul>
</section>
<!-- /.sidebar -->
</slide>