<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="#">
  
  <meta name="author" content="#">

  <title>Home</title>

  <!-- Mobile Specific Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="static/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="static/plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Revolution Slider -->
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/fonts/font-awesome/css/font-awesome.css">

  <!-- REVOLUTION STYLE SHEETS -->
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/css/settings.css">
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/css/layers.css">
  <link rel="stylesheet" type="text/css" href="static/plugins/revolution-slider/revolution/css/navigation.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="static/css/style.css">
  
 
</head>

<body id="body">

<!-- Start Top Header Bar -->

<jsp:include page="header.jsp"/>

<section class="main-slider">
<div id="home_slider_wrapper" class="rev_slider_wrapper fullscreen-container" >
<div id="home_slider" class="rev_slider fullscreenbanner tiny_bullet_slider" data-version="5.4.1">
<ul> <!-- SLIDE  -->
<li data-index="rs-73" 
data-thumb="images/slider/slider-1.jpg"
data-transition="fade" 
data-slotamount="default" 
data-hideafterloop="0" 
data-hideslideonmobile="off"  
data-easein="default" 
data-easeout="default" 
data-masterspeed="300"   
data-rotate="0"  
data-saveperformance="off"  
data-title="Slide" 
data-param1="" 
data-param2="" 
data-param3="" 
data-param4="" data-param5="" 
data-param6="" 
data-param7="" 
data-param8="" 
data-param9="" 
data-param10="" 
data-description="">
<!-- MAIN IMAGE -->
<img src="static/images/slider/slider-1.jpg" 
data-bgposition="cover" 
data-bgfit="cover" 
data-bgrepeat="no-repeat" 
data-bgparallax="on" 
class="rev-slidebg" 
data-no-retina
alt="Slider image" />
<!-- LAYERS -->

<!-- LAYER NR. 1 -->
<a  href="shop.html"
class="tp-caption rev-btn  tp-resizeme" 
data-x="['left','left','left','left']" 
data-hoffset="['170','120','70','40']" 
data-y="['middle','middle','middle','middle']" 
data-voffset="['150','150','150','110']" 
data-width="150px"
data-height="50px"
data-whitespace="normal"
data-type="button" 
data-responsive_offset="on" 
data-frames='[{"delay":500,"speed":1000,"sfxcolor":"#ffff58","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoleft","frame":"999","to":"z:0;","ease":"Power4.easeOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(0,0,0);bg:rgb(255,255,255);"}]'
data-textAlign="['center','center','center','center']"
data-paddingtop="[6,6,6,6]"

style="z-index: 5; font-size: 22px; line-height: 50px; font-weight: 400; color: rgba(255,255,255,1); letter-spacing: 2px;font-family:Roboto Condensed;border-color:rgb(255,255,255);border-style:solid;border-width:1px 1px 1px 1px;outline:none;box-shadow:none;cursor:pointer;text-align:center">Shop Now</a>

<!-- LAYER NR. 3 -->
<div class="tp-caption   tp-resizeme" 
id="slide-73-layer-3" 
data-x="['left','left','left','left']" data-hoffset="['150','100','50','20']" 
data-y="['middle','middle','middle','middle']" data-voffset="['-177','-177','-177','-157']" 
data-width="none"
data-height="none"
data-whitespace="normal"
 
data-type="text" 
data-responsive_offset="on" 

data-frames='[{"delay":300,"speed":750,"sfxcolor":"#ffff58","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoleft","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
data-textAlign="['left','left','left','left']"
data-paddingtop="[10,10,10,10]"
data-paddingright="[20,20,20,20]"
data-paddingbottom="[10,10,10,10]"
data-paddingleft="[20,20,20,20]"

style="z-index: 7; white-space: normal; font-size: 20px; line-height: 20px; font-weight: 400; color: #ffffff; letter-spacing: 10px;font-family:Roboto Condensed;">PRODUCTS </div>

<!-- LAYER NR. 4 -->
<div class="tp-caption   tp-resizeme" 
id="slide-73-layer-2" 
data-x="['left','left','left','left']" data-hoffset="['150','100','50','20']" 
data-y="['middle','middle','middle','middle']" data-voffset="['-30','-30','-30','-30']" 
data-fontsize="['70','70','70','50']"
data-lineheight="['70','70','70','50']"
data-width="['650','650','620','380']"
data-height="none"
data-whitespace="normal"
 
data-type="text" 
data-responsive_offset="on" 

data-frames='[{"delay":200,"speed":750,"sfxcolor":"#ffff58","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoleft","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
data-textAlign="['left','left','left','left']"
data-paddingtop="[20,20,20,20]"
data-paddingright="[20,20,20,20]"
data-paddingbottom="[30,30,30,30]"
data-paddingleft="[20,20,20,20]"

style="z-index: 8; min-width: 650px; max-width: 650px; white-space: normal; font-size: 70px; line-height: 70px; font-weight: 400; color: #ffffff; letter-spacing: -2px;font-family:Playfair Display;">The force of nature felt in waves crashing. </div>
</li>
<!-- SLIDE  -->
<li data-index="rs-74" 
data-transition="fade" 
data-slotamount="default" 
data-hideafterloop="0" 
data-hideslideonmobile="off"  
data-easein="default" 
data-easeout="default" 
data-masterspeed="300"  
data-thumb="images/slider/slider-3.jpg"  
data-rotate="0"  
data-saveperformance="off"  
data-title="Slide">
<!-- MAIN IMAGE -->
<img src="static/images/slider/slider-3.jpg" alt=""  
data-bgposition="cover"
data-bgfit="cover"
data-bgrepeat="no-repeat"
data-bgparallax="on" 
class="rev-slidebg" data-no-retina />
<!-- LAYERS -->



<!-- LAYER NR. 6 -->
<a
href="shop.html"
class="tp-caption rev-btn  tp-resizeme" 
data-x="['left','left','left','left']"
data-hoffset="['880','760','600','330']" 
data-y="['middle','middle','middle','middle']"
data-voffset="['120','250','150','110']" 
data-width="150px"
data-height="50px"
data-whitespace="normal"
data-type="button" 
data-responsive_offset="on" 
data-frames='[{"delay":500,"speed":750,"sfxcolor":"#cbbacc","sfx_effect":"blockfromright","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoright","frame":"999","to":"z:0;","ease":"Power4.easeOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(0,0,0);bg:rgb(255,255,255);"}]'
data-textAlign="['center','center','center','center']"
data-paddingtop="[8,8,8,8]"

style="z-index: 6; white-space: normal; font-size: 22px; line-height: 50px; font-weight: 400; color: rgba(255,255,255,1); letter-spacing: 2px;font-family:Roboto Condensed;border-color:rgb(255,255,255);border-style:solid;border-width:1px 1px 1px 1px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">Shop Now</a>

<!-- LAYER NR. 7 -->
<div class="tp-caption   tp-resizeme" 
id="slide-74-layer-3" 
data-x="['left','left','left','left']" data-hoffset="['820','700','540','270']" 
data-y="['middle','middle','middle','middle']" data-voffset="['-177','-177','-177','-157']" 
data-width="none"
data-height="none"
data-whitespace="normal"
data-type="text" 
data-responsive_offset="on" 
data-frames='[{"delay":400,"speed":750,"sfxcolor":"#cbbacc","sfx_effect":"blockfromright","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoright","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
data-textAlign="['left','left','left','left']"
data-paddingtop="[10,10,10,10]"
data-paddingright="[20,20,20,20]"
data-paddingbottom="[10,10,10,10]"
data-paddingleft="[20,20,20,20]"

style="z-index: 7; white-space: normal; font-size: 20px; line-height: 20px; font-weight: 400; color: #ffffff; letter-spacing: 10px;font-family:Roboto Condensed;">PRODUCTS </div>

<!-- LAYER NR. 8 -->
<div class="tp-caption   tp-resizeme" 
id="slide-74-layer-2" 
data-x="['left','left','left','left']" data-hoffset="['360','240','110','80']" 
data-y="['middle','middle','middle','middle']" data-voffset="['-30','-30','-30','-30']" 
data-fontsize="['70','70','70','50']"
data-lineheight="['70','70','70','50']"
data-width="['650','650','620','380']"
data-height="none"
data-whitespace="normal"
data-type="text" 
data-responsive_offset="on" 
data-frames='[{"delay":300,"speed":750,"sfxcolor":"#cbbacc","sfx_effect":"blockfromright","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktoright","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
data-textAlign="['right','right','right','right']"
data-paddingtop="[20,20,20,20]"
data-paddingright="[20,20,20,20]"
data-paddingbottom="[30,30,30,30]"
data-paddingleft="[20,20,20,20]"

style="z-index: 8; min-width: 650px; max-width: 650px; white-space: normal; font-size: 70px; line-height: 70px; font-weight: 400; color: #ffffff; letter-spacing: -2px;font-family:Playfair Display;">The beauty of nature is hidden in details. 
</div>
</li>
<!-- SLIDE  -->
<li data-index="rs-75" 
data-transition="fade" 
data-slotamount="default" 
data-hideafterloop="0"
data-hideslideonmobile="off"  
data-easein="default" 
data-easeout="default" 
data-masterspeed="300" 
data-thumb="images/slider/slider-2.jpg"
data-rotate="0"  
data-saveperformance="off"  
data-title="Slide" 
data-param1="" 
data-param2="" 
data-param3="" 
data-param4="" 
data-param5=""
data-param6="" 
data-param7="" 
data-param8="" 
data-param9="" 
data-param10="" 
data-description="">
<!-- MAIN IMAGE -->
<img src="static/images/slider/slider-2.jpg"
data-bgposition="center center"
data-bgfit="cover"
data-bgrepeat="no-repeat" 
data-bgparallax="on" 
class="rev-slidebg" 
data-no-retina  alt="slider img" />
<!-- LAYERS -->


<!-- LAYER NR. 10 -->
<div class="tp-caption   tp-resizeme" 
id="slide-75-layer-2" 
data-x="['center','center','center','center']" 
data-hoffset="['0','0','0','0']" 
data-y="['middle','middle','middle','middle']" 
data-voffset="['-100','-100','-100','-90']" 
data-fontsize="['70','70','70','50']"
data-lineheight="['70','70','70','50']"
data-width="['650','650','620','380']"
data-height="none"
data-whitespace="normal"
data-type="text" 
data-responsive_offset="on" 
data-frames='[{"delay":200,"speed":750,"sfxcolor":"#058a9b","sfx_effect":"blockfromtop","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktotop","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
data-textAlign="['center','center','center','center']"
data-paddingtop="[20,20,20,20]"
data-paddingright="[20,20,20,20]"
data-paddingbottom="[30,30,30,30]"
data-paddingleft="[20,20,20,20]"

style="z-index: 6; min-width: 650px; max-width: 650px; white-space: normal; font-size: 70px; line-height: 70px; font-weight: 400; color: #ffffff; letter-spacing: -2px;font-family:Playfair Display;">Lurking in the deep of the sea, waits a monster. </div>

<!-- LAYER NR. 11 -->
<div class="tp-caption   tp-resizeme" 
id="slide-75-layer-3" 
data-x="['center','center','center','center']" 
data-hoffset="['0','0','0','0']" 
data-y="['middle','middle','middle','middle']" 
data-voffset="['-247','-247','-247','-217']" 
data-width="none"
data-height="none"
data-whitespace="normal"
data-type="text" 
data-responsive_offset="on" 
data-frames='[{"delay":300,"speed":750,"sfxcolor":"#058a9b","sfx_effect":"blockfromtop","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktotop","frame":"999","to":"z:0;","ease":"Power4.easeOut"}]'
data-textAlign="['left','left','left','left']"
data-paddingtop="[10,10,10,10]"
data-paddingright="[20,20,20,20]"
data-paddingbottom="[10,10,10,10]"
data-paddingleft="[20,20,20,20]"

style="z-index: 7; white-space: normal; font-size: 20px; line-height: 20px; font-weight: 400; color: #ffffff; letter-spacing: 10px;font-family:Roboto Condensed;">PRODUCTS </div>

<!-- LAYER NR. 12 -->
<div class="tp-caption rev-btn  tp-resizeme" 
data-x="['center','center','center','center']"
data-hoffset="['0','0','0','0']" 
data-y="['middle','middle','middle','middle']" 
data-voffset="['80','80','80','50']" 
data-width="150px"
data-height="50px"
data-whitespace="normal"
data-type="button" 
data-responsive_offset="on" 
data-frames='[{"delay":400,"speed":750,"sfxcolor":"#058a9b","sfx_effect":"blockfromtop","frame":"0","from":"z:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"sfxcolor":"#ffffff","sfx_effect":"blocktotop","frame":"999","to":"z:0;","ease":"Power4.easeOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(0,0,0);bg:rgb(255,255,255);"}]'
data-textAlign="['center','center','center','center']"
data-paddingtop="[6,6,6,6]"
style="z-index: 8; white-space: normal; font-size: 22px; line-height: 50px; font-weight: 400; color: rgba(255,255,255,1); letter-spacing: 2px;font-family:Roboto Condensed;border-color:rgb(255,255,255);border-style:solid;border-width:1px 1px 1px 1px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;text-align:center!important;">Shop Now
</div>
</li>
</ul>
<div class="tp-bannertimer" style="height: 10px; background: rgba(0, 0, 0, 0.15);"></div>
</div>
</div><!-- END REVOLUTION SLIDER -->


</section>

<section class="product-category section">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="title text-center">
<h2>Product Category</h2>
</div>
</div>
<div class="col-md-6">
<div class="category-box">
<a href="">
<img src="static/images/shop/category/category-1.jpg" alt="" />
<div class="content">
<h3>Clothes Sales</h3>
<p>Shop New Season Clothing</p>
</div>
</a>
</div>
<div class="category-box">
<a href="">
<img src="static/images/shop/category/category-2.jpg" alt="" />
<div class="content">
<h3>Smart Casuals</h3>
<p>Get Wide Range Selection</p>
</div>
</a>
</div>
</div>
<div class="col-md-6">
<div class="category-box category-box-2">
<a href="">
<img src="static/images/shop/category/category-3.jpg" alt="" />
<div class="content">
<h3>Jewellery</h3>
<p>Special Design Comes First</p>
</div>
</a>
</div>
</div>
</div>
</div>
</section>

<section class="products section bg-gray">
<div class="container">
<div class="row">
<div class="title text-center">
<h2>Trendy Products</h2>
</div>
</div>
<div class="row">

<div class="col-md-4">
<div class="product-item">
<div class="product-thumb">
<span class="bage">Sale</span>
<img class="img-responsive" src="static/images/shop/products/product-1.jpg" alt="product-img" />
<div class="preview-meta">
<ul>
<li>
<span  data-toggle="modal" data-target="#product-modal">
<i class="tf-ion-ios-search-strong"></i>
</span>
</li>
<li>
                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
</li>
<li>
<a href=""><i class="tf-ion-android-cart"></i></a>
</li>
</ul>
                      </div>
</div>
<div class="product-content">
<h4><a href="#">Reef Boardsport</a></h4>
<p class="price">$200</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="product-item">
<div class="product-thumb">
<img class="img-responsive" src="static/images/shop/products/product-2.jpg" alt="product-img" />
<div class="preview-meta">
<ul>
<li>
<span  data-toggle="modal" data-target="#product-modal">
<i class="tf-ion-ios-search-strong"></i>
</span>
</li>
<li>
                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
</li>
<li>
<a href=""><i class="tf-ion-android-cart"></i></a>
</li>
</ul>
                      </div>
</div>
<div class="product-content">
<h4><a href="product-single.html">Rainbow Shoes</a></h4>
<p class="price">$200</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="product-item">
<div class="product-thumb">
<img class="img-responsive" src="static/images/shop/products/product-3.jpg" alt="product-img" />
<div class="preview-meta">
<ul>
<li>
<span  data-toggle="modal" data-target="#product-modal">
<i class="tf-ion-ios-search-strong"></i>
</span>
</li>
<li>
                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
</li>
<li>
<a href=""><i class="tf-ion-android-cart"></i></a>
</li>
</ul>
                      </div>
</div>
<div class="product-content">
<h4><a href="product-single.html">Strayhorn SP</a></h4>
<p class="price">$230</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="product-item">
<div class="product-thumb">
<img class="img-responsive" src="static/images/shop/products/product-4.jpg" alt="product-img" />
<div class="preview-meta">
<ul>
<li>
<span  data-toggle="modal" data-target="#product-modal">
<i class="tf-ion-ios-search-strong"></i>
</span>
</li>
<li>
                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
</li>
<li>
<a href=""><i class="tf-ion-android-cart"></i></a>
</li>
</ul>
                      </div>
</div>
<div class="product-content">
<h4><a href="product-single.html">Bradley Mid</a></h4>
<p class="price">$200</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="product-item">
<div class="product-thumb">
<img class="img-responsive" src="static/images/shop/products/product-5.jpg" alt="product-img" />
<div class="preview-meta">
<ul>
<li>
<span  data-toggle="modal" data-target="#product-modal">
<i class="tf-ion-ios-search-strong"></i>
</span>
</li>
<li>
                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
</li>
<li>
<a href=""><i class="tf-ion-android-cart"></i></a>
</li>
</ul>
                      </div>
</div>
<div class="product-content">
<h4><a href="product-single.html">Rainbow Shoes</a></h4>
<p class="price">$200</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="product-item">
<div class="product-thumb">
<img class="img-responsive" src="static/images/shop/products/product-6.jpg" alt="product-img" />
<div class="preview-meta">
<ul>
<li>
<span  data-toggle="modal" data-target="#product-modal">
<i class="tf-ion-ios-search-strong"></i>
</span>
</li>
<li>
                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
</li>
<li>
<a href=""><i class="tf-ion-android-cart"></i></a>
</li>
</ul>
                      </div>
</div>
<div class="product-content">
<h4><a href="product-single.html">Rainbow Shoes</a></h4>
<p class="price">$200</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="product-item">
<div class="product-thumb">
<span class="bage">Sale</span>
<img class="img-responsive" src="static/images/shop/products/product-7.jpg" alt="product-img" />
<div class="preview-meta">
<ul>
<li>
<span  data-toggle="modal" data-target="#product-modal">
<i class="tf-ion-ios-search-strong"></i>
</span>
</li>
<li>
                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
</li>
<li>
<a href=""><i class="tf-ion-android-cart"></i></a>
</li>
</ul>
                      </div>
</div>
<div class="product-content">
<h4><a href="product-single.html">Rainbow Shoes</a></h4>
<p class="price">$200</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="product-item">
<div class="product-thumb">
<img class="img-responsive" src="static/images/shop/products/product-8.jpg" alt="product-img" />
<div class="preview-meta">
<ul>
<li>
<span  data-toggle="modal" data-target="#product-modal">
<i class="tf-ion-ios-search-strong"></i>
</span>
</li>
<li>
                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
</li>
<li>
<a href=""><i class="tf-ion-android-cart"></i></a>
</li>
</ul>
                      </div>
</div>
<div class="product-content">
<h4><a href="product-single.html">Rainbow Shoes</a></h4>
<p class="price">$200</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="product-item">
<div class="product-thumb">
<img class="img-responsive" src="static/images/shop/products/product-9.jpg" alt="product-img" />
<div class="preview-meta">
<ul>
<li>
<span  data-toggle="modal" data-target="#product-modal">
<i class="tf-ion-ios-search-strong"></i>
</span>
</li>
<li>
                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
</li>
<li>
<a href=""><i class="tf-ion-android-cart"></i></a>
</li>
</ul>
                      </div>
</div>
<div class="product-content">
<h4><a href="product-single.html">Rainbow Shoes</a></h4>
<p class="price">$200</p>
</div>
</div>
</div>

<!-- Modal -->
<div class="modal product-modal fade" id="product-modal">
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<i class="tf-ion-close"></i>
</button>
  <div class="modal-dialog " role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="row">
        <div class="col-md-8 col-sm-6 col-xs-12">
        <div class="modal-image">
        <img class="img-responsive" src="static/images/shop/products/modal-product.jpg" alt="product-img" />
        </div>
        </div>
        <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="product-short-details">
        <h2 class="product-title">GM Pendant, Basalt Grey</h2>
        <p class="product-price">$200</p>
        <p class="product-short-description">
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
        </p>
        <a href="cart.html" class="btn btn-main">Add To Cart</a>
        <a href="product-single.html" class="btn btn-transparent">View Product Details</a>
        </div>
        </div>
        </div>
        </div>
    </div>
  </div>
</div><!-- /.modal -->

</div>
</div>
</section>


<!--
Start Call To Action
==================================== -->
<section class="call-to-action bg-gray section">
<div class="container">
<div class="row">
<div class="col-md-12 text-center">
<div class="title">
<h2>SUBSCRIBE TO NEWSLETTER</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, <br> facilis numquam impedit ut sequi. Minus facilis vitae excepturi sit laboriosam.</p>
</div>
<div class="col-lg-6 col-md-offset-3">
    <div class="input-group subscription-form">
      <input type="text" class="form-control" placeholder="Enter Your Email Address">
      <span class="input-group-btn">
        <button class="btn btn-main" type="button">Subscribe Now!</button>
      </span>
    </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->

</div>
</div> <!-- End row -->
</div>    <!-- End container -->
</section>   <!-- End section -->

<section class="section instagram-feed">
<div class="container">
<div class="row">
<div class="title">
<h2>View us on instagram</h2>
</div>
</div>
<div class="row">
<div class="col-md-12">
<div id="instafeed"></div>
</div>
</div>
</div>
</section>


<%-- 
<jsp:include page="footer.jsp"/> --%>

    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="static/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="static/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="static/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="static/plugins/instafeed-js/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="static/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="static/plugins/SyoTimer/build/jquery.syotimer.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/jquery.themepunch.revolution.min.js"></script>
    
    <!-- Revolution Slider -->
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="static/plugins/revolution-slider/assets/warning.js"></script>  



    <!-- Google Mapl -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
  <script type="text/javascript" src="static/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="static/js/script.js"></script>
    


  </body>
  </html>