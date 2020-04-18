<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" href="../css/iconfont.css">
    <link rel="stylesheet" href="../css/global.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/bootstrap-theme.css">
    <link rel="stylesheet" href="../css/swiper.min.css">
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/jquery.1.12.4.min.js" charset="UTF-8"></script>
    <script src="../js/bootstrap.js" charset="UTF-8"></script>
    <script src="../js/swiper.min.js" charset="UTF-8"></script>
    <script src="../js/global.js" charset="UTF-8"></script>
    <script src="../js/jquery.DJMask.2.1.1.js" charset="UTF-8"></script>
    <title>社区团购网</title>
</head>
<body>
<!-- 顶部tab -->
<div class="tab-header">
    <div class="inner">
        <div class="pull-left">
            <div class="pull-left">嗨，欢迎来到<span class="cr">社区团购网</span></div>
        </div>
        <div class="pull-right">
            <a href="../login.html"><span class="cr">登录</span></a>
            <a href="../login.html?p=register">注册</a>
        </div>
    </div>
</div>
<!-- 顶部标题 -->
<div class="bgf5 clearfix">
    <div class="top-user">
        <div class="inner">
            <div class="logo">社区团购网</div>
            <div class="title">个人中心</div>
        </div>
    </div>
</div>

<div class="content clearfix bgf5">
    <section class="user-center inner clearfix">
        <div class="pull-left bgf">
            <a href="udai_welcome.html" class="title">欢迎页</a>
            <dl class="user-center__nav">
                <dt>帐户信息</dt>
                <a href="udai_setting.html"><dd>个人资料</dd></a>
                <a href="udai_paypwd_modify.html"><dd>修改支付密码</dd></a>
                <a href="udai_pwd_modify.html"><dd>修改登录密码</dd></a>
            </dl>
            <dl class="user-center__nav">
                <dt>订单中心</dt>
                <a href="udai_order.html"><dd>我的订单</dd></a>
                <a href="udai_collection.html"><dd>我的收藏</dd></a>
                <a href="udai_refund.html"><dd>退款/退货</dd></a>
                <a href="udai_mail_query.html"><dd>物流查询</dd></a>
            </dl>
            <dl class="user-center__nav">
                <dt>团购管理</dt>
                <a href="group_buy.html"><dd class="active">团购订单</dd></a>
            </dl>
        </div>
        <div class="pull-right">
            <div class="user-content__box clearfix bgf">

                <!--修改的内容-->
                <div class="title">订单中心-我的订单</div>
                <div class="order-list__box bgf">
                    <div class="order-panel">
                        <ul class="nav user-nav__title" role="tablist">
                            <li role="presentation" class="nav-item active">
                                <a href="#all" aria-controls="all" role="tab" data-toggle="tab">所有订单</a>
                            </li>
                            <li role="presentation" class="nav-item ">
                                <a href="#emit" aria-controls="emit" role="tab" data-toggle="tab">拼团中 <span class="cr">1</span></a>
                            </li>
                            <li role="presentation" class="nav-item "><a href="#emit" aria-controls="emit" role="tab" data-toggle="tab">待发货 <span class="cr">0</span></a></li>
                            <li role="presentation" class="nav-item "><a href="#take" aria-controls="take" role="tab" data-toggle="tab">待收货 <span class="cr">0</span></a></li>
                            <li role="presentation" class="nav-item "><a href="#eval" aria-controls="eval" role="tab" data-toggle="tab">待评价 <span class="cr">0</span></a></li>
                            <li role="presentation" class="nav-item ">
                                <a href="#eval" aria-controls="eval" role="tab" data-toggle="tab">历史订单 <span class="cr">1</span></a>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="all">
                                <table class="table text-center">
                                    <tr>
                                        <th width="380">商品信息</th>
                                        <th width="85">单价</th>
                                        <th width="85">求购总量</th>
                                        <th width="85">库存数量</th>
                                        <th width="120">拼团人数</th>
                                        <th width="120">状态</th>
                                        <th width="120">交易操作</th>
                                    </tr>
                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    开始时间 2017-03-30 ID: 12
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt=""
                                                                          class="cover"></div>
                                                    <div class="name ep2">新疆大枣【100g*3袋】</div>
                                                    <!--                                                    <div class="format">颜色分类：深棕色 尺码：均码</div>-->
                                                    <!--                                                    <div class="favour">使用优惠券：优惠¥2.00</div>-->
                                                </div>
                                            </label>
                                        </td>
                                        <td>￥10</td>
                                        <td>100</td>
                                        <td>1000</td>
                                        <td>20</td>
                                        <td class="state">
                                            <a class="but c6">拼团中</a>
                                            <a href="group_buy_detial.html" class="but c9">订单详情</a>
                                        </td>
                                        <td class="order">
                                            <a href="" class="but but-primary close-buy"   data-toggle="modal" id="update"
                                               onclick="openUpdateModal(this)">关闭团购</a>
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

                                        </td>
                                    </tr>

                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    开始时间2017-03-30 订单号: 26
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt=""
                                                                          class="cover"></div>
                                                    <div class="name ep2">烟台苹果</div>

                                                </div>
                                            </label>
                                        </td>
                                        <td>￥100</td>
                                        <td>1000</td>
                                        <td>1000</td>
                                        <td>50</td>
                                        <td class="state">
                                            <a class="but c6">关闭</a>
                                            <a href="group_buy_detial.html" class="but c9">订单详情</a>
                                        </td>
                                        <td class="order">
                                            <a href="evaluate_show.html" class="but but-link">查看评价</a>
                                        </td>
                                    </tr>

                                </table>
                                <div class="page text-right clearfix" style="margin-top: 40px">
                                    <a class="disabled">上一页</a>
                                    <a class="select">1</a>
                                    <a href="">2</a>
                                    <a href="">3</a>
                                    <a class="" href="">下一页</a>
                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane fade" id="emit">
                                <table class="table text-center">
                                    <tr>
                                        <th width="380">商品信息</th>
                                        <th width="85">单价</th>
                                        <th width="85">求购总量</th>
                                        <th width="85">库存数量</th>
                                        <th width="120">拼团人数</th>
                                        <th width="120">状态</th>
                                        <th width="120">交易操作</th>
                                    </tr>
                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    开始时间 2017-03-30 ID: 12
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt=""
                                                                          class="cover"></div>
                                                    <div class="name ep2">新疆大枣【100g*3袋】</div>
                                                </div>
                                            </label>
                                        </td>
                                        <td>￥10</td>
                                        <td>100</td>
                                        <td>1000</td>
                                        <td>20</td>
                                        <td class="state">
                                            <a class="but c6">拼团中</a>
                                            <!--                                            <a href="udai_order_detail.html" class="but c9">订单详情</a>-->
                                        </td>
                                        <td class="order">
                                            <a href="" class="but but-primary close-buy"  data-toggle="modal" data-target="#startBuy">关闭团购</a>
                                        </td>
                                        <div class="modal fade" id="startBuy" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="exampleModalLabel">订单详情</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form action="${path}/user/saveNew" method="post">
                                                            <div class="form-group">
                                                                <label  class="control-label col-lg-2">id:</label>
                                                                <input type="text" name="id"  class="form-control col-lg-4" value="22" >
                                                            </div>
                                                            <div class="form-group">
                                                                <label  class="control-label col-lg-2">开始时间:</label>
                                                                <input type="text" name="start_time"  class="form-control col-lg-4" value="2019-11-26 10:25" >
                                                            </div>
                                                            <div class="form-group">
                                                                <label  class="control-label col-lg-2">结束时间:</label>
                                                                <input type="text" name="end_time"  class="form-control col-lg-4" value="2019-11-26 11:25">
                                                            </div>
                                                            <div class="form-group">
                                                                <label  class="control-label col-lg-2">订单金额:</label>
                                                                <input type="text" name="order_price"  class="form-control col-lg-4" value="88" >
                                                            </div>
                                                            <div class="form-group">
                                                                <label  class="control-label col-lg-2">订单状态:</label>
                                                                <input type="text" name="order_status"  class="form-control col-lg-4" value="1" >
                                                            </div>
                                                            <div class="form-group">
                                                                <label  class="control-label col-lg-2">团长id:</label>
                                                                <input type="text" name="headman_id"  class="form-control col-lg-4" value="22" >
                                                            </div>
                                                            <div class="form-group">
                                                                <label  class="control-label col-lg-2">商品id:</label>
                                                                <input type="text" name="goods_id"  class="form-control col-lg-4" value="22" >
                                                            </div>


                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                            <button type="submit" class="btn btn-primary">确认提交</button>
                                                        </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </tr>
                                </table>
                                <div class="page text-right clearfix" style="margin-top: 40px">
                                    <a class="disabled">上一页</a>
                                    <a class="select">1</a>
                                    <a href="">2</a>
                                    <a href="">3</a>
                                    <a class="disabled">下一页</a>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="emit1">
                                <table class="table text-center">
                                    <tr>
                                        <th width="380">商品信息</th>
                                        <th width="85">单价</th>
                                        <th width="85">数量</th>
                                        <th width="120">实付款</th>
                                        <th width="120">交易状态</th>
                                        <th width="120">交易操作</th>
                                    </tr>
                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    2019-10-31 订单号: 2669901385864042
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
                                                    <div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
                                                    <div class="format">颜色分类：深棕色  尺码：均码</div>
                                                    <div class="favour">使用优惠券：优惠¥2.00</div>
                                                </div>
                                            </label>
                                        </td>
                                        <td>￥100</td>
                                        <td>1</td>
                                        <td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
                                        <td class="state">
                                            <a class="but c6">等待发货</a>
                                            <a href="udai_order_detail.html" class="but c9">订单详情</a>
                                        </td>
                                        <td class="order">
                                            <div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
                                            <a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
                                            <a href="udai_apply_return.html" class="but c3">退款/退货</a>
                                        </td>
                                    </tr>
                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    2019-10-31 订单号: 2669901385864042
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
                                                    <div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
                                                    <div class="format">颜色分类：深棕色  尺码：均码</div>
                                                    <div class="favour">使用优惠券：优惠¥2.00</div>
                                                </div>
                                            </label>
                                        </td>
                                        <td>￥100</td>
                                        <td>1</td>
                                        <td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
                                        <td class="state">
                                            <a class="but c6">等待发货</a>
                                            <a href="udai_order_detail.html" class="but c9">订单详情</a>
                                        </td>
                                        <td class="order">
                                            <div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
                                            <a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
                                            <a href="udai_apply_return.html" class="but c3">退款/退货</a>
                                        </td>
                                    </tr>
                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    2019-10-31 订单号: 2669901385864042
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
                                                    <div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
                                                    <div class="format">颜色分类：深棕色  尺码：均码</div>
                                                    <div class="favour">使用优惠券：优惠¥2.00</div>
                                                </div>
                                            </label>
                                        </td>
                                        <td>￥100</td>
                                        <td>1</td>
                                        <td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
                                        <td class="state">
                                            <a class="but c6">等待发货</a>
                                            <a href="udai_order_detail.html" class="but c9">订单详情</a>
                                        </td>
                                        <td class="order">
                                            <div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
                                            <a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
                                            <a href="udai_apply_return.html" class="but c3">退款/退货</a>
                                        </td>
                                    </tr>
                                </table>
                                <div class="page text-right clearfix" style="margin-top: 40px">
                                    <a class="disabled">上一页</a>
                                    <a class="select">1</a>
                                    <a class="disabled">下一页</a>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="take">
                                <table class="table text-center">
                                    <tr>
                                        <th width="380">商品信息</th>
                                        <th width="85">单价</th>
                                        <th width="85">数量</th>
                                        <th width="120">实付款</th>
                                        <th width="120">交易状态</th>
                                        <th width="120">交易操作</th>
                                    </tr>
                                    <tr class="order-empty"><td colspan='6'>
                                        <div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category.html">要不瞧瞧去？</a></div>
                                    </td></tr>
                                </table>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="eval1">
                                <table class="table text-center">
                                    <tr>
                                        <th width="380">商品信息</th>
                                        <th width="85">单价</th>
                                        <th width="85">数量</th>
                                        <th width="120">实付款</th>
                                        <th width="120">交易状态</th>
                                        <th width="120">交易操作</th>
                                    </tr>
                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    2019-10-31 订单号: 2669901385864042
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
                                                    <div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
                                                    <div class="format">颜色分类：深棕色  尺码：均码</div>
                                                    <div class="favour">使用优惠券：优惠¥2.00</div>
                                                </div>
                                            </label>
                                        </td>
                                        <td>￥100</td>
                                        <td>1</td>
                                        <td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
                                        <td class="state">
                                            <a class="but c6">交易成功</a>
                                            <a href="udai_mail_query.html" class="but cr">查看物流</a>
                                            <a href="udai_order_detail.html" class="but c9">订单详情</a>
                                        </td>
                                        <td class="order">
                                            <div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
                                            <a href="" class="but but-link">评价</a>
                                            <a href="" class="but c3">取消订单</a>
                                        </td>
                                    </tr>
                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    2019-10-31 订单号: 2669901385864042
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
                                                    <div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
                                                    <div class="format">颜色分类：深棕色  尺码：均码</div>
                                                    <div class="favour">使用优惠券：优惠¥2.00</div>
                                                </div>
                                            </label>
                                        </td>
                                        <td>￥100</td>
                                        <td>1</td>
                                        <td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
                                        <td class="state">
                                            <a class="but c6">交易成功</a>
                                            <a href="udai_mail_query.html" class="but cr">查看物流</a>
                                            <a href="udai_order_detail.html" class="but c9">订单详情</a>
                                        </td>
                                        <td class="order">
                                            <div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
                                            <a href="" class="but but-link">评价</a>
                                            <a href="" class="but c3">取消订单</a>
                                        </td>
                                    </tr>
                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    2019-10-31 订单号: 2669901385864042
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
                                                    <div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
                                                    <div class="format">颜色分类：深棕色  尺码：均码</div>
                                                    <div class="favour">使用优惠券：优惠¥2.00</div>
                                                </div>
                                            </label>
                                        </td>
                                        <td>￥100</td>
                                        <td>1</td>
                                        <td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
                                        <td class="state">
                                            <a class="but c6">交易成功</a>
                                            <a href="udai_mail_query.html" class="but cr">查看物流</a>
                                            <a href="udai_order_detail.html" class="but c9">订单详情</a>
                                        </td>
                                        <td class="order">
                                            <div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
                                            <a href="" class="but but-link">评价</a>
                                            <a href="" class="but c3">取消订单</a>
                                        </td>
                                    </tr>
                                </table>
                                <div class="page text-right clearfix" style="margin-top: 40px">
                                    <a class="disabled">上一页</a>
                                    <a class="select">1</a>
                                    <a class="disabled">下一页</a>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="eval">
                                <table class="table text-center">
                                    <tr>
                                        <th width="380">商品信息</th>
                                        <th width="85">单价</th>
                                        <th width="85">求购总量</th>
                                        <th width="85">库存数量</th>
                                        <th width="120">拼团人数</th>
                                        <th width="120">状态</th>
                                        <th width="120">交易操作</th>
                                    </tr>
                                    <tr class="order-item">
                                        <td>
                                            <label>
                                                <a href="udai_order_detail.html" class="num">
                                                    开始时间2017-03-30 订单号: 26
                                                </a>
                                                <div class="card">
                                                    <div class="img"><img src="images/temp/item-img_1.jpg" alt=""
                                                                          class="cover"></div>
                                                    <div class="name ep2">烟台苹果</div>

                                                </div>
                                            </label>
                                        </td>
                                        <td>￥100</td>
                                        <td>1000</td>
                                        <td>1000</td>
                                        <td>50</td>
                                        <td>关闭</td>

                                        <td class="order">
                                            <a href="evaluate_show.html" class="but but-link">查看评价</a>
                                        </td>
                                    </tr>
                                </table>
                                <div class="page text-right clearfix" style="margin-top: 40px">
                                    <a class="disabled">上一页</a>
                                    <a class="select">1</a>
                                    <a href="">2</a>
                                    <a href="">3</a>
                                    <a class="disabled">下一页</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--修改的内容-->

            </div>
        </div>
    </section>
</div>

<!-- 右侧菜单 -->
<div class="right-nav">
    <ul class="r-with-gotop">
        <li class="r-toolbar-item">
            <a href="udai_welcome.html" class="r-item-hd">
                <i class="iconfont icon-user"></i>
                <div class="r-tip__box"><span class="r-tip-text">用户中心</span></div>
            </a>
        </li>
        <li class="r-toolbar-item">
            <a href="template.html" class="r-item-hd">
                <i class="iconfont icon-cart" data-badge="10"></i>
                <div class="r-tip__box"><span class="r-tip-text">购物车</span></div>
            </a>
        </li>
        <li class="r-toolbar-item">
            <a href="udai_collection.html" class="r-item-hd">
                <i class="iconfont icon-aixin"></i>
                <div class="r-tip__box"><span class="r-tip-text">我的收藏</span></div>
            </a>
        </li>
        <li class="r-toolbar-item to-top">
            <i class="iconfont icon-top"></i>
            <div class="r-tip__box"><span class="r-tip-text">返回顶部</span></div>
        </li>
    </ul>
    <script>
        $(document).ready(function () {
            $('.to-top').toTop({position: false})
        });
    </script>
</div>
<!-- 底部信息 -->
<div class="footer">
    <div class="copy-box clearfix" style="padding-top: 10px">
        <p class="copyright">
            © 社区团购网 版权所有，并保留所有权利</p>
    </div>
</div>
</body>
</html>