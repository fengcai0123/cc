<!DOCTYPE html>
<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>
        商品详情
    </title>
    <meta name="author" content="m.jd.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" type="text/css" href="../css/base2013.css" charset="gbk"/>


    <link rel="stylesheet" type="text/css" href="../css/2013/ware/view.css" charset="gbk"/>


    <link rel="apple-touch-icon-precomposed" href="../../m.jd.com/images/apple-touch-icon.png"/>
    <script type="text/javascript">
        var _winLocation = window.location.href;//ªÒµ√µ±«∞“≥√Êµƒ¬∑æ∂£¨∏˘æ›¬∑æ∂πÊ‘ÚΩ¯––÷“≥ÃÊªª
        var _isWebKit = '__proto__' in {};// «∑Ò «webkitƒ⁄∫À
        if (_isWebKit) {//»Áπ˚ «webkitƒ⁄∫À£¨‘Ú∑÷ƒ£øÈ π”√zepto
            //“™ π”√zeptojsµƒ¬∑æ∂¡–±Ì£¨ø…“‘◊ˆŒ™∑÷ƒ£øÈÃÊªªµƒø™πÿ
            var _locationList = new Array();
            //ªÓ∂Øƒ£øÈ
            _locationList.push('../activity/proActList');
            _locationList.push('../activity/proActWareList');
            _locationList.push('../activity/list');
            //…Ã∆∑∑÷¿‡ƒ£øÈ
            _locationList.push('../category/');
            //æ©∂´øÏ—∂ƒ£øÈ
            _locationList.push('../newslist.html');
            _locationList.push('../newslist/');
            _locationList.push('../news/');
            //ª˙∆±ƒ£øÈ
            _locationList.push('../airline/');
            //æ∆µÍƒ£øÈ
            _locationList.push('../hotel/');
            //Õ≈π∫ƒ£øÈ
            _locationList.push('../tuan/');
            // ◊“≥œ‡πÿ
            _locationList.push('../hotbrand.html');//∆∑≈∆π›
            //…Ã∆∑…∏—°œ‡πÿ
            _locationList.push('../ware/expandSort.action');
            _locationList.push('../ware/categoryFilter.action');
            _locationList.push('../ware/search.action');
            _locationList.push('../products/');

            _locationList.push('../notice/');//Õ®∏Êƒ£øÈ
            _locationList.push('../coupons/');//ÀÊµÿª›ƒ£øÈ
            _locationList.push('../chongzhi/');// ÷ª˙≥‰÷µƒ£øÈ
            _locationList.push('../comment/');// ÷ª˙Õ∆ºˆƒ£øÈ
            _locationList.push('../pay/');//÷ß∏∂
            _locationList.push('../order/');//∂©µ•
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
                document.write('<script src="../js/zepto.min.js"><\/script>');
                document.write('<script type="text/javascript">window.jQuery=window.Zepto;<\/script>');
            } else {
                document.write('<script src="../js/jquery-1.6.2.min.js"><\/script>');
            }
        } else {//»Áπ˚ «∑«webkitƒ⁄∫À÷±Ω” π”√jquery
            document.write('<script src="../js/jquery-1.6.2.min.js"><\/script>');
        }
    </script>
    <script type="text/javascript" src="../js/html5/common.js"></script>
    <script type="text/javascript" src="../js/html5/spin.min.js"></script>
</head>

<body id="body">
<a name="top"></a>
<header>
    <div class="new-header">
        <a href="javascript:pageBack();" class="new-a-back" id="backUrl"><span>∑µªÿ</span></a>
        <h2>…Ã∆∑œÍ«È</h2>
        <a href="javascript:void(0)" id="btnJdkey" class="new-a-jd"><span>æ©∂´º¸</span></a>
    </div>
    <div class="new-jd-tab" style="display:none" id="jdkey">
        <div class="new-tbl-type">
            <a href="../index.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-tbl-cell">
                <span class="icon"> ◊“≥</span>
                <p style="color:#6e6e6e;"> ◊“≥</p>
            </a>
            <a href="../category/all.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-tbl-cell">
                <span class="icon2">∑÷¿‡À—À˜</span>
                <p style="color:#6e6e6e;">∑÷¿‡À—À˜</p>
            </a>
            <a href="javascript:void(0)" id="html5_cart" class="new-tbl-cell">
                <span class="icon3">π∫ŒÔ≥µ</span>
                <p style="color:#6e6e6e;">π∫ŒÔ≥µ</p>
            </a>
            <a href="../user/home.action@sid=e0d0f025d6d3e8e8d7be5428c43ef911" class="new-tbl-cell">
                <span class="icon4">Œ“µƒæ©∂´</span>
                <p style="color:#6e6e6e;">Œ“µƒæ©∂´</p>
            </a>
        </div>
    </div>
</header>
<script type="text/javascript" src="../js/2013/ware/view.js@v=20140318102290"></script>
<script type="text/javascript" src="../js/2013/ware/newView.js@v=201403181290"></script>
<div id="mainLayout" style="display:-webkit-box;">
    <div class="new-ct" id="mainStay" style="-webkit-box-flex: 1;width: 100%;">
        <div class="new-p-re">
            <div class="detail-img">
                <div class="tbl-type" id="_zoom">
                    <div id="imgSlider" style="position:relative;left:0px;">
                        <span class="tbl-cell"><img
                            src="http://img13.360buyimg.com/n1/g10/M00/05/12/rBEQWFEtb78IAAAAAAWca7l6fjYAABFowBCPIEABZyD393.jpg!q70.jpg"
                            seq="0" width="320" height="292"></span>

                    </div>
                    <ul class="new-banner-num new-b-num-v1 new-tbl-type" id="imgSliderPage" style="display:none">
                    </ul>
                </div>
            </div>
            <div class="detail-price">
                <span class="text" id="price">&yen;98.00  </span><a class="btn-sc" id="attention"><span></span></a>
            </div>
        </div>
        <input type="hidden"
               value="http://img13.360buyimg.com/n1/g10/M00/05/12/rBEQWFEtb78IAAAAAAWca7l6fjYAABFowBCPIEABZyD393.jpg!q70.jpg,"
               id="imgs"/>
        <div class="secton10">
            <div class="info">
                <a href="../detail/1016292843.html@resourceType=index_promotion&resourceValue=f1&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                    <span class="text">…Ã∆∑–≈œ¢</span>
                </a>
                <span class="icon-arr"></span>
            </div>
            <p class="detail-title">œ„÷Ø¡µµ˚ ¿À¬˛LOVE–‹±ß–ƒ–‹Ã©µœ–‹±ß±ß–‹√´»ﬁÕÊæﬂ≤ºÕﬁÕﬁπ´◊–ÕÊ≈º ∑€∫Ï…´ 1√◊ <font
                color="red">∏ﬂ∆∑÷ ¿À¬˛Œ¬‹∞∞Æ–ƒ–‹ ÀÕ–ƒ∞Æ≈Æ…˙£°</font></p>
            <p class="text3" id="promotionInfo" style=" display:none "></p>
            <p class="text2" id="vender" style=" ">∑˛ŒÒ£∫”…œ„÷Ø¡µµ˚∆ÏΩ¢µÍ∏∫‘∑¢ªı£¨≤¢Ã·π© €∫Û∑˛ŒÒ°£</p>
        </div>
        <div class="bg-h15"></div>
        <div id="spinner1" class="spinner"
             style="left:50%;position: absolute;height:120px;margin-top:50px;z-index:1000"></div>
        <div class="secton10 secton10-v1">
            <div class="info">
                <a href="#!showassess" id="btnAssess">
                    <span class="text">…Ã∆∑∆¿º€</span><span class="text-fr" id="comments"></span>
                </a>
                <span class="icon-arr"></span>
            </div>
            <div class="tbl-type">
                <span class="tbl-cell"><a
                    href="../orderComment/1016292843.html@resourceType=index_promotion&resourceValue=f1&sid=e0d0f025d6d3e8e8d7be5428c43ef911"
                    class="btn-good" id="orderComment"><span class="icon"></span>…Ã∆∑…πµ•</a></span>
                <span class="tbl-cell"><span class="bar">|</span></span>
                <span class="tbl-cell"><a
                    href="../consultations/1016292843.html@resourceType=index_promotion&resourceValue=f1&sid=e0d0f025d6d3e8e8d7be5428c43ef911"
                    class="btn-ser" id="consultations"><span class="icon"></span>π∫¬Ú◊…—Ø</a></span>
            </div>
        </div>

        <div class="cart-pop" id="cart" style="display:none;position:absolute;bottom:50%;z-index:9999">
            <div class="ico-succ">
                <span class="att-succ">ÃÌº”≥…π¶£°</span>
                <span class="cart-succ">…Ã∆∑“—≥…π¶º”»Îπ∫ŒÔ≥µ</span>
            </div>
            <div class="cp-lnk">
                <a href="javascript:void(0)" onclick="$('#cart').hide();$('#_mask').hide();" id="stroll">‘Ÿπ‰π‰</a>
                <a id="goCart"><span class="bar"></span>»•π∫ŒÔ≥µ</a>
            </div>
        </div>

        <div class="bg-h15"></div>

        <div class="secton10 secton10-v1">
            <div class="info border-b-none">
                <!--[D] º”on º˝Õ∑œÚœ¬ -->
                <a id="kucun" class="btn-option2 on">
                	<span class="s-block">
                        <span class="text-fl2">ø‚¥Ê£∫</span>
                        <span class="text-overflow">
                        	<span class="to-text" id="stockTip"> ±±æ©                                    >  ≥Ø—Ù«¯                 >     π‹◊Ø   </span>
                            <span class="to-text2" id="stockStatus"><font color="#c00">œ÷ªı</font></span>
                        </span>
                    </span>
                    </span>
                <span class="s-block" id="color_parent">
                    <span class="text-fl2">—’…´£∫</span>
                    <span class="text-overflow">
                    	<span class="to-text3" id="color1">∑€∫Ï…´	</span>
                    </span>
                </span>
                <span class="s-block" id="size_parent">
                    <span class="text-fl2">≥ﬂ¥Á£∫</span>
                    <span class="text-overflow">
						<span class="to-text3" id="size1">1√◊</span>
                    </span>
                </span>
                    <span class="icon-arr"></span>
                </a>
                <div class="detail-option" id="select" style="display:none" data="none">
                    <div class="option-section">
                        <span class="text-fl">ÀÕµΩ£∫</span>
                        <div class="option">
				                              <span>
                                <span class="select-box new-mg-b10" id="provincetip">
                                    <span></span>
                                    <select class="new-select" id="province" onchange="changeProvince();">
                                     <script language=javascript>$('#provincetip').append('±±æ©');</script><option
                                        value="1" selected="selected"> ±±æ©</option> <option value="2"> …œ∫£</option> <option
                                        value="3"> ÃÏΩÚ</option> <option value="4"> ÷ÿ«Ï</option> <option value="5"> ∫”±±</option> <option
                                        value="6"> …ΩŒ˜</option> <option value="7"> ∫”ƒœ</option> <option value="8"> ¡…ƒ˛</option> <option
                                        value="9"> º™¡÷</option> <option value="10"> ∫⁄¡˙Ω≠</option> <option value="11"> ƒ⁄√…π≈</option> <option
                                        value="12"> Ω≠À’</option> <option value="13"> …Ω∂´</option> <option value="14"> ∞≤ª’</option> <option
                                        value="15"> ’„Ω≠</option> <option value="16"> ∏£Ω®</option> <option value="17"> ∫˛±±</option> <option
                                        value="18"> ∫˛ƒœ</option> <option value="19"> π„∂´</option> <option value="20"> π„Œ˜</option> <option
                                        value="21"> Ω≠Œ˜</option> <option value="22"> Àƒ¥®</option> <option value="23"> ∫£ƒœ</option> <option
                                        value="24"> πÛ÷›</option> <option value="25"> ‘∆ƒœ</option> <option value="26"> Œ˜≤ÿ</option> <option
                                        value="27"> …¬Œ˜</option> <option value="28"> ∏ À‡</option> <option value="29"> «‡∫£</option> <option
                                        value="30"> ƒ˛œƒ</option> <option value="31"> –¬ΩÆ</option> <option value="32"> Ã®ÕÂ</option> <option
                                        value="42"> œ„∏€</option> <option value="43"> ∞ƒ√≈</option> <option value="84"> µˆ”„µ∫</option>                                    </select>
                                </span>
                            </span>
    				      				                          <span>
                            <span class="select-box new-mg-b10" id="citytip">
                                <span></span>
                                <select class="new-select" id="city" onchange="changeCity();">
    								 <script language=javascript>$('#citytip').append('≥Ø—Ù«¯');</script><option
                                    value="72" selected="selected"> ≥Ø—Ù«¯</option> <option
                                    value="2800"> ∫£µÌ«¯</option> <option value="2801"> Œ˜≥««¯</option> <option
                                    value="2802"> ∂´≥««¯</option> <option value="2803"> ≥ÁŒƒ«¯</option> <option
                                    value="2804"> –˚Œ‰«¯</option> <option value="2805"> ∑·Ã®«¯</option> <option
                                    value="2806">  Øæ∞…Ω«¯</option> <option value="2807"> √≈Õ∑πµ</option> <option
                                    value="2808"> ∑ø…Ω«¯</option> <option value="2809"> Õ®÷›«¯</option> <option
                                    value="2810"> ¥Û–À«¯</option> <option value="2812"> À≥“Â«¯</option> <option
                                    value="2814"> ª≥»·«¯</option> <option value="2816"> √‹‘∆«¯</option> <option
                                    value="2901"> ≤˝∆Ω«¯</option> <option value="2953"> ∆Ωπ»«¯</option> <option
                                    value="3065"> —”«Ïœÿ</option>    							</select>
                            </span>
                        </span>
                         				                         <span id="country_1">
                            <span class="select-box new-mg-b10" id="countrytip">
                                <span></span>
                                <select class="new-select" id="country" onchange="changeCountry();">
                                 <option value="2799"> »˝ª∑“‘ƒ⁄</option> <option value="2819"> »˝ª∑µΩÀƒª∑÷Æº‰</option> <option
                                    value="2839"> Àƒª∑µΩŒÂª∑÷Æº‰</option> <option value="2840"> ŒÂª∑µΩ¡˘ª∑÷Æº‰</option> <script
                                    language=javascript>$('#countrytip').append('π‹◊Ø');</script><option value="4137"
                                                                                                         selected="selected"> π‹◊Ø</option> <option
                                    value="4139"> ±±‘∑</option> <option value="4211"> ∂®∏£◊Ø</option>                                </select>
                            </span>
                        </span>
    				    					<span id="town_1">
    				                            <span class="detail-msg"><span class="text-red"
                                                                               id="stockStatus_1">œ÷ªı</span></span>
                        </div>
                    </div>

                    <div class="option-section new-mg-t10">
                        <span class="text-fl">—’…´£∫</span>
                        <div class="option" id="color">
                            <a title="∑€∫Ï…´" date="current" class="btn-color-op new-mg-b10 on">∑€∫Ï…´</a>&nbsp;<a
                            title="◊œ…´" date="noCurrent" href="javascript:void(0)" wareId='1018601194'
                            class="btn-color-op new-mg-b10">◊œ…´</a>&nbsp;<a title="«È¬¬“ª∂‘" date="noCurrent"
                                                                             href="javascript:void(0)"
                                                                             wareId='1073457037'
                                                                             class="btn-color-op new-mg-b10">«È¬¬“ª∂‘</a>&nbsp;
                        </div>
                    </div>

                    <div class="option-section new-mg-t10">
                        <span class="text-fl">≥ﬂ¥Á£∫</span>
                        <div class="option" id="size">
                            <a title="1√◊" class="btn-color-op new-mg-b10 on" date="currentSize">1√◊</a>&nbsp;<a
                            title="1.3√◊" href="javascript:void(0)" date="noCurrentSize" wareId="1016292844"
                            class="btn-color-op new-mg-b10">1.3√◊</a>&nbsp;                        </div>
                    </div>

                    <div class="option-section new-mg-t10">
                        <span class="text-fl"> ˝¡ø£∫</span>
                        <div class="option">
                            <span class="add-del">
                                <a class="btn-add" id="plus" onclick="reduce();"><span></span></a>
                                <input type="text" class="new-input" value="1" id="number" onblur="modify();"/>
                                <a class="btn-del" id="minus" onclick="add();"><span></span></a>
                            </span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="tbl-type detail-tbn detail-tbn-v1" id="jshopAndIm">
    		            <span class="tbl-cell" id="kefu" style="display:none">
            	<a href="javascript:void(0)" id="im" class="btn-call"><span></span>¡™œµøÕ∑˛</a>
            </span>
        </div>


        <div class="img-list-border">
            <div class="img-list">
                <p>“≤–Ìƒ˙ªπœ≤ª∂£∫</p>
                <div class="img-sild" style="position:relative;height:150px;">
                    <div ontouchstart="touchStart(event)" ontouchmove="touchMove(event);" ontouchend="touchEnd(event);">
                        <div class="tbl-type" style="position:absolute;height:150px;margin-left:-100px" id="slide">
                            <a class="tbl-cell"
                               href="326419.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g14/M07/07/1B/rBEhVlKxAjQIAAAAAAKWD_zNyNsAAHBwANiiA0AApYn133.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">µ¬‹Ω –ƒ”Ô »˝÷÷ø⁄Œ∂ªÏ◊∞º––ƒ«…øÀ¡¶£®¿Ò∫–◊∞£©109g°æ±æ≤˙∆∑≤ª∫¨¿Ò∆∑¥¸£¨«Î“‘ ’µΩ µŒÔŒ™◊º°ø</span>
                                    <span class="pro-price">&yen;39.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1017564882.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g10/M00/0C/02/rBEQWFFHxycIAAAAAAPmUtoRtOEAACW_QAGQn4AA-Zq654.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">∞ÆŒ®“ªœ ª®ÀŸµ› √µπÂª® ¯œ ª®øÏµ› …˙»’¿ÒŒÔ¿Ò∆∑  Õ¨≥«ª®µÍÀÕª® A11∂‰∫Ï√µπÂ2–°–‹ œ ª®</span>
                                    <span class="pro-price">&yen;88.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1004209079.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g3/M00/04/16/rBEGE0-txpcIAAAAAAQW2myesa0AAA6vQEKKCcABBby814.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">≤ª∂˛¿Ò∑ª 24KΩ≤≠√µπÂª® …˙»’¿ÒŒÔ ÀÕ≈Æ”— ¿œ∆≈ Ãÿ±¿Ò∆∑ÀÕ≈Æ…˙±Ì∞◊«ÛªÈ ÷‹ƒÍºÕƒÓ¿ÒŒÔ</span>
                                    <span class="pro-price">&yen;108.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1006697761.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g8/M03/00/04/rBEHaFAssr0IAAAAAAIm51SuflcAAABpgGjhzcAAib_271.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">√´»ﬁÕÊæﬂ–‹ Ã©µœ–‹ ≤ºÕﬁÕﬁ …˙»’¿ÒŒÔ≈Æ ÕÊ≈º ±ß±ß–‹ π´◊– ŒßΩÌ–‹ ¥Û∫≈dmsky ∆’Õ®∞¸◊∞ 70¿Â√◊</span>
                                    <span class="pro-price">&yen;78.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="967598.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g14/M08/0E/0C/rBEhVVImyv0IAAAAAANNgeAPv_sAACz4ABk44QAA02Z277.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span
                                        class="pro-title">“‚¥Û¿˚Ω¯ø⁄FerreroRocher∑—¡–¬ﬁÈªπ˚Õ˛ªØ«…øÀ¡¶32¡£◊Í Ø◊∞400g</span>
                                    <span class="pro-price">&yen;114.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="326434.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g14/M04/07/1C/rBEhV1KxC8cIAAAAAAH9mMhz0DgAAHB6gJuVscAAf2w707.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">µ¬‹Ω –ƒ”Ô ¡Ω÷÷ø⁄Œ∂ªÏ◊∞º––ƒ«…øÀ¡¶£®¿Ò∫–◊∞£©98g°æ±æ≤˙∆∑≤ª∫¨¿Ò∆∑¥¸£¨«Î“‘ ’µΩ µŒÔŒ™◊º°ø</span>
                                    <span class="pro-price">&yen;38.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="326343.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/561/3488c1bf-6d8c-4eda-aa46-31b7abf42e48.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">µ¬‹Ω Àøª¨≈£ƒÃ«…øÀ¡¶£®ÕÎ◊∞£©294g </span>
                                    <span class="pro-price">&yen;39.90</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1020391584.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g10/M00/18/15/rBEQWVF3OyMIAAAAAAF5rkuIBlMAAE0XwKpfs4AAXnG752.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">¿ÒŒﬁ”« ø·ÕÊ“Ù¿÷Ã®µ∆LED“ÙœÏµ∆ –¬∆ÊÃÿ¿Ò∆∑¥¥“‚…˙»’¿ÒŒÔÀÕ≈Æ”— ÀÕƒ–≈Æ…˙≈Û”— µ”√–°¿ÒŒÔ</span>
                                    <span class="pro-price">&yen;79.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1035918068.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g13/M07/0B/0D/rBEhUlIy0y4IAAAAAAF7jVOKYsoAADHxgPZKK4AAXul369.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">ﬂ«‡‡‡‡ √´»ﬁÕÊæﬂ •µÆ¿œ»À—©»Àπ´◊–±ß’Ì–¬ƒÍ¿ÒŒÔ ¥Û∫≈50cm</span>
                                    <span class="pro-price">&yen;69.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="983186.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g13/M06/0C/18/rBEhVFKxcFcIAAAAAAI7KnDAmg0AAG9OAH0A4MAAjtC785.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">µ¬‹Ω –«≤  π˚» º∞∂‡÷÷ø⁄Œ∂«…øÀ¡¶£®Õ∞◊∞£©160g </span>
                                    <span class="pro-price">&yen;43.80</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1014244403.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g9/M02/12/07/rBEHaVDsHu8IAAAAAASuo7UQBaoAADj2QN8FwcABK67527.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">À≥∑·øÏµ› ≈Æ»ÀΩ⁄¿ÒŒÔ «…øÀ¡¶ ∑—¡–¬ﬁ «…øÀ¡¶¿Ò∫– Ω…Øº” µ¬‹Ω–ƒ”°¿Ò∫–◊∞ ÀÕ ÷Ã·¥¸</span>
                                    <span class="pro-price">&yen;99.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1005492310.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g5/M02/13/19/rBEIC0_9HkcIAAAAAARvvxF-4skAAD3cgBqDqcABG_X926.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">ﬂ«‡‡‡‡ Ã©µœ–‹√´»ﬁÕÊæﬂ π´◊–ÕÊ≈º¥Û∫≈ 1.6√◊ «≥◊ÿ 1.6m</span>
                                    <span class="pro-price">&yen;99.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1057015852.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g13/M03/05/17/rBEhU1KImK0IAAAAAAUt6zzOShcAAFliAKEjEQABS4D128.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">√Œ‘µ’˝∞Êø…∞Æº™œÈ–°¬Ìπ´◊–ÕÊ≈º√´»ﬁÕÊæﬂÕﬁÕﬁ¥¥“‚¬ÌƒÍ–¬ƒÍ”ﬁ»ÀΩ⁄¿Ò∆∑ÀÕ±¶±¶∫¢◊”–°≈Û”—ÀÕ “ª∂‘ ∏ﬂ35cm*øÌ32cm</span>
                                    <span class="pro-price">&yen;78.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1023954.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g14/M07/10/04/rBEhV1L96AoIAAAAAAC9YyfhH0EAAIpXwLYuS0AAL17179.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">±∂ÀπÃÿ BST-0137∏Ò¿ºƒæ “∆∂ØµÁ‘¥ 10400∫¡∞≤ ∞◊…´</span>
                                    <span class="pro-price">&yen;59.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1044010385.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g14/M06/15/18/rBEhVVJeVb0IAAAAAAKTjnrlQf0AAEQDAPqRw8AApOm493.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">ƒ¶√◊ÃÿMOMITON ∂¨ºæ∫´∞Ê≈Æ ø±£≈Ø∑«≥£–“‘À–¶¡≥√´œﬂ√±◊”ŒßΩÌ ÷Ã◊Ã◊◊∞»˝º˛Ã◊Ã◊º˛ ∞◊…´ æ˘¬Î</span>
                                    <span class="pro-price">&yen;109.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1006865306.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g13/M07/0F/1D/rBEhUlJXaHgIAAAAAAYPws73otAAAEABAM41k0ABg_a341.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">∆Æ∆Æ¡˙ 1.3√◊≈ø≈øπ∑ ≥¨¥Û∫≈√´»ﬁÕÊæﬂπ´◊–  ≈ø≈øπ∑±ß’Ì …˙»’¿ÒŒÔÀÕ≈Æ…˙«◊◊”»’ ◊ÿ…´ 1.3√◊</span>
                                    <span class="pro-price">&yen;76.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1003395585.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g13/M00/0D/08/rBEhVFK0BSYIAAAAAAN1kveyTugAAHDhgMY7r8AA3Wq976.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">∞Ÿ≤›Œ∂º·π˚≥¥ªıƒÃœ„œƒÕ˛“ƒπ˚200g°¡3∞¸∏…π˚Ãÿ≤˙ƒ⁄∏Ωø™π˚∆˜</span>
                                    <span class="pro-price">&yen;39.90</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1041666740.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g15/M0A/0E/12/rBEhWFJWWzUIAAAAAAFxA44pRwAAAD-oQPXviQAAXEb425.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span
                                        class="pro-title">«◊◊”»’ Œı‘√ ∂‡π¶ƒ‹∂˘ÕØÀ´√Ê¥≈–‘ª≠∞Âø……˝Ωµ∫⁄∞◊ª≠∞ÂÀ´√Ê–¥◊÷∞Â</span>
                                    <span class="pro-price">&yen;87.00</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="967592.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g14/M08/0E/0C/rBEhV1ImyvkIAAAAAAGWh3TOL7AAACz3wPGRI4AAZaf296.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">“‚¥Û¿˚Ω¯ø⁄FerreroRocher∑—¡–¬ﬁÈªπ˚Õ˛ªØ«…øÀ¡¶3¡£◊∞37.5g</span>
                                    <span class="pro-price">&yen;7.20</span>
                                </div>
                            </a>
                            <a class="tbl-cell"
                               href="1072999409.html@resourceType=recommend_productDetail&sid=e0d0f025d6d3e8e8d7be5428c43ef911">
                                <div class="pro-img">
                                    <span class="img"><img
                                        src="http://img10.360buyimg.com/n4/g14/M09/0A/1B/rBEhV1LE02cIAAAAAAOUKp0tncsAAHnPAIPzRQAA5RC956.jpg"
                                        width="85" height="85" alt="img"></span>
                                    <span class="pro-title">«◊◊”»’ ±£µŸø® √´»ﬁÕÊæﬂ –‹’∆øøµÊ ±ß’Ì ¿∂…´ 45*40cm</span>
                                    <span class="pro-price">&yen;29.00</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tbl-type detail-tbn2" id="cart1" style="position:fixed;bottom:0;z-index:10;">
            <div class="tbl-cell"><a id="directorder" class="btn-buy btn-buy-def"><span></span>¡¢º¥π∫¬Ú</a>
            </div>
            <div class="tbl-cell"><a id="add_cart" class="btn-cart btn-cart-def"><span></span>º”»Îπ∫ŒÔ≥µ</a>
            </div>
        </div>
    </div>
    <div id="showassess" style="margin-bottom: 20px;-webkit-box-flex: 1;width: 100%;display: none!important;">
        <div class="new-ct">
            <div class="new-goods-details" id="_assessContent">

                <div class="new-gd-introduce">
                    <div class="new-fl w56 new-mg-r12">
                        <span class="new-span-block"><span class="new-txt36" id="_assessScale">0</span><span
                            class="new-txt-sign">%</span></span>
                        <span class="new-span-block new-mg-t5">∫√∆¿∂»</span>
                    </div>
                    <div class="new-gd-txt3">
                        <span class="new-span-block" id="_btnGoodScale"><span>∫√∆¿</span><span class="new-txtb8"
                                                                                               id="_goodScale">£®0%£©</span><span
                            class="new-gd-bar new-mg-l12"><span style="width:0%"
                                                                id="_goodScaleImg"></span></span></span>
                        <span class="new-span-block" id="_btnMediumScale"><span>÷–∆¿</span><span class="new-txtb8"
                                                                                                 id="_mediumScale">£®0%£©</span><span
                            class="new-gd-bar new-mg-l12"><span style="width:0%"
                                                                id="_mediumScaleImg"></span></span></span>
                        <span class="new-span-block" id="_btnGoodScale"><span>≤Ó∆¿</span><span class="new-txtb8"
                                                                                               id="_badScale">£®0%£©</span><span
                            class="new-gd-bar new-mg-l12"><span style="width:0%" id="_badScaleImg"></span></span></span>
                    </div>
                    <div class="new-estimate new-tbl-type new-mg-t15">
                        <div class="new-tbl-cell on" id="_tabGoodScale" onclick="changeAssessType(this)">
                            <span>∫√∆¿</span><span id="goodNum">0</span>
                        </div>
                        <div class="new-tbl-cell" id="_tabMediumScale" onclick="changeAssessType(this)">
                            <span>÷–∆¿</span><span id="mediumNum">0</span>
                        </div>
                        <div class="new-tbl-cell" id="_tabBadScale" onclick="changeAssessType(this)">
                            <span>≤Ó∆¿</span><span id="badNum">0</span>
                        </div>
                    </div>
                </div>

                <div id="_assessItem">
                </div>

            </div>
        </div>

        <div class="new-paging" id="_assessPage">
        </div>

    </div>
</div>
<span class="pop-attention" style="position:absolute;z-index:9999;display:none" id="save">
 	<span class="icon-succ" id="guanzhu">πÿ◊¢≥…π¶</span>
</span>

<div class="new-gd-view-img" id="popImg" style="position:absolute;display:none;z-index:9000" onclick="hidePop()">
    <div class="new-banner new-p-re">
        <ul class="new-tbl-type" style="position:absolute;margin-left:0" id="bigImgSlider">
            <li class="new-tbl-cell"><a href="javascript:void(0)"><span class="new-shade-img"><img
                src="http://img13.360buyimg.com/n1/g10/M00/05/12/rBEQWFEtb78IAAAAAAWca7l6fjYAABFowBCPIEABZyD393.jpg!q70.jpg"
                width="300" height="300" alt=""></span></a></li>
        </ul>
        <ul class="new-banner-num new-tbl-type" id="bigImgSliderPage">
        </ul>
    </div>
</div>

<div id="yuyuecart" style="width:100%;position:fixed;bottom:0;display:none">
    <div class="tbl-type detail-tbn2">
        <div class="tbl-cell">
            <a class="btn-cart" data id="cartyuyue"><span></span>º”»Îπ∫ŒÔ≥µ</a>
        </div>
    </div>
</div>

<div id="yuyueing" style="width:100%;position:fixed;bottom:0;display:none">
    <div class="tbl-type detail-tbn2">
        <div class="tbl-cell">
            <a class="btn-yuyue" data><span class="icon-clock"></span><span id="yuyuetime"></span><span
                class="txt-yuyue" id="yuyuecontext"><span></span>ø™ º‘§‘º</span></a>
        </div>
    </div>
</div>

<div id="yuyuenow" style="width:100%;position:fixed;bottom:0;display:none">
    <div class="tbl-type detail-tbn2">
        <div class="tbl-cell">
            <a class="btn-yuyue2" href="../yuyue/1016292843.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911"
               id="nowyuyue"><span class="icon-clock"></span><span class="txt-yuyue" id="yuyuenowcontext"><span></span>¡¢º¥‘§‘º</span></a>
        </div>
    </div>
</div>

<div id="yuyueend" style="position:fixed;bottom:0;display:none">
    <div class="tbl-type detail-tbn2">
        <div class="tbl-cell">
            <a class="btn-yuyue2"><span class="icon-clock"></span><span class="txt-yuyue"
                                                                        id="yuyueendcontext"><span></span></span></a>
        </div>
    </div>
</div>
<div class="pop" style="position:absolute;z-index:9999;display:none" id="tip">
    <p><span class="pop-txt"></span>
    </p>
    <div class="pop-txt-area">
           <span class="pop-txt2" id="tips">
    		</span>
    </div>
    <div class="tbl-type">
        <a href="javascript:void(0)" onclick="$('#tip').hide();$('#_mask').hide();" class="tbl-cell" style="width:50%">÷™µ¿¿≤</a>
        <a href="javascript:void(0)" id="myyuyue" class="tbl-cell" style="width:50%">Œ“µƒ‘§‘º</a>
    </div>
</div>


<input type="hidden" id="currentWareId" value="1016292843"/>
<input type="hidden" id="sid" value="e0d0f025d6d3e8e8d7be5428c43ef911"/>
<input type="hidden" id="resourceType" value="index_promotion"/>
<input type="hidden" id="resourceValue" value="f1"/>
<input type="hidden" id="stockFlag" value="true"/>
<input type="hidden" id="teamSign" value="0"/>
<input type="hidden" id="imgUrl"
       value="http://img13.360buyimg.com/n5/g10/M00/05/12/rBEQWFEtb78IAAAAAAWca7l6fjYAABFowBCPIEABZyD393.jpg!q70.jpg"/>
<input type="hidden" id="goodName" name="goodName"
       value="œ„÷Ø¡µµ˚ ¿À¬˛LOVE–‹±ß–ƒ–‹Ã©µœ–‹±ß±ß–‹√´»ﬁÕÊæﬂ≤ºÕﬁÕﬁπ´◊–ÕÊ≈º ∑€∫Ï…´ 1√◊"/ >
<input type="hidden" id="jdPrice" name="jdPrice" value="98.00"/>
<input type="hidden" id="jshop" value=""/>
<input type="hidden" id="passportUse" value="false"/>
<input type="hidden" id="yuyueType" value="5"/>
<script>
    var time, type;

    $(function () {
        if ('true' == 'false') {
            $('#cart1').css("display", "none");
        }
        else if (!(true && true && 98.00 > 0)) {
            $('#add_cart').addClass('btn-cart-def');
            $('#directorder').addClass('btn-buy-def');
            $("#add_cart").unbind('click');
            $("#directorder").unbind('click');
        } else {
            $('#add_cart').removeClass('btn-cart-def');
            $('#directorder').removeClass('btn-buy-def');
        }

        type = $('#yuyueType').val();
        switch (type) {
            case '1':
                $('#yuyueing').find('.btn-yuyue').attr('data', '1');
                $('#yuyuecontext').text('\u5f00\u59cb\u9884\u7ea6');
                $('#yuyueing').show();
                time = new Date().getTime() / 1000 + parseInt('-1'.length > 0 ? '-1' : 0);
                getTimes();
                break
            case '2':
                $('.btn-yuyue2').attr('data', '2');
                $('#yuyuenow').show();
                $('#yuyuenow').css("display", "block");
                time = new Date().getTime() / 1000 + parseInt('-1'.length > 0 ? '-1' : 0);
                getTimes();
                break
            case '3':
                $('#yuyueing').find('.btn-yuyue').attr('data', '3');
                $('#yuyuecontext').text('\u5f00\u59cb\u62a2\u8d2d');
                if ('-1'.length > 0) {
                    time = new Date().getTime() / 1000 + parseInt('-1'.length > 0 ? '-1' : 0);
                    getTimes();
                } else {
                    $('#yuyuetime').text('\u62a2\u8d2d\u672a\u5f00\u59cb\uff0c\u656c\u8bf7\u5173\u6ce8');
                    $('#yuyuecontext').empty();
                }
                $('#yuyueing').show();
                break
            case '4':
                $('#yuyuecart').show();
                $('#cartyuyue').attr('data', '4');
                time = new Date().getTime() / 1000 + parseInt('-1'.length > 0 ? '-1' : 0);
                getTimes();
                break
            case '5':
                if ('true' == 'false') {
                    $('#yuyueendcontext').text('\u62a2\u8d2d\u5df2\u7ed3\u675f');
                    $('#yuyueend').css("display", "block");
                } else {
                    $('#cart1').css("display", "table");
                    $('#add_cart').removeClass('btn-cart-def');
                    $('#directorder').removeClass('btn-buy-def');
                }
                break
            default:
                $('#cart1').css("display", "table");
                $('#add_cart').removeClass('btn-cart-def');
                $('#directorder').removeClass('btn-buy-def');
        }


        var pid = $('#currentWareId').val();

        var url = "../../chat1.jd.com/api/checkChat@pid=" + pid + "&entry=m_item&returnCharset=gb2312&callback=?";
        if (true) {
            jQuery.getJSON(url, doResult);
        }

        function doResult(json) {
            if ((!json || !json.code) && ('' == '')) {
                $('#jshopAndIm').css('display', 'none');
                return
            }
            if (!json || !json.code) {
                return;
            }
            var code = json.code;
            if (code == 1) {
                if ($('#currentWareId').val() < 1000000000) {
                    $('#kefu').show();
                    $('#im').addClass("btn-call-def");
                } else {
                    $('#kefu').show();
                    var url = "../../im.m.jd.com/merchant/index@v=6&sku=" + $('#currentWareId').val() + "&imgUrl=" + $('#imgUrl').val() + "&goodName=" + encodeURIComponent(encodeURIComponent($("#goodName").val())) + "&jdPrice=" + $('#jdPrice').val() + "&sid=" + $('#sid').val();
                    $('#im').attr('href', url);
                }
            } else if (code == 2 || code == 3 || code == 9) {
                $('#kefu').show();
                $('#im').addClass("btn-call-def");
            } else if ('' == '') {
                $('#jshopAndIm').css('display', none);
            }
        }

        $('#kucun').bind("click", function () {
            if ($('#select').attr("data") == 'none') {
                $('#select').css("display", "block");
                $('#select').attr("data", "block")
                $('#kucun').removeClass("on");
            } else {
                $('#select').css("display", "none");
                $('#select').attr("data", "none")
                $('#kucun').addClass("on");
            }
        });

        if (window.localStorage) {
            addLocalStorage($('#currentWareId').val());
        }
        $('footer').css('visibility', 'hidden');
    })
</script>

<div class="login-area" id="footer">
    <div class="login">
        <a href="../user/login.action@sid=e0d0f025d6d3e8e8d7be5428c43ef911">µ«¬º</a><span class="lg-bar">|</span><a
        href="../user/mobileRegister.action@sid=e0d0f025d6d3e8e8d7be5428c43ef911">◊¢≤·</a>
        <span class="new-fr"><a href="../showvote.html@sid=e0d0f025d6d3e8e8d7be5428c43ef911">∑¥¿°</a><span
            class="lg-bar">|</span><a href="#top">ªÿµΩ∂•≤ø</a></span>
    </div>
    <div class="version"><a href="../index.html@v=w&sid=e0d0f025d6d3e8e8d7be5428c43ef911">±Í◊º∞Ê</a><a
        href="javascript:void(0)" class="on">¥•∆¡∞Ê</a><a href="../index/pcsite.action" id="toPcHome">µÁƒ‘∞Ê</a></div>
    <div class="copyright">&copy; m.jd.com</div>
</div>

<div style="display:none;">
    <img
        src="../ja.jsp@&utmn=1789619538&utmr=-&utmp=_252Fware_252Fview.action_253Fsid_253De0d0f025d6d3e8e8d7be5428c43ef911%26resou0870093159"/>
</div>
<script type="text/javascript">
    $("#unsupport").hide();
    if (!testLocalStorage()) { //not support html5
        if (0 != 0 && !$clearCart && !$teamId) {
            $("#html5_cart_num").text(0 > 0 > 0);
        }
    } else {
        updateToolBar('');
    }

    $("#html5_cart").click(function () {
//	syncCart('e0d0f025d6d3e8e8d7be5428c43ef911',true);
        location.href = '../cart/cart.action';
    });

    function reSearch() {
        var depCity = window.sessionStorage.getItem("airline_depCityName");
        if (testSessionStorage() && isNotBlank(depCity) && !/^\s*$/.test(depCity) && depCity != "") {
            var airStr = '<form action="../airline/list.action" method="post" id="reseach">'
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
            window.location.href = '../airline/index.action@sid=e0d0f025d6d3e8e8d7be5428c43ef911';
        }
    }
    //banner πÿ±’µ„ª˜
    $('.div_banner_close').click(function () {
        $('#div_banner_header').unbind('click');
        jQuery.post('../index/addClientCookieVal.json', function (d) {
            $('#div_banner_header').slideUp(500);
        });
    });
    //banner œ¬‘ÿµ„ª˜
    $('.div_banner_download').click(function () {
        var downloadUrl = $(this).attr('url');
        jQuery.post('../index/addClientCookieVal.json', function (d) {
            window.location.href = downloadUrl;
        });
    });

</script>
</body>
</html>
