<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css" media="all">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700' rel='stylesheet' type='text/css'>
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/responsiveslides.min.js" />"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
	
  </script>
</head>
<body>
		<div class="footer">
			<div class="col-md-3 foot-1">
				<h4>Quick Links</h4>
				<ul>
					<li><a href="#">||   Lorem Ipsum passage</a></li>
					<li><a href="#">||   Finibus Bonorum et</a></li>
					<li><a href="#">||   Treatise on the theory</a></li>
				</ul>
			</div>
			<div class="col-md-3 foot-1">
				<h4>Favorite Resources</h4>
				<ul>
					<li><a href="#">||   Characteristic words</a></li>
					<li><a href="#">||   combined with a handful</a></li>
					<li><a href="#">||   which looks reasonable</a></li>
				</ul>
			</div>
			<div class="col-md-3 foot-1">
				<h4>About Us</h4>
				<ul>
					<li><a href="#">||  Even slightly believable</a></li>
					<li><a href="#">||  Hidden in the middle</a></li>
					<li><a href="#">||  Ipsum therefore always</a></li>
				</ul>
			</div>
			<div class="col-md-3 foot-1">
				<h4>Custom Menu</h4>
				<ul>
					<li><a href="#">||  Internet tend to repeat</a></li>
					<li><a href="#">||  Alteration in some form</a></li>
					<li><a href="#">||  This book is a treatise</a></li>
				</ul>
			</div>
			
			<div class="clearfix"> </div>
			<div class="copyright">
				<p>Copyrights © 2016 Rakesh All rights reserved | <a href="privacy.html">Privacy</a></p>
			</div>
		</div>
</body>
</html>