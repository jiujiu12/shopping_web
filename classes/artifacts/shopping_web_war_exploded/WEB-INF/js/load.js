$(function () {
    // 请求头部页面
    $.ajax({
        url: "../pages-houtai/head.jsp",
        success: function (data) {
            $("#header").html(data);
        }
    });

    // 请求底部页面
    $.ajax({
        url: "../pages-houtai/footer.jsp",
        success: function (data) {
            $("#footer").html(data);
        }
    });

    // 请求侧边导航栏
    $.ajax({
        url: "../pages-houtai/slideBar.jsp",
        success: function (data) {
            $("#slideBar").html(data);
        }
    });
});

