<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 页面头部 -->
<header class="main-header">
    <!-- Logo -->
    <a href="all-admin-index.html" class="logo" style="background-color: #b31e22">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>管理</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>社区团购</b>后台管理</span>
    </a>


    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" style="background-color: #D02429">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="${pageContext.request.contextPath}/img/user3-128x128.jpg" class="user-image" alt="User Image">
                        <span class="hidden-xs"></span>
                    </a>

                </li>

            </ul>
        </div>
    </nav>
</header>