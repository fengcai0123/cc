<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body>
<div id="divBody">
    <div id="loging" class="loading_n" style="display:none;">
        <dl>
            <dt><img src="//image.benlailife.com/static/images/logo_daa42ff7.png"></dt>
            <dd><img src="//image.benlailife.com/static/images/loading_n_32aa5e52.gif"></dd>
        </dl>
    </div>

    <form id="addrForm" method="post">
        <!-- 用户编辑地址时高德获得的经纬度信息 -->
        <input id="edit_longitude" type="hidden">
        <input id="edit_latitude" type="hidden">

        <input id="defaultPhone" value="18659506072" type="hidden">
        <input id="directFlag" value="1" type="hidden">
        <div id="addrEditArea" data-protype="0" data-form="1">
            <div class="wap_top" id="normalCss">
                <p class="top_back" name="myback" id="wap_top_top">
                    <a href="javascript:;" rel="nofollow"
                       style="width:0.36rem;text-align:center;display:block;padding:0.12rem 0.21rem 0.105rem 0;float:left;">
                        <img src="//image.benlailife.com/static/images/top/top_back_n_dea1705b.png" width="24"
                             height="41">
                    </a>
                </p>
                <p class="top_word"><a id="submitAddr" href="javascript:;" rel="nofollow">确定</a></p>
                <p class="top_tit">
                    新增地址
                </p>
            </div>
            <div class="wap_top" id="gbCss" style="display:none;">
                <p class="top_word3"><a id="submitAddr1" href="javascript:;" rel="nofollow">确定</a></p>
                <p class="top_tit3">
                    新增地址
                </p>
            </div>

            <div class="ind_content">
                <div class="ordernew_addnew">
                    <dl class="city">


                        <li>
                            <input id="receiveContact" value="" placeholder="收货人姓名" type="text">
                        </li>
                        <li>
                            <input id="receiveCellPhone" value="" placeholder="手机号码" type="tel">
                        </li>


                        <li>


                            <select id="provSelect" class="on">
                                <option name="prov_9999" value="9999">请选择省份...</option>
                                <option name="prov_34" value="34">湖北省</option>
                                <option name="prov_35" value="35">湖南省</option>
                                <option selected="selected" name="prov_36" value="36">广东省</option>
                                <option name="prov_37" value="37">广西壮族自治区</option>
                                <option name="prov_38" value="38">海南省</option>
                                <option name="prov_39" value="39">重庆市</option>
                                <option name="prov_40" value="40">四川省</option>
                                <option name="prov_41" value="41">贵州省</option>
                            </select>

                        </li>

                        <li id="citySelectArea" style="">


                            <select id="citySelect">
                                <option name="city_244" value="244">广州市</option>
                                <option name="city_245" value="245">韶关市</option>
                                <option selected="selected" name="city_246" value="246">深圳市</option>
                                <option name="city_247" value="247">珠海市</option>
                                <option name="city_248" value="248">汕头市</option>
                                <option name="city_249" value="249">佛山市</option>
                                <option name="city_250" value="250">江门市</option>
                                <option name="city_251" value="251">湛江市</option>
                                <option name="city_252" value="252">茂名市</option>
                                <option name="city_253" value="253">肇庆市</option>
                                <option name="city_254" value="254">惠州市</option>
                                <option name="city_255" value="255">梅州市</option>
                                <option name="city_256" value="256">汕尾市</option>
                                <option name="city_257" value="257">河源市</option>
                                <option name="city_258" value="258">阳江市</option>
                                <option name="city_259" value="259">清远市</option>
                                <option name="city_260" value="260">东莞市</option>
                                <option name="city_261" value="261">中山市</option>
                                <option name="city_262" value="262">潮州市</option>
                                <option name="city_263" value="263">揭阳市</option>
                                <option name="city_264" value="264">云浮市</option>
                            </select>
                        </li>

                        <li id="distSelectArea">

                            <select id="distSelect">
                                <option name="dist_9999" value="9999" style="color: #bbbbbb">请选择地区</option>
                                <option name="dist_2143" value="2143">宝安区</option>
                                <option name="dist_3374" value="3374">大鹏新区</option>
                                <option name="dist_2141" value="2141">福田区</option>
                                <option name="dist_3322" value="3322">光明新区</option>
                                <option name="dist_2144" value="2144">龙岗区</option>
                                <option name="dist_3377" value="3377">龙华新区</option>
                                <option name="dist_2140" value="2140">罗湖区</option>
                                <option name="dist_2142" value="2142">南山区</option>
                                <option name="dist_3378" value="3378">坪山新区</option>
                                <option name="dist_2145" value="2145">盐田区</option>
                            </select>

                        </li>

                        <li class="noline">

                            <input placeholder="详细地址" id="receiveAddress" name="receiveAddress" rows="2"
                                   class="textgt03" value="">
                            <div id="reference" style="display:none"></div>

                        </li>
                    </dl>


                    <dl class="tab">
                        <dt>地址类型</dt>
                        <dd id="selectBriefBt">
                            <a href="javascript:void(0);" rel="nofollow" class="" data-state="1">家庭地址</a>
                            <a href="javascript:void(0);" rel="nofollow" class="" data-state="2">公司地址</a>
                            <input id="brief" class="on" placeholder="请输入地址类型标注" style="display:none" type="text">
                            <input id="addressType" style="display:none" value="" type="text">
                        </dd>
                    </dl>


                    <dl class="default on">
                        <a href="javascript:void(0);" rel="nofollow" id="checkImg" class="default" data-checkval="1">设为默认地址</a>
                    </dl>


                    <div class="btn"><a href="javascript:void(0);" rel="nofollow" class="save">确定</a></div>
                </div>
            </div>
        </div>
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

    </form>
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

</body>
</html>
