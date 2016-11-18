<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
    type="text/javascript">var ctx = '${ctx}', domain_image = '${domain_image}', domain_static = '${domain_static}';</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../assets/css/base.css">
<script src="../../assets/js/jquery-1.4.2.min.js "></script>
<%--<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>--%>

<html>
<head>
    <title>Title</title>
    <style>
        .confirm_goods{
            width: 100%;
            height:1rem;
        }
        .confirm_goods ul{
            width: 100%;
        }
        .confirm_goods .confirm_goods_img{
            float: left;
            width: 20%;
        }
        .confirm_goods .confirm_goods_img{
            float: left;
            height: 0.85rem;
            line-height: 0.85rem;
        }
        .confirm_goods .confirm_goods_name{
            float: left;
            width: 60%;

        }
        .confirm_goods .confirm_goods_name p{
            padding-top: 0.3rem;
            float: left;
            display: block;
        }
        .confirm_goods .confirm_goods_name em{
            height: 0.30rem;
            line-height: 0.3rem;
        }
        .confirm_goods .confirm_goods_price{
            float: right;
            padding-right: 2%;
            width: 18%;
            height: 0.85rem;
            line-height: 0.85rem;
        }
        .confirm_goods .confirm_goods_price em{
            float: right;
        }
    </style>
    <script>
       function goPay() {
           $.ajax( {
               type:"post",
               url:"/goPay",
               data:{

               },
               async:false,
               success(data)
               {
                  location.href ="goPay";
               }
           });
       }

    </script>
</head>
<body style="min-width: initial;" class="bg_gray">
<div id="divBody" class="bg_gray">
    <input id="hid" value="" type="hidden">

    <input id="isFromShopping" value="4" type="hidden">


    <div id="divOrder">
        <div class="wap_top_login" style="position:fixed;z-index:60;left:0;top:0;" id="normalCss">
            <p class="top_back" onclick="getBack2()"><a href="javascript:;" rel="nofollow" target="_self"><img src="//image.benlailife.com/static/images/top/top_back_n_dea1705b.png" width="24" height="41"></a></p>
            <p class="top_word" style="display:none" name="subOrder" id="subOrderArea" data-from="0" data-type="4"><a href="javascript:;" rel="nofollow" id="subOrderHead">提交订单</a></p>
            <p class="top_tit" id="toptit">订单信息</p>
        </div>
        <div class="wap_top_login" style="display:none;position:fixed;z-index:60;left:0;top:0;" id="payTop">
            <p class="top_back"><a href="javascript:;" onclick="changePay(1)" rel="nofollow"><img src="//image.benlailife.com/static/images/top/top_back_n_dea1705b.png" width="24" height="41"></a></p>
            <p class="top_word" style="display:none" name="subOrder" id="subOrderArea" data-from="4" data-type="4"><a href="javascript:;" rel="nofollow" id="subOrderHead">提交订单</a></p>
            <p class="top_tit" id="toptit">选择支付方式</p>
        </div>
        <div class="wap_top" id="gbCss" style="display:none;position:fixed;z-index:60;left:0;top:0;">
            <p class="top_back"></p>
            <p class="top_word3" style="display:none" name="subOrder" id="subOrderArea" data-from="4" data-type="4"><a href="javascript:;" rel="nofollow" id="subOrderHead">提交订单</a></p>
            <p class="top_tit3" id="toptit">确认提交</p>
        </div>
        <div class="ind_content">
            <div class="ordernew_pop" style="display:none">
            <dl>
                <dt>
                <p class="tit">您还有以下抵扣未使用</p>
                </dt>
                <dd>
                    <a href="javascript:;" id="nextUse" class="safe_border">下次使用</a>
                    <a href="javascript:;" id="goUse">去使用</a>
                </dd>
            </dl>
        </div>
            <div class="my_mask" style="display:none"></div>
            <div id="orders_buy" class="ordernew_fixed">
                <dl>
                    <dt>配送至：九亭大街-松江区</dt>
                    <dd>
                        <p>应付金额：<span>￥148.00</span></p>
                        <a href="javascript:void(0);" name="subOrder" data-totalamt="148.00" id="confirmOrder" onclick="goPay();" >提交订单</a>
                    </dd>
                </dl>
            </div>
            <div class="ind_content" style="margin-bottom:0.8rem;padding:0.44rem 0rem 0rem 0rem;" id="mainSubject">
                <div class="ordernew_list">
                    <dl class="adr">
                        <a href="javascript:;" id="showAddress">
                            <p class="name">陈永火</p>
                            <p class="ico">默认</p>
                            <p class="tel">18659506072</p>
                            <p class="text">广东省 深圳市 宝安区 九亭大街-松江区</p>
                        </a>
                    </dl>



                    <dl class="confirm_goods">
                        <ul>
                            <li class="confirm_goods_img">
                                <img src="../../assets/images/common/face1.png">
                            </li>
                            <li class="confirm_goods_name">
                                <p>${goods.name}</p>
                                <em>X 14</em>
                            </li>
                            <li class="confirm_goods_price">
                                <em>￥${goods.shopPrice}</em>
                            </li>
                        </ul>
                    </dl>

                    <dl class="pay">
                        <a href="javascript:;" id="changePay">
                            <em>支付方式</em>
                            <p>  微信支付  </p>
                        </a>
                    </dl>

                    <dl class="invoice">
                        <em>配送方式</em>
                        <p>快递</p>
                    </dl>

                    <dl class="price">
                        <dd style="padding-bottom:0.1rem">
                            <ul>
                                <li>
                                    <p>商品金额</p>
                                    <em>￥${goods.shopPrice}</em>
                                </li>
                            </ul>
                        </dd>
                        <dd>
                            <ul>
                                <li>
                                    <p>运费</p>
                                    <em>￥148.00</em>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                    <div class="btn3" style="display:none"><a href="javascript:;" name="subOrder">提 交 订 单</a></div>
                </div>
            </div>

            <div class="ind_content" style="display:none;margin-bottom:0.8rem;padding:0.44rem 0rem 0rem 0rem;" id="selectPayType">
                <div class="ordernew_pay">
                    <a href="javascript:;" data-paytype="70">
                        <img src="http://image.benlailife.com/Content/PayImage/PayType/70@9x.png">
                        百度钱包
                    </a>
                    <a href="javascript:;" data-paytype="69">
                        <img src="http://image.benlailife.com/Content/PayImage/PayType/69@9x.png">
                        翼支付（随机立减）
                    </a>
                    <a href="javascript:;" class="on" data-paytype="50">
                        <img src="http://image.benlailife.com/Content/PayImage/PayType/50@9x.png">
                        微信支付
                    </a>
                    <a href="javascript:;" data-paytype="27">
                        <img src="http://image.benlailife.com/Content/PayImage/PayType/27@9x.png">
                        支付宝钱包支付
                    </a>
                    <a href="javascript:;" data-paytype="6">
                        <img src="http://image.benlailife.com/Content/PayImage/PayType/6@9x.png">
                        银联在线支付
                    </a>
                </div>
            </div>
            <input id="haseForex" value="0" type="hidden">
            <input id="NeedPayPwd" value="0" type="hidden">
            <script>

                //判断选择哪一种优惠券显示方式
                $("#aCoupon_double").show();
                $("#aCoupon").hide();
                //优惠券可用数量为0，但当前正在使用优惠券，不显示  （可用0张）
                //判断选择优惠券方式结束

                window.isShowInvoice = "0";
                $("#invoiceMsg").html("暂不支持线上开发票。");
                window.isCanPrintInvoice = "0";
            </script>



            <div id="needPhoneCheck" class="ordernew_phonepop" style="display: none;">
                <a onclick="useCouponCodeOrder()" href="javascript:;" class="btn">确认</a>
                <a id="closeNeedPhoneCheck" href="javascript:;" class="closeall"></a>
                <div class="prompt">使用此优惠券需要验证手机号</div>
                <dl>
                    <dt>手机验证</dt>
                    <dd id="phoneli" data_flag="0">
                        <a href="javascript:$('#verifyPhone').val('');" class="close"></a>
                        <input id="verifyPhone" class="on" placeholder="请输入手机号" type="text">
                    </dd>
                    <dd>
                        <a href="javascript:;" id="sendCodeBtn" class="yzm">获取验证码</a>
                        <p>
                            <a href="javascript:$('#verifyCode').val('');" class="close"></a>
                            <input id="verifyCode" class="on" placeholder="请输入验证码" type="text">
                        </p>
                    </dd>
                </dl>
            </div></div>
    </div>

    <div id="divSetInvoice" style="background-color: #f2f2f2 !important;display:none;height: 100%;"></div>

    <div id="divInvoiceNotice" style="display:none"></div>

    <div class="group_pop06" style=" display: none;" id="grpDialog">
        <dl>
            <dt>收货信息</dt>
            <dd>
                <input id="receiver" value="" placeholder="收货人姓名" type="text">
                <input id="receiverPhone" value="" placeholder="收货人手机号" type="text">
                <p class="tit">收货地址（仅配送至团长地址）</p>
                <input value="" id="hiddenReceiveAreaSysNo" type="hidden">
                <input value="" id="submitFlag" type="hidden">

                <p id="leaderAddress"></p>
                <div class="subOrder_btn"><a href="#" id="addGpAddress_Btn">确认</a></div>
                <p style="color: #f10000;" id="msg_block"></p>
            </dd>
        </dl>
    </div>
    <div class="my_mask" style="display: none;"></div>

    <div class="my_pay_pop" style="display: none;">
        <dl>
            <dt>
                <em>请输入支付密码</em>
            <div class="box">
                <input value="" style="margin-bottom:0.15rem;" type="text">
            </div>
            </dt>
            <dd>
                <a href="#" class="safe_border">取消</a>
                <a href="#">确定</a>
            </dd>
        </dl>
    </div>

    <div id="divSetInvoice" style="background-color: #f2f2f2 !important;display:none;height: 100%;"></div>

    <div id="divInvoiceNotice" style="display:none"></div>
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
    <div class="share_tit"><a id="closeShareBtn" href="javascript:;" rel="nofollow" onclick="closeShare();"><s></s></a></div>
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
</div><script type="text/javascript">
    var _hmt = _hmt || [];
    (function() {
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
    (function() {
        var u="//piwik.benlailife.com/";
        _paq.push(['setTrackerUrl', u+'piwik.php']);
        _paq.push(['setSiteId', wiKieSiteID]);
        var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
        g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
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
    (function() {
        if (isApp()) {
            return;
        }
        var mvl = document.createElement('script');
        mvl.type = 'text/javascript'; mvl.async = true;
        mvl.src = ('https:' == document.location.protocol ? '//cdn.dsp.com/static/js/loader.js' : '//cdn.dsp.com/static/js/loader.js');
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(mvl, s);
    })();
</script>
<script>
    (function(){
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

    (function(){
        var bp = document.createElement('script');
        bp.name="baidu-tc-cerfication";
        bp.type="text/javascript";
        bp.charset="utf-8";
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
    if(!isApp()){
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?7feabb06873cfd158820492f754cc70b";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();

        var _xwq = _xwq || [];
        (function() {
            var u="//bitj.benlai.com/Trafficstatistics/";
            _xwq.push(["setSiteId", 11]);
            _xwq.push(["setAppType", "m"]);
            var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
            g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'tj/xwpk.js'; s.parentNode.insertBefore(g,s);
        })();

    }
</script>
<script>
    (function(){
        var j=document.createElement('script');
        j.type='text/javascript';
        j.async=true;
        j.defer=true;
        j.src=(('https:' === document.location.protocol)?'https://':'http://')+'q.vlion.cn/ad/benlai_main_js.js';
        var s=document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(j,s);
    })();
</script>
<script>
    (function(i,s,o,g,r,a,m){
        i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)
            },i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0]; a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-54479131-1', 'auto');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');
</script>

<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>

</body>
</html>
