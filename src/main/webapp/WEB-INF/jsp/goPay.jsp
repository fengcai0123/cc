<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../../assets/css/base.css">
<html>
<head>
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-1.3.2.min.js"></script>
    <script>
        function del() {
            $.ajax({
                type: "post",
                url: "/goods/del",
                data: "gid=" + $("#del_goods").val(),
                dataType: 'json',
                async: false,
                error: function (request) {
                    alert("页面ajax请求错误");
                },
                success: function (data) {
                    alert("ajax成功")
                }
            });
        }
        ;
    </script>
</head>
<body style="min-width: initial;" class="bg_gray">
<div id="divBody" class="bg_gray">
    <input id="wxKuaHaoPayFlag" value="1" type="hidden">
    <input id="isFromShopping" value="0" type="hidden">
    <input id="isNeedPayAbroad" value="1" type="hidden">

    <div class="wap_top_login" id="group_wap_top" style="position:fixed;z-index:60;left:0;top:0;">
        <p class="top_back"><a href="javascript:;" rel="nofollow" onclick="resultGoBack();"><img
            src="//image.benlailife.com/static/images/top/top_back_n_dea1705b.png"></a></p>
        <p class="top_tit">订单已提交</p>
    </div>


    <div class="group_pop_bill" style="display:none" id="grpDialog">
        <p class="word" id="content">恭喜您开团成功，再拉<span>10</span>位小伙伴参与即可成团哦</p>
        <a href="javascript:;" rel="nofollow" id="determine">去邀请好友</a>
        <p class="prompt" id="smallTip" style="display:none">团成功或失败后，会以短信通知您！谢谢</p>
    </div>

    <div class="nearTeam_mask" style="display:none" id="mask"></div>

    <div class="ind_content" style="margin-top:0.44rem" id="wrapper">
        <div class="order_success_prompt"></div>

        <input id="orderInfoData"
               value="{&quot;MsgTip&quot;:&quot;您的订单于10分钟内完成支付,否则订单将被取消&quot;,&quot;isNeedPay&quot;:&quot;1&quot;,&quot;ReceiveAddress&quot;:&quot;广东省 深圳市 宝安区九亭大街-松江区&quot;,&quot;retotalAmt&quot;:&quot;148.0&quot;,&quot;ReceivePhone&quot;:&quot;18659506072&quot;,&quot;shipPrice&quot;:0,&quot;ReceiveContact&quot;:&quot;陈永火&quot;,&quot;totalAmt&quot;:&quot;148.00&quot;,&quot;totalQty&quot;:1,&quot;othSoList&quot;:[],&quot;OrderMessageTip&quot;:&quot;&quot;,&quot;payTypeID&quot;:50,&quot;AttentionTip&quot;:&quot;您已下单成功，我们会尽快为您安排配送。提醒会员注意：我们不会以任何理由要求您提供银行卡、支付宝等信息，谨防诈骗。&quot;,&quot;Msg&quot;:&quot;您的订单请于10分钟内完成支付，否则将被取消&quot;,&quot;soList&quot;:[{&quot;isNeedPay&quot;:1,&quot;status&quot;:0,&quot;imageUrl&quot;:&quot;https://image.benlailife.com/ProductImages/000/000/068/528/small/1d349f65-f100-4f30-bffb-f4af1aacf9ed.jpg&quot;,&quot;productList&quot;:[{&quot;quantity&quot;:1,&quot;productSysNo&quot;:68528,&quot;productSmPSrc&quot;:&quot;https://image5.benlailife.com/ProductImages/000/000/068/528/small/1d349f65-f100-4f30-bffb-f4af1aacf9ed.jpg&quot;,&quot;productPrice&quot;:148.0,&quot;productName&quot;:&quot;【预售】褚橙（优级L型）5kg&quot;,&quot;productLink&quot;:&quot;IProduct/ProductDetail?productSysNo=37697705&quot;,&quot;productId&quot;:&quot;P0000068528TC&quot;}],&quot;SOID&quot;:&quot;1019392154&quot;,&quot;orderDate&quot;:&quot;1478484025&quot;,&quot;statusName&quot;:&quot;待审核&quot;,&quot;IsNewCustomer&quot;:0,&quot;retotalAmt&quot;:&quot;148.0&quot;,&quot;shipPrice&quot;:0,&quot;totalAmt&quot;:&quot;148.00&quot;,&quot;type&quot;:&quot;so&quot;,&quot;totalQty&quot;:1,&quot;distributionRequireType&quot;:1,&quot;hasAlertCouponTip&quot;:0,&quot;SysNo&quot;:19392154,&quot;OrderType&quot;:3,&quot;payTypeID&quot;:50,&quot;payTypeName&quot;:&quot;微信支付&quot;,&quot;PayTypeImage&quot;:&quot;http://image.benlailife.com/Content/PayImage/PayType/50&quot;,&quot;checkPayTypeModel&quot;:[]}],&quot;GpSysNo&quot;:-999999,&quot;SubMsg&quot;:&quot;&quot;,&quot;payTypeName&quot;:&quot;微信支付&quot;,&quot;InvoiceMsg&quot;:&quot;不开发票&quot;}"
               type="hidden">

        <div class="order_success_tit order_success_titno">
            <p>您的订单于10分钟内完成支付,否则订单将被取消</p>
        </div>


        <div class="order_success_list">
            <dl>
                <dt>
                <p>收货人：陈永火 18659506072</p>
                <p>收货地址：广东省 深圳市 宝安区九亭大街-松江区</p>
                </dt>
                <dd>
                    <div class="pay">
                        <img src="http://image.benlailife.com/Content/PayImage/PayType/50@9x.png">
                        <p>微信支付</p>

                    </div>
                    <div class="price">实付金额：<span>148.00</span></div>
                    <div class="btn">
                        <a href="https://m.benlai.com/sz" target="_self">返回首页</a>
                        <a href="javascript:;" id="payBtn_19392154" data-totalamt="148.00" data-soidarr="19392154"
                           data-soid="1019392154" data-sysno="19392154" data-ptype="50" data-otype="so"
                           data-osysno="19392154" data-pfrom="5" class="btn03">继续支付</a>
                    </div>

                </dd>
            </dl>
        </div>

        <div class="order_success_prompt mt20">您已下单成功，我们会尽快为您安排配送。提醒会员注意：我们不会以任何理由要求您提供银行卡、支付宝等信息，谨防诈骗。</div>

        <div id="newlist_no" class="index_new_more" style="display:none"><p><font>没有更多了~</font></p></div>

    </div>


    <div id="banner_float" class="banner_float" style="display:none">
        <img style="width:100%;height:100%;" src="">
    </div>
    <input value="19392154" id="soIdArr" type="hidden">
    <input value="" id="hasBoardOrder" type="hidden">


    <script type="text/javascript">
        var _mvq = window._mvq || [];
        window._mvq = _mvq;
        _mvq.push(['$setAccount', 'm-100385-0']);
        _mvq.push(['$setGeneral', 'ordercreate', '', webRoot, getCookie("CSESSIONID")]);
        _mvq.push(['$logConversion']);


        _mvq.push(['$addOrder', '19392154', '148.00']);


        _mvq.push(['$addItem', '19392154', '68528', '【预售】褚橙（优级L型）5kg', '', '1', cityRoot + '/product/' + 68528, 'https://image5.benlailife.com/ProductImages/000/000/068/528/small/1d349f65-f100-4f30-bffb-f4af1aacf9ed.jpg']);
        _mvq.push(['$logData']);
    </script>
    <script type="text/javascript">
        $(function () {
            $("body").addClass("bg_gray");
            $("#divBody").addClass("bg_gray");
        });
    </script>
</div>
<div class="city_o2o_pop" id="baseErrorMsg" style="display:none"></div>
<div id="fullScreen" class="wap_fullScreen"></div>
<div id="msgArea" class="wap_pop">
    <div id="msgCloseBtn" class="close" onclick="closeMsg()">
        <a href="javascript:;" rel="nofollow"><s></s></a>
    </div>
    <div id="msgTitleArea" class="tit"></div>
    <div id="msgContentArea" class="word2"></div>
    <div id="msgBtnArea" class="btn" style="display:none;">
        <a id="msgBtn1" href="javascript:;" rel="nofollow" target="_self" class="buy_btn09">确定</a>
        <a id="msgBtn2" href="javascript:;" rel="nofollow" target="_self" class="buy_btn09">取消</a>
    </div>
</div>

<div id="sharePop" class="share_pop"><!-- style="display:none" -->
    <div class="share_tit"><a id="closeShareBtn" href="javascript:;" rel="nofollow" onclick="closeShare();"><s></s></a>
    </div>
    <dl>
        <a id="sLink_Sina" href="javascript:;" rel="nofollow">
            <dt><img src="//image.benlailife.com/static/images/share_ico01_af9c0845.gif"></dt>
            <dd>分享到新浪微博</dd>
        </a>
    </dl>
    <!--<dl>
        <a id="sLink_Qzone" href="javascript:;" rel="nofollow">
            <dt><s class="ico02"></s></dt>
            <dd>分享到腾讯微博</dd>
        </a>
    </dl>
    <dl>
        <a href="javascript:;" rel="nofollow">
            <dt><s class="ico03"></s></dt>
            <dd>分享到微信好友</dd>
        </a>
    </dl>
    <dl class="b0">
        <a href="javascript:;" rel="nofollow">
            <dt><s class="ico04"></s></dt>
            <dd>分享到朋友圈</dd>
        </a>
    </dl>-->
</div>
<script type="text/javascript">
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?9a7d729a11da2966935bcb2908a98794";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

<!-- Piwik -->
<script>

    var wiKieSiteID = "7";
    var siteNo = getCookie('WebSiteSysNo');
    if (siteNo == "2") {
        wiKieSiteID = "8";
    } else if (siteNo == "3") {
        wiKieSiteID = "9";
    }

    var _paq = _paq || [];
    _paq.push(['trackPageView']);
    _paq.push(['enableLinkTracking']);
    (function () {
        var u = "//piwik.benlailife.com/";
        _paq.push(['setTrackerUrl', u + 'piwik.php']);
        _paq.push(['setSiteId', wiKieSiteID]);
        var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
        g.type = 'text/javascript';
        g.async = true;
        g.defer = true;
        g.src = u + 'piwik.js';
        s.parentNode.insertBefore(g, s);
    })();

</script>
<!-- End Piwik Code -->
<!-- 不支持https的第三方 -->
<!-- <script type="text/javascript" src="//tajs.qq.com/gdt.php?sId=35520404" charset="UTF-8"></script> -->
<script type="text/javascript">
    var _mvq = window._mvq || [];
    window._mvq = _mvq;
    _mvq.push(['$setAccount', 'm-100385-0']);
    _mvq.push(['$setGeneral', '', '', webRoot, getCookie("CSESSIONID")]);
    _mvq.push(['$logConversion']);
    (function () {
        if (isApp()) {
            return;
        }
        var mvl = document.createElement('script');
        mvl.type = 'text/javascript';
        mvl.async = true;
        mvl.src = ('https:' == document.location.protocol ? '//cdn.dsp.com/static/js/loader.js' : '//cdn.dsp.com/static/js/loader.js');
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(mvl, s);
    })();
</script>
<script>
    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = '//zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            //bp.src = '//push.zhanzhang.baidu.com/push.js';
            return;
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();

    (function () {
        var bp = document.createElement('script');
        bp.name = "baidu-tc-cerfication";
        bp.type = "text/javascript";
        bp.charset = "utf-8";
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = "//openapi.baidu.com/cloudaapi/lightapp.js";
        } else {
            bp.src = "//apps.bdimg.com/cloudaapi/lightapp.js";
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
<script>
    if (!isApp()) {
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?7feabb06873cfd158820492f754cc70b";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();

        var _xwq = _xwq || [];
        (function () {
            var u = "//bitj.benlai.com/Trafficstatistics/";
            _xwq.push(["setSiteId", 11]);
            _xwq.push(["setAppType", "m"]);
            var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
            g.type = 'text/javascript';
            g.async = true;
            g.defer = true;
            g.src = u + 'tj/xwpk.js';
            s.parentNode.insertBefore(g, s);
        })();

    }
</script>
<script>
    (function () {
        var j = document.createElement('script');
        j.type = 'text/javascript';
        j.async = true;
        j.defer = true;
        j.src = (('https:' === document.location.protocol) ? 'https://' : 'http://') + 'q.vlion.cn/ad/benlai_main_js.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(j, s);
    })();
</script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-54479131-1', 'auto');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');
</script>

<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>

<div>
    <div style="position: fixed; margin-top: -69.5px;" class="dialogBody my_recharge_safe">
        <dl>
            <dt><em>您的订单提交成功</em>
            <p class="tac mb15" style="font: 400 0.16rem/0.16rem &quot;黑体&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请点击去微信支付完成付款</p></dt>
            <dd><a name="positiveButton"
                   href="weixin://wap/pay?appid%3Dwxfd61e8705acbac29%26noncestr%3DHMvQITNBnPrmU3AV%26package%3DWAP%26prepayid%3Dwx20161107100028a25bc08d7e0215578965%26sign%3DBFD0027C787BB08BCCFD8C87C2A70020%26timestamp%3D1478484028"
                   style="width: 100%;">去微信支付</a></dd>
        </dl>
    </div>
    <div class="mask"></div>
</div>
</body>
</html>
