<!DOCTYPE html>
<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>aa</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" type="text/css" href="../../assets/css/base.css">
    <script src="../../assets/js/zepto/zepto.js"></script>

</head>
<body>
<script>
    $(document).ready(function () {
        $("ul li").click(function () {
            $(this).addClass("active").siblings().removeClass("active");
            $("ul li img")
        })
    });

    function goDetail() {
        $.ajax({
            type:"post",
           url:"detail",
            async:false,
            success(data){
                location.href="detail";
            }
        });
    }
</script>
<style>
    .foot_tab ul {
        list-style: none;
        float: left;
        bottom: 0;
        left: 0;
        width: 100%;
        position: fixed;
        z-index: 99;
        height: 3em;
        background-color: #fff;
    }

    .foot_tab a {
        float: left;
        width: 25%;
        text-align: center;
        position: relative;
        z-index: 0;
    }

    .foot_tab a img {
        margin-top: 0.3em;
        width: 1.8em;
    }

    .foot_tab a p {
        font: 400 .6rem/1rem "黑体";
        color: #666;
    }

    .active {
        background-color: #5cb85c;
        margin-bottom: 5%;
    }

    .banner_list {
        width: 100%;
        float: left;
    }

    .banner_list li {
        width: 100%;
        float: left;
        margin-bottom: 0.85em;
    }

    .banner_list .list00 a {
        position: relative;
        z-index: 1;
        display: inline-block;
    }

    .banner_list li > a {
        width: 100%;
    }

    .banner_list .list00 img {
        width: 100%;
    }
</style>
<div>
    <div>
        <ul class="banner_list">
            <li class="list00">
                <a title="本来生活|舟山专供本土野生海产4折起" href="https://m.benlai.com/huadong/zt/1102zs" target="_self">
                    <div class="time" style="display: block; opacity: 1;" id="countdown_300"
                         data-starttime=" 1478189685" data-endtime="1478275199"><font id="hourSpan300">08</font>:<font
                        id="minusSpan300">22</font>:<font id="secondSpan300">09</font>
                    </div>
                    <img alt="本来生活|舟山专供本土野生海产4折起"
                         src="//image7.benlailife.com/AppHomePageImage/754780a774044ed6a3f3ffcdb5d2eff5_n-n.jpg?imageView2/2/w/1242/format/webp"
                         style="opacity: 1;">
                </a>
            </li>
            <li class="list00">
                <a title="" href="https://m.benlai.com/qz/product/281766" target="_self">
                    <div class="time" style="display:none" id="countdown_305" data-starttime=" 0" data-endtime="0"><font
                        id="hourSpan305"></font>:<font id="minusSpan305"></font>:<font id="secondSpan305"></font></div>
                    <img alt=""
                         src="//image3.benlailife.com/AppHomePageImage/3d89a0fb878e41fc99eb2213f724557d_n-n.jpg?imageView2/2/w/1242/format/webp"
                         style="opacity: 1;">
                </a>
            </li>
            <li class="list00">
                <%--<a title="" href="https://m.benlai.com/qz/product/290426" target="_self">--%>
                <a title="" href="javascript:void(0)" target="_self" onclick="goDetail()">
                    <div class="time" style="display:none" id="countdown_307" data-starttime=" 0" data-endtime="0"><font
                        id="hourSpan307"></font>:<font id="minusSpan307"></font>:<font id="secondSpan307"></font></div>
                    <img alt=""
                         src="//image2.benlailife.com/AppHomePageImage/3ab4f9f33dbb42bf89ad95cce85f711d_n-n.jpg?imageView2/2/w/1242/format/webp"
                         style="opacity: 1;">
                </a>
            </li>
            <li class="list00">
                <%--<a title="" href="https://m.benlai.com/qz/product/290426" target="_self">--%>
                <a title="" href="javascript:void(0)" target="_self" onclick="goDetail()">
                    <div class="time" style="display:none" id="countdown_307" data-starttime=" 0" data-endtime="0"><font
                        id="hourSpan307"></font>:<font id="minusSpan307"></font>:<font id="secondSpan307"></font></div>
                    <img alt=""
                         src="//image2.benlailife.com/AppHomePageImage/3ab4f9f33dbb42bf89ad95cce85f711d_n-n.jpg?imageView2/2/w/1242/format/webp"
                         style="opacity: 1;">
                </a>
            </li>
            <li class="list00">
                <%--<a title="" href="https://m.benlai.com/qz/product/290426" target="_self">--%>
                <a title="" href="javascript:void(0)" target="_self" onclick="goDetail()">
                    <div class="time" style="display:none" id="countdown_307" data-starttime=" 0" data-endtime="0"><font
                        id="hourSpan307"></font>:<font id="minusSpan307"></font>:<font id="secondSpan307"></font></div>
                    <img alt=""
                         src="//image2.benlailife.com/AppHomePageImage/3ab4f9f33dbb42bf89ad95cce85f711d_n-n.jpg?imageView2/2/w/1242/format/webp"
                         style="opacity: 1;">
                </a>
            </li>
        </ul>
    </div>


    <div id="orders_buy" class="ordernew_fixed">
        <dl>
            <dt>配送至：九亭大街-松江区</dt>
            <dd>
                <p>应付金额：<span>￥148.00</span></p>
                <a href="javascript:void(0);" name="subOrder" data-totalamt="148.00" id="confirmOrder" onclick="goPay();" >提交订单</a>
            </dd>
        </dl>
    </div>
    <%--<div class="foot_tab">

        <a href="#">
            <img src="../../assets/images/common/home.png">
            <p>首页</p>
        </a>
        <p>
            <img src="../../assets/images/common/category.png">
            <p>分类</p>
        </a>
        <a>
            <img src="../../assets/images/common/category.png">
            <p  >购物车</p>
        </a>
        <a>
            <img src="../../assets/images/common/profile.png">
            <p>我的</p>
        </a>
    </div>--%>
</div>
<%--<html>
<head>
    <title>aa

    </title>
    <meta name="author" content="m.jd.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" type="text/css" href="css/base2013.css" charset="gbk"/>


    <link rel="stylesheet" type="text/css" href="css/2013/index/index.css" charset="gbk"/>


    <link rel="apple-touch-icon-precomposed" href="../m.jd.com/images/apple-touch-icon.png"/>
    <script type="text/javascript">
        var _winLocation = window.location.href;//ªÒµ√µ±«∞“≥√Êµƒ¬∑æ∂£¨∏˘æ›¬∑æ∂πÊ‘ÚΩ¯––÷“≥ÃÊªª
        var _isWebKit = '__proto__' in {};// «∑Ò «webkitƒ⁄∫À
        if (_isWebKit) {//»Áπ˚ «webkitƒ⁄∫À£¨‘Ú∑÷ƒ£øÈ π”√zepto
            //“™ π”√zeptojsµƒ¬∑æ∂¡–±Ì£¨ø…“‘◊ˆŒ™∑÷ƒ£øÈÃÊªªµƒø™πÿ
            var _locationList = new Array();
            //ªÓ∂Øƒ£øÈ
            _locationList.push('activity/proActList');
            _locationList.push('activity/proActWareList');
            _locationList.push('activity/list');
            //…Ã∆∑∑÷¿‡ƒ£øÈ
            _locationList.push('category/');
            //æ©∂´øÏ—∂ƒ£øÈ
            _locationList.push('newslist.html');
            _locationList.push('newslist/');
            _locationList.push('news/');
            //ª˙∆±ƒ£øÈ
            _locationList.push('airline/');
            //æ∆µÍƒ£øÈ
            _locationList.push('hotel/');
            //Õ≈π∫ƒ£øÈ
            _locationList.push('tuan/');
            // ◊“≥œ‡πÿ
            _locationList.push('hotbrand.html');//∆∑≈∆π›
            //…Ã∆∑…∏—°œ‡πÿ
            _locationList.push('ware/expandSort.action');
            _locationList.push('ware/categoryFilter.action');
            _locationList.push('ware/search.action');
            _locationList.push('products/');

            _locationList.push('notice/');//Õ®∏Êƒ£øÈ
            _locationList.push('coupons/');//ÀÊµÿª›ƒ£øÈ
            _locationList.push('chongzhi/');// ÷ª˙≥‰÷µƒ£øÈ
            _locationList.push('comment/');// ÷ª˙Õ∆ºˆƒ£øÈ
            _locationList.push('pay/');//÷ß∏∂
            _locationList.push('order/');//∂©µ•
            var _needReplace = false;
            //»Áπ˚µ±«∞¬∑æ∂∑˚∫œ“™ π”√µƒ¬∑æ∂πÊ‘Ú£¨‘ÚΩ¯––ÃÊªª
            for (var i = 0; i < _locationList.length; i++) {
                if (_winLocation.indexOf(_locationList[i]) != -1) {
                    _needReplace = true;
                    break;
                }
            }
            //»Áπ˚ « ◊“≥µƒª∞£¨‘Ú π”√zepto
            var _tmp = _winLocation.replace(/(^http:\/\/)|(\/*$)/g, '');
            if (_tmp.indexOf('/') < 0 || (_tmp.split('/').length <= 2 && _tmp.indexOf('/index') >= 0)) {
                _needReplace = true;
            }
            //»Áπ˚ «…Ã∆∑œÍ«È“≥µƒª∞£¨‘Ú π”√zepto
            var _dlocationList = new Array();
            _dlocationList.push(/\/product\/([0-9]+)\.html/);
            _dlocationList.push(/\/orderComment\/([0-9]+)\.html/);
            _dlocationList.push(/\/consultations\/([0-9]+)\.html/);
            _dlocationList.push(/\/consultations\/([0-9]+)-([0-9]+)\.html/);
            _dlocationList.push(/\/comments\/([0-9]+)\.html/);
            for (var i = 0, len = _dlocationList.length; i < len; i++) {
                if (_dlocationList[i].test(_winLocation)) {
                    _needReplace = true;
                    break;
                }
            }
            if (_needReplace) {
                document.write('<script src="js/zepto.min.js"><\/script>');
                document.write('<script type="text/javascript">window.jQuery=window.Zepto;<\/script>');
            } else {
                document.write('<script src="js/jquery-1.6.2.min.js"><\/script>');
            }
        } else {//»Áπ˚ «∑«webkitƒ⁄∫À÷±Ω” π”√jquery
            document.write('<script src="js/jquery-1.6.2.min.js"><\/script>');
        }
    </script>
    <script type="text/javascript" src="js/html5/common.js"></script>
    <script type="text/javascript" src="js/html5/spin.min.js"></script>
</head>

<body id="body">
<a name="top"></a>
<header>
    <div id="unsupport"
         style="cursor: pointer;display: block;font-size: 0.925em;height: 44px;line-height: 44px; margin: 0 auto; text-align: center; width: 100%;    border-bottom: 1px solid #DAD4CF; border-top: 1px solid #FCFAF9;">
    		<span>
    			贺州脐橙
    		</span>
        <a href="index.html@v=w&sid=e0d0f025d6d3e8e8d7be5428c43ef911" style="text-decoration:underline;color:blue;">
            贺州脐橙
        </a>
    </div>

</header>
<script type="text/javascript" src="js/2013/index/index.js@v=20140319100001"></script>
<script type="text/javascript">$('body').css('background', '#d5d5d6');
$(function () {
    $('.new-footer').css('margin-top', '0px');
})

    function goDetail() {
        $.ajax({
           type:"post",
            url:"/goods/zeptoDetail",
            dataType:"json",
            async:false,
            success:function (data) {
                window.location.href="/zeptoDetail.jsp"
            }
        });
    }
</script>
<div class="new-ct main">
    <div class="banner scroll-wrapper" id="idContainer2" ontouchstart="touchStart(event)"
         ontouchmove="touchMove(event);" ontouchend="touchEnd(event);">
        <ul class="scroller" style="position:relative;left:0px;width:600%" id="idSlider2">

            <li style="width:-100.0%">
                <a href='ty&resourceValue=&sid=e0d0f025d6d3e8e8d7be5428c43ef911'>
                    <img
                        src="http://img30.360buyimg.com/mobilecms/s480x180_g15/M09/10/0F/rBEhWFMxYX4IAAAAAAErPe6Rqk8AAKrYgAI0x4AAStV419.jpg"
                        alt="贺州脐橙"/>
                </a>
            </li>
            &lt;%&ndash;<li style="width:-100.0%">
                <a href='activity/list.action@activityId=48453&resourceType=index_activity&resourceValue=&sid=e0d0f025d6d3e8e8d7be5428c43ef911'>
                    <img
                        src="http://img30.360buyimg.com/mobilecms/s480x180_g13/M09/1F/1E/rBEhU1MxX5YIAAAAAAIQiD3JNtIAAKtOgGueKwAAhCg010.jpg"
                        alt="’€…œ‘Ÿ¬˙399¡¢ºı100‘™"/>
                </a>
            </li>&ndash;%&gt;

        </ul>
        <ul class="new-banner-num new-tbl-type" id="idNum">
        </ul>
    </div>

    <div class="ad2 ad2-v1">
        <h2 class="ad-h2">’∆…œ◊®œÌÃÿª›</h2>
        <div class="ad2-big-img">
            <a href="	    	    		    		    	    		    	    		    			market/floorWare.action@modelId=197&page=1&pagesize=20&resourceType=index_floor&resourceValue=m197&sid=e0d0f025d6d3e8e8d7be5428c43ef911"><img
                src="http://img30.360buyimg.com/mobilecms/g15/M04/0F/00/rBEhWVMqgc8IAAAAAABZ260QdDsAAKY-wL1HsQAAFnz698.jpg"
                class="full-img" width=320 alt="’∆…œ◊®œÌÃÿª›"></a>
        </div>
    </div>

    <div class="ad2">
        <h2 class="ad-h2">÷µµ√¬Ú</h2>
        <div class="tbl-type">
            <div class="tbl-cell">
                <a href="	    	    		    		    	    		    	    		    			market/floorWare.action@modelId=175&page=1&pagesize=20&resourceType=index_floor&resourceValue=m175&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                    <img
                        src="http://img30.360buyimg.com/mobilecms/g12/M00/01/1C/rBEQYFMvvQkIAAAAAACOw0gac2QAADMtwCT_EQAAI7b031.jpg"
                        class="half-img" width="160" alt="¬Ëﬂ‰±¶±¥ ¬˙300ºı30">
                </a>
            </div>
            <div class="tbl-cell">
                <div class="ad1-left">
                    <a href="	    	    		    		    	    		    	    		    			market/floorWare.action@modelId=204&page=1&pagesize=20&resourceType=index_floor&resourceValue=m204&sid=e0d0f025d6d3e8e8d7be5428c43ef911"
                       class="ad-border">
                        <img
                            src="http://img30.360buyimg.com/mobilecms/g15/M08/10/0A/rBEhWFMxALMIAAAAAABl47h_-7QAAKpMQETmuwAAGX7052.jpg"
                            class="half-img" width="160" alt="º“æ”º“∑ƒ±¨øÓ«¿œ»π∫">
                    </a>
                    <a href="			../sale.jd.com/m/act/gG0rkVPK7XO.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                        <img
                            src="http://img30.360buyimg.com/mobilecms/g12/M00/01/0A/rBEQYVMsBxIIAAAAAABFElpfVzIAADFlwO7-lsAAEUq223.jpg"
                            class="half-img" width="160" alt="º“µÁº“◊∞Ω⁄ 5’€∆">
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="ad2">
        <h2 class="ad-h2">À£¥Û≈∆</h2>
        <div class="tbl-type">
            <div class="tbl-cell">
                <div class="ad1-right">
                    <a href="	    	    		    		    	    		    	    		    			market/floorWare.action@modelId=190&page=1&pagesize=20&resourceType=index_floor&resourceValue=m190&sid=e0d0f025d6d3e8e8d7be5428c43ef911"
                       class="ad-border">
                        <img
                            src="http://img30.360buyimg.com/mobilecms/g14/M06/1A/1F/rBEhVlMwBfEIAAAAAAA3wfX3gGAAAKwcgC1_twAADfZ319.jpg"
                            class="half-img" width="160" alt="”ﬁ»ÀΩ⁄≥±∆∑ µÕ÷¡3’€">
                    </a>
                    <a href="	    	    		    		    	    		    	    		    			market/floorWare.action@modelId=189&page=1&pagesize=20&resourceType=index_floor&resourceValue=m189&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                        <img
                            src="http://img30.360buyimg.com/mobilecms/g12/M00/01/1E/rBEQYFMv2LIIAAAAAAA6qZQ7QlsAADNfQLe7B8AADrB404.jpg"
                            class="half-img" width="160" alt="ƒ∏”§µÕ÷¡2’€">
                    </a>
                </div>
            </div>
            <div class="tbl-cell">
                <a href="			../sale.jd.com/m/act/vP8W3sNZIqbKO.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                    <img
                        src="http://img30.360buyimg.com/mobilecms/g15/M07/10/03/rBEhWFMv2e8IAAAAAABxbcJUJt4AAKmZwL_ZCQAAHGF336.jpg"
                        class="half-img" width="160" alt="¡¨“¬»π¬˙399ºı100-veromoda&Artka">
                </a>
            </div>
        </div>
    </div>

    <div class="ad2 ad2-v1">
        <h2 class="ad-h2">æ©∂´≥¨ –</h2>
        <div class="ad2-big-img">
            <a href="			../sale.jd.com/m/act/xbpO6Fm2KT.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911"><img
                src="http://img30.360buyimg.com/mobilecms/g14/M03/1A/08/rBEhVlMsCacIAAAAAADN82rIEPoAAKnpAJKUEwAAM4L751.jpg"
                class="full-img" width=320 alt="æ©∂´≥¨ –"></a>
        </div>
    </div>

    <div class="ad2 ad2-v1">
        <h2 class="ad-h2">…˙ªÓº“</h2>
        <div class="tbl-type">
            <div class="tbl-cell" style="width:50%;">
                <a href="			../tuan.m.jd.com/@sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                    <img
                        src="http://img30.360buyimg.com/mobilecms/g15/M0A/0B/17/rBEhWVMdUVsIAAAAAACAlGr91aoAAJwBgGCd7sAAICs605.jpg"
                        class="half-img" width="160" alt="æ©∆∑ª›">
                </a>
            </div>
            <div class="tbl-cell" style="width:50%;">
                <div class="ad1-left2">
                    <a href="	    	    		    		    	    		    	    		    			market/floorWare.action@modelId=180&page=1&pagesize=20&resourceType=index_floor&resourceValue=m180&sid=e0d0f025d6d3e8e8d7be5428c43ef911"
                       class="ad-border2">
                        <img
                            src="http://img30.360buyimg.com/mobilecms/g15/M01/10/0F/rBEhWlMxYk4IAAAAAAB3AYWEHt8AAKrZAA_D5AAAHcZ946.jpg"
                            class="half-img" width="160" alt="∞Æº“∞Æ…˙ªÓ-∞Æ√»≥Ë">
                    </a>
                    <a href="			index/life.action@resourceType=index_floor&resourceValue=&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                        <img
                            src="http://img30.360buyimg.com/mobilecms/g14/M02/0C/1F/rBEhVVLVIDkIAAAAAABx6VZLOAQAAIBogKTFBgAAHIB567.jpg"
                            class="half-img" width="160" alt="…˙ªÓ¬√––">
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="theme-pavilion">
        <div class="tbl-type">
							                        	<span class="tbl-cell">
                            	<a href="	    	    		    		    			promotion/hotSaleWare.action@module=2&type=101&resourceType=index_floor&resourceValue=t101&sid=e0d0f025d6d3e8e8d7be5428c43ef911"><img
                                    src="http://img30.360buyimg.com/mobilecms/g15/M06/0A/09/rBEhWVMWxRwIAAAAAAA3R8nql-YAAJeDQP_q4AAADdf450.jpg"
                                    class="half-img" width="160" alt="∑˛◊∞–¨√±"></a>
                            </span>
							                            <span class="tbl-cell">
                            	<a href="	    	    		    		    			promotion/hotSaleWare.action@module=2&type=102&resourceType=index_floor&resourceValue=t102&sid=e0d0f025d6d3e8e8d7be5428c43ef911"><img
                                    src="http://img30.360buyimg.com/mobilecms/g14/M0A/15/01/rBEhV1MWxUwIAAAAAAA6CBNTYdwAAJmpQPqm6gAADog053.jpg"
                                    class="half-img" width="160" alt=" ˝¬Îº“µÁ"></a>
                            </span>
        </div>
        <div class="tbl-type">
							                        	<span class="tbl-cell">
                            	<a href="	    	    		    		    			promotion/hotSaleWare.action@module=2&type=103&resourceType=index_floor&resourceValue=t103&sid=e0d0f025d6d3e8e8d7be5428c43ef911"><img
                                    src="http://img30.360buyimg.com/mobilecms/g13/M00/19/18/rBEhVFMWxXsIAAAAAAArpMSmaigAAJf-gPVH0wAACu8252.jpg"
                                    class="half-img" width="160" alt="∞ŸªıºØ"></a>
                            </span>
							                            <span class="tbl-cell">
                            	<a href="	    	    		    		    			promotion/hotSaleWare.action@module=2&type=105&resourceType=index_floor&resourceValue=t105&sid=e0d0f025d6d3e8e8d7be5428c43ef911"><img
                                    src="http://img30.360buyimg.com/mobilecms/g14/M05/15/01/rBEhV1MWxgIIAAAAAAAwtgmYQekAAJmqwGenAUAADDO658.jpg"
                                    class="half-img" width="160" alt="«◊◊”Œ›"></a>
                            </span>
        </div>
        <div class="tbl-type">
							                        	<span class="tbl-cell">
                            	<a href="	    	    		    		    			promotion/hotSaleWare.action@module=2&type=104&resourceType=index_floor&resourceValue=t104&sid=e0d0f025d6d3e8e8d7be5428c43ef911"><img
                                    src="http://img30.360buyimg.com/mobilecms/g13/M04/19/18/rBEhVFMWxiQIAAAAAAAwyBcypgwAAJf_gENkREAADDg850.jpg"
                                    class="half-img" width="160" alt="∫√ Èª„"></a>
                            </span>
							                            <span class="tbl-cell">
                            	<a href="			    		    		    			promotion/promotionActivity.action@promotionId=20&resourceType=index_floor&resourceValue=p20&sid=e0d0f025d6d3e8e8d7be5428c43ef911"><img
                                    src="http://img30.360buyimg.com/mobilecms/g13/M08/19/19/rBEhUlMWxkcIAAAAAAAz2oYklycAAJf_wDyua4AADPy752.jpg"
                                    class="half-img" width="160" alt="√¿ ≥π›"></a>
                            </span>
        </div>
    </div>
</div>
<input type="hidden" value="6" id="activity"/>
<input type="hidden" value="15" id="crazy"/>

<script>
    //ªÓ∂Ø¬÷≤•Õº
    var picCount = $("#activity").val();
    $(".pic-num1").css("width", (picCount * 30) + "px");
    var forEach = function (array, callback) {
        for (var i = 0, len = array.length; i < len; i++) {
            callback.call(this, array[i], i);
        }
    }
    var st = createPicMove("idContainer2", "idSlider2", picCount);	//Õº∆¨ ˝¡ø∏¸∏ƒ∫Û–Ë∏¸∏ƒ¥À ˝÷µ
    var nums = [];
    //≤Â»Î ˝◊÷
    for (var i = 0, n = st._count - 1; i <= n; i++) {
        var li = document.createElement("li");
        nums[i] = document.getElementById("idNum").appendChild(li);
    }
    //…Ë÷√∞¥≈•—˘ Ω
    st.onStart = function () {
        //forEach(nums, function(o, i){ o.className = ""})
        forEach(nums, function (o, i) {
            o.className = st.Index == i ? "new-tbl-cell on" : "new-tbl-cell";
        })
    }
    // ÷ÿ–¬…Ë÷√∏°∂Ø
    $("#idSlider2").css("position", "relative");

    var _initX = 0;
    var _finishX = 0;
    var _startX = 0;
    var _startY = 0;
    function touchStart(event) {
        _startX = event.touches[0].clientX;
        _startY = event.touches[0].clientY;
        _initX = _startX;
    }
    function touchMove(event) {
        var touches = event.touches;
        var _endX = event.touches[0].clientX;
        var _endY = event.touches[0].clientY;
        if (Math.abs(_endY - _startY) > Math.abs(_endX - _startX)) {
            return;
        }
        event.preventDefault();
        _finishX = _endX;
        var _absX = Math.abs(_endX - _startX);
        var lastX = $('#idSlider2').css('left').replace('px', '');
        if (_startX > _endX) {
            st.Stop();
            $('#idSlider2').css('left', (parseInt(lastX) - _absX) + 'px');
        } else {
            st.Stop();
            $('#idSlider2').css('left', (parseInt(lastX) + _absX) + 'px');
        }
        _startX = _endX;
    }
    //¥•∆¡  ¿Îø™∆¡ƒª ¬º˛
    function touchEnd(event) {
        if (_finishX == 0) {
            return;
        }
        if (_initX > _finishX) {
            bindEvent(_initX, _finishX);
        } else if (_initX < _finishX) {
            bindEvent(_initX, _finishX);
        }
        _initX = 0;
        _finishX = 0;
    }

    /**
     *  ∞Û∂®¥•∆¡¥•∑¢ ¬º˛
     * @param start
     * @param end
     */
    function bindEvent(start, end) {
        if (start >= end) {
            st.Next();
        } else {
            st.Previous();
        }
    }
    st.Run();
    var resetScrollEle = function () {
        $("#shelper").css("width", $("#newkeyword").width() + "px");
        var slider2Li = $("#idSlider2 li");
        slider2Li.css("width", $(".scroll-wrapper").width() + "px");
        $("#shelper").css("width", $("#newkeyword").width() + "px");
    }

    window.addEventListener("resize", function () {
        st.Change = st._slider.offsetWidth / st._count;
        st.Next();
        resetScrollEle();
    });
    window.addEventListener("orientationchange", function () {
        st.Change = st._slider.offsetWidth / st._count;
        st.Next();
        resetScrollEle();
    })
    resetScrollEle();

    $(function () {
        //∏˘æ›cookie≈–∂œ”√ªß «∑Ò“—æ≠÷˜∂Ø»°œ˚£¨÷˜∂Ø»°œ˚¡À‘Ú≤ª‘Ÿ≥ˆœ÷Ã·–—
        var cookieName = "ucTip";
        var cancel = false;
        var start = document.cookie.indexOf(cookieName + "=");
        if (start != -1) {
            start = start + cookieName.length + 1;
            var end = document.cookie.indexOf(";", start);
            if (end == -1) {
                end = document.cookie.length;
            }
            var ucTip = document.cookie.substring(start, end);
            if (ucTip == '1') {
                cancel = true;
            }
        }
        if (!cancel) {
            //Õ‚≤„div‘™Àÿ
            var ucElement = $('<div>').attr('id', 'ucTip').css({
                "position": "fixed",
                "bottom": "30%",
                "z-index": "10001",
                "border": "0",
                "display": "none"
            });
            //frame‘™Àÿ£¨ƒø«∞UC÷ª÷ß≥÷∏√Ω”»Î¿‡–Õ
            var ucFrame = $('<iframe>').css({
                "height": "160px",
                "width": "320px",
                "border": "0px"
            }).attr('src', '../app.uc.cn/appstore/AppCenter/frame@uc_param_str=nieidnutssvebipfcp&api_ver=2.0&id=445&bg=#ffffff');
            ucElement.append(ucFrame);
            //Ω´‘™ÀÿÃÌº”µΩ“≥√Ê
            $('body').append(ucElement);
            //ªÿµ˜∑Ω∑®
            window.addEventListener("message", function (event) {
                var dt = event.data.type;
                var dm = event.data.message;
                //≈–∂œ≥ˆœ÷µƒ«Èøˆ
                if (dm != 'not android uc' && dm != 'not exist' && dm != 'browser version error' && dm != 'already exist' && dm != undefined) {
                    $('#ucTip').show();
                }
                //≈–∂œ“˛≤ÿµƒ«Èøˆ
                if (dm == 'success' || dm == 'cancle' || dm == 'close') {
                    $('#ucTip').hide();
                    //»Áπ˚”√ªß÷˜∂Ø»°œ˚£¨‘Úº«¬ºµΩcookie£¨30ÃÏƒ⁄≤ª‘ŸÃ·–—
                    if (dm == 'cancle') {
                        var expires = new Date();
                        expires.setTime(expires.getTime() + 30 * 24 * 60 * 60 * 1000);
                        document.cookie = cookieName + '=1;expires=' + expires.toGMTString() + ';path=/;domain=.jd.com';
                        document.cookie = cookieName + '=1;expires=' + expires.toGMTString() + ';path=/;domain=.360buy.com';
                    }
                }
            }, false);
        }
    });
    function clickResponse(obj) {
        $('[res]').removeClass('on');
        $(obj).addClass('on');
        setTimeout(function () {
            $(obj).removeClass('on');
        }, 700);
    }
    $("#newkeyword").focus(function () {
        setTimeout(function () {
            window.scrollTo(0, $("#newkeyword").offset().top - 60);
        }, 10);
    });
    $(document).ready(function () {
        $("#categoryMenu li").addClass("route");
    })
    $(document).ready(function () {
        var script = document.createElement("script");
        script.src = "js/2013/installapp.js@v=20140319100001";
        script.type = "text/javascript";
        document.getElementsByTagName("head")[0].appendChild(script);
    })
</script>

<div class="login-area" id="footer">
    <div class="login">
        <a href="user/login.action@sid=e0d0f025d6d3e8e8d7be5428c43ef911">µ«¬º</a><span class="lg-bar">|</span><a
        href="user/mobileRegister.action@sid=e0d0f025d6d3e8e8d7be5428c43ef911">◊¢≤·</a>
        <span class="new-fr"><a href="showvote.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911">∑¥¿°</a><span
            class="lg-bar">|</span><a href="#top">ªÿµΩ∂•≤ø</a></span>
    </div>
    <div class="version"><a href="index.html@v=w&sid=e0d0f025d6d3e8e8d7be5428c43ef911">±Í◊º∞Ê</a><a
        href="javascript:void(0)" class="on">¥•∆¡∞Ê</a><a href="index/pcsite.action" id="toPcHome">µÁƒ‘∞Ê</a></div>
    <div class="copyright">Copyright 2015 <a href="http://www.moke8.com">ƒßøÕ∞…</a> All rights reserved.</div>
</div>

<div style="display:none;">
    <img
        src="ja.jsp@&utmn=1670342429&utmr=-&utmp=_252Findex_252Findex.action_253Fv_253Dt&guid=ON&jav=html5&pin=-&utmac=MO-J2011-1"/>
</div>
<script type="text/javascript">
    $("#unsupport").hide();
    if (!testLocalStorage()) { //not support html5
        if (0 != 0 && !$clearCart && !$teamId) {
            $("#html5_cart_num").text(0 > 0 > 0);
        }
    } else {
        updateToolBar('index');
    }

    $("#html5_cart").click(function () {
//	syncCart('e0d0f025d6d3e8e8d7be5428c43ef911',true);
        location.href = 'cart/cart.action';
    });

    function reSearch() {
        var depCity = window.sessionStorage.getItem("airline_depCityName");
        if (testSessionStorage() && isNotBlank(depCity) && !/^\s*$/.test(depCity) && depCity != "") {
            var airStr = '<form action="airline/list.action" method="post" id="reseach">'
                + '<input type="hidden" name="sid"  value="e0d0f025d6d3e8e8d7be5428c43ef911"/>'
                + '<input type="hidden" name="depCity" value="' + window.sessionStorage.getItem("airline_depCityName") + '"/>'
                + '<input type="hidden" name="arrCity" value="' + window.sessionStorage.getItem("airline_arrCityName") + '"/>'
                + '<input type="hidden" name="depDate" value="' + window.sessionStorage.getItem("airline_depDate") + '"/>'
                + '<input type="hidden" name="depTime" value="' + window.sessionStorage.getItem("airline_depTime") + '"/>'
                + '<input type="hidden" name="classNo" value="' + window.sessionStorage.getItem("airline_classNo") + '"/>'
                + '</form>';
            $("body").append(airStr);
            $("#reseach").submit();
        } else {
            window.location.href = 'airline/index.action@sid=e0d0f025d6d3e8e8d7be5428c43ef911';
        }
    }
    //banner πÿ±’µ„ª˜
    $('.div_banner_close').click(function () {
        $('#div_banner_header').unbind('click');
        jQuery.post('index/addClientCookieVal.json', function (d) {
            $('#div_banner_header').slideUp(500);
        });
    });
    //banner œ¬‘ÿµ„ª˜
    $('.div_banner_download').click(function () {
        var downloadUrl = $(this).attr('url');
        jQuery.post('index/addClientCookieVal.json', function (d) {
            window.location.href = downloadUrl;
        });
    });

</script>--%>
</body>
</html>
