<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Traveler</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/Traveler/images/LeftTopCorner.ico">

<!--<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>-->

<!-- Animate.css -->
<link rel="stylesheet" href="/Traveler/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/Traveler/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="/Traveler/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="/Traveler/css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/Traveler/css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet" href="/Traveler/css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="/Traveler/css/cs-select.css">
<link rel="stylesheet" href="/Traveler/css/cs-skin-border.css">

<link rel="stylesheet" href="/Traveler/css/style.css">
<!--分頁-->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700">
<link rel="stylesheet" href="/Traveler/css/normalize.css">
<link rel="stylesheet" href="/Traveler/css/bstyle.css">



<!-- Modernizr JS -->
<script src="/Traveler/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="/Traveler/js/respond.min.js"></script>
	<![endif]-->


<!-- jQuery -->


<script src="/Traveler/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="/Traveler/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="/Traveler/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="/Traveler/js/jquery.waypoints.min.js"></script>
<script src="/Traveler/js/sticky.js"></script>

<!-- Stellar -->
<script src="/Traveler/js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="/Traveler/js/hoverIntent.js"></script>
<script src="/Traveler/js/superfish.js"></script>
<!-- Magnific Popup -->
<script src="/Traveler/js/jquery.magnific-popup.min.js"></script>
<script src="/Traveler/js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="/Traveler/js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="/Traveler/js/classie.js"></script>
<script src="/Traveler/js/selectFx.js"></script>

<!-- Main JS -->
<script src="/Traveler/js/main.js"></script>


<script src="/Traveler/js/airplain/airSearch.js"></script>
<script src="/Traveler/js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/Traveler/js/jquery-ui.min.css">

<!-- 連結旁邊的小ICON套件  -->	
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>

</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
	
	
<section id="contentContainer" class="inner">
<h1 class="contentTitle">Tab Panel Sample</h1>


<!--/tabContainer1 -->

<section id="tabContainer1a" class="tabWidthFixed tabContainer">
<h2>Tab Pattern1a - Normal &amp; fixed tab width</h2>
<ul class="controls">
<li><a href="#tab1a_1">Balaeniceps rex</a></li>
<li><a href="#tab1a_2">Sumatran Tiger</a></li>
<li><a href="#tab1a_3">Lion</a></li>
<li><a href="#tab1a_4">Diceros bicornis</a></li>
</ul>

<div class="tabContentsContainer">
<article id="tab1a_1" class="post">
<div class="entry-thumbnail"><img alt="" src="img/01.jpg"></div>
<div class="entry-contentContainer">
<header class="entry-header">
<h1 class="entry-title">>鯨頭鸛 Balaeniceps rex</h1>
</header>
<div class="entry-content clearfix">
<p>分佈於從埃塞俄比亞區的南蘇丹到贊比亞為的濕地。在IUCN的絕種名單中為在滅絕等級II類的物種，因此受到華盛頓公約國際交易的限制。</p>
<p>全長約1.2M、體重約5Kg的大型鳥類。有一張巨大的嘴，其特徵是在獵取動物時可維持數小時的靜止，這是為了避免碩大的身體引起魚類的警戒る。喜愛大型的肺魚，會在肺魚浮出水面時以非常快的速度用嘴捕捉。需花費數小時消化，此獵捕行為佔去消耗體力的30%。</p>
</div>
</div>
</article>

<article id="tab1a_2" class="post">
<div class="entry-thumbnail"><img alt="" src="img/02.jpg"></div>
<div class="entry-contentContainer">
<header class="entry-header">
<h1 class="entry-title">蘇門答臘虎 Sumatran Tiger</h1>
</header>
<div class="entry-content clearfix">
<p>蘇門答臘虎(英文名:Sumatran Tiger)是虎中最小的亞種，為目前現存的亞種中存在最南，亦是唯一存活在島上的一種虎。</p>
<p>生存區域為為印尼蘇門答臘腦的熱帶雨林中，目前推測野生的尚有300~500隻，詳細資訊不同。為避免其於印尼絕種，1995年開始蘇門答臘虎專案以進行野生研究與保護活動。</p>

</div>
</div>
</article>

<article id="tab1a_3" class="post">
<div class="entry-thumbnail"><img alt="" src="img/03.jpg"></div>
<div class="entry-contentContainer">
<header class="entry-header">
<h1 class="entry-title">亞洲獅 Lion</h1>
</header>
<div class="entry-content clearfix">
<p>亞洲獅(學名Panthera leo persica)獅子的一個亞種，又名「波斯亞種」，是亞洲僅次於老虎之後第二的大貓科動物，原廣泛分布在從地中海西岸到印度北部的廣大地區，大部分野生種群已經滅絕，僅在印度古吉拉特邦的吉爾保護區內有少量分布。</p>
<p>亞洲獅的毛皮較其非洲近親蓬鬆，尾巴端的穗及肘上的毛髮較長。雄獅及雌獅的腹部都有明顯摺疊的皮膚。亞洲獅是所有獅子亞種中最細小的，雄獅重160-190公斤，雌獅重110-120公斤。</p>

</div>
</div>
</article>

<article id="tab1a_4" class="post">
<div class="entry-thumbnail"><img alt="" src="img/04.jpg"></div>
<div class="entry-contentContainer">
<header class="entry-header">
<h1 class="entry-title">黑犀牛 Diceros bicornis</h1>
</header>
<div class="entry-content clearfix">
<p>為犀科黑犀屬的唯一一種，產於非洲的肯尼亞、坦尚尼亞、喀麥隆、南非、納米比亞和辛巴威。儘管名叫黑犀，它們的體表顔色實際上更接近於灰白色，這個名字一般被用來區別於白犀（Ceratotherium simum），事實上這兩種犀牛的區別不在於顔色，而主要在於體型，黑犀要比白犀小許多。</p>
<p>黑犀是草食動物，它們食譜廣泛，包括樹葉、樹枝、幼芽、灌木以及水果等，據研究，它們可以吃多達220種不同的植物。在旱季，黑犀最多能夠在無水狀態下存活5天。它們主要生活在非洲大草原和熱帶叢林中。</p>

</div>
</div>
</article>

</div>
</section>
<!--/tabContainer1a -->


</section>
<!--/contentContainer -->

<footer id="footerContainer">
<div class="inner">
<p id="copyright">Copyright&copy; jQuery Design Method All Rights Reserved.</p>
</div>
</footer>
<!-- /footer -->

</div>




	
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>