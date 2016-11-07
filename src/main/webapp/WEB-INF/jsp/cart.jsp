<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
    type="text/javascript">var ctx = '${ctx}', domain_image = '${domain_image}', domain_static = '${domain_static}';</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/assets/css/base.css">
<script src="/WEB-INF/assets/js/jquery-1.4.2.min.js"></script>
<script src="/WEB-INF/assets/js/jquery.mobile-1.4.5.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body class="bg_gray">

<div>
    <div class="cartnew_foot" id="cartnew_foot1" style="bottom: 0px;">
        <a href="javascript:;" id="chooseAll1" class="choose" data-flag="1">全选</a>
        <a href="" id="goPay" class="btn">去结算<p>（免运费）</p></a>
        <%--<a href="javascript:;" id="goPay" class="btn">去结算<p>（免运费）</p></a>--%>
        <div class="box">
            <p class="word01">商品金额:<span>¥371.00</span></p>


        </div>
    </div>
    <div class="wap_top_login" style="position:fixed;z-index:60;left:0;top:0;">
        <p class="top_back" name="topback"><a href="javascript:;"><img
            src="//image.benlailife.com/static/images/top/top_back_n_dea1705b.png"></a></p>
        <p class="top_word"><a href="javascript:;" id="edit">编辑</a></p>
        <p class="top_tit">购物车</p>
    </div>
    <div class="cartnew_content" style="padding-bottom:1rem">
        <!-- 全场促销活动 -->

        <!-- 多品 -->

        <!-- 单品 -->


        <!-- 特惠组合 -->

        <!-- 普通商品 -->
        <div class="cartnew_list">
            <div class="only_sku noline">
                <div class="sku">
                    <dl>
                        <dt name="swipex" style="margin-left:0rem;">
                        <div class="quantity">
                            <a href="javascript:;" class="jian"></a>
                            <input id="productCount_68505" value="2" data-pid="68505" data-oc="2" data-ctype="0"
                                   onafterpaste="this.value=this.value.replace(/\D/g,'')" maxlength="3" type="tel">
                            <a href="javascript:;" class="jia"></a>
                        </div>
                        <a href="javascript:;" id="chooseProduct_68505" data-val="1" data-pid="68505"
                           class="choose"></a>


                        <a href="https://m.benlai.com/sz/product/68505" target="_self" class="pic">
                            <div class="box">
                                <img
                                    src="https://image3.benlailife.com/ProductImages/000/000/068/505/medium/7122560e-29f3-4153-986e-caf705c87de7.jpg">
                            </div>
                            <p class="name">【预售】褚橙（特级XL型）5kg 褚橙第5季 抢鲜预定</p>
                            <p class="ico">不可用券</p>
                            <p class="price">¥<span>168.00</span></p>
                        </a>
                        </dt>
                        <dd><a href="javascript:;" name="delOnePro" data-pid="68505"></a></dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="cartnew_list">
            <div class="only_sku noline">
                <div class="sku">
                    <dl>
                        <dt name="swipex" style="margin-left:0rem;">
                        <div class="quantity">
                            <a href="javascript:;" class="jian"></a>
                            <input id="productCount_291914" value="1" data-pid="291914" data-oc="1" data-ctype="0"
                                   onafterpaste="this.value=this.value.replace(/\D/g,'')" maxlength="3" type="tel">
                            <a href="javascript:;" class="jia"></a>
                        </div>
                        <a href="javascript:;" id="chooseProduct_291914" data-val="1" data-pid="291914"
                           class="choose"></a>


                        <a href="https://m.benlai.com/sz/product/291914" target="_self" class="pic">
                            <div class="box">
                                <img
                                    src="https://image3.benlailife.com/ProductImages/000/000/291/914/medium/9fff9399-17b1-4161-8786-bfb6a7915ec0.jpg">
                            </div>
                            <p class="name">蒙自石榴雀斑甜果礼盒装12粒装 </p>
                            <p class="ico">不可用券</p>
                            <p class="price">¥<span>35.00</span></p>
                        </a>
                        </dt>
                        <dd><a href="javascript:;" name="delOnePro" data-pid="291914"></a></dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<div data-role="page" id="goodsdetail">
    <div>cart</div>

    <div data-role="footer"  data-position="fixed">
        <div data-role="navbar">
            <ul>
                <li><a href="${ctx}/goods/categoryGoodsList" rel="external">首页</a></li>
                <li><a href="${ctx}/goods/cart" class="ui-btn-active" rel="external">购物车</a></li>
                <li><a href="#" rel="external">订单</a></li>
                <li><a href="#" rel="external">搜索</a></li>
            </ul>
        </div>
    </div>
</div>--%>
</body>
</html>
