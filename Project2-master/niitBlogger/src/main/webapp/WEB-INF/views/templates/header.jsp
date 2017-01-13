<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="header">
		<div class="container">
			<div class="logo">
				<a href="<c:url value="/" />"><img src="<c:url value="/resources/images/logo.png" />" class="img-responsive" alt=""></a>
			</div>
			
				<div class="head-nav">
					<span class="menu"> </span>
						<ul class="cl-effect-1">
							<li class="active"><a href="<c:url value="/" />">Home</a></li>
							<li><a href="<c:url value="aboutPage" />">About Us</a></li>
							<li><a href="<c:url value="trainings" />">Services</a></li>
							<li><a href="<c:url value="post" />">Blog</a></li>
							<li><a href="<c:url value="/index" />">Shortcodes</a></li>
							<li>
							<c:if test="${pageContext.request.userPrincipal.name != null}">
									<li>Welcome :${pageContext.request.userPrincipal.name}</li>
									<security:authentication var="user"
										property="principal.authorities" />
									<security:authorize var="loggedIn" access="isAuthenticated()">
										<security:authorize access="hasRole('ROLE_ADMIN')">
											<li>Admin</li>
										</security:authorize>
										<security:authorize access="hasRole('ROLE_USER')">
											<li>Student</li>
										</security:authorize>
									</security:authorize>

								</c:if>
							<c:url value="/perform_logout" var="logout" />
				<form action="${logout}" method="post" id="logout">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
				
							
						
						<ul class="nav navbar-nav navbar-right">

						<c:if test="${pageContext.request.userPrincipal.name != null}">
							<li>
								
								<li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img
								src="<c:url value='/resources/images/${pageContext.request.userPrincipal.name}.png' />"
								height="20" width="40" class="img-circle img-responsive " /></a>
                            <ul class="dropdown-menu">
                                <li><a href="userProfile">My Profile</a></li>
                                <li><a href="editUser">Edit</a></li>
                                <li><a href="application">Chat</a></li>
                                <li><a href="javascript:formSubmit()">Logout</a></li>
                            </ul>
                        </li>
								
							

						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name==null}">
							<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
							<li><a href="${pageContext.request.contextPath}/signUp">Sign Up</a></li>
						</c:if>

					</ul></li>
					<li><a href="<c:url value="contact" />">Contact</a></li>
										<div class="clearfix"></div>
										</ul>
				</div>
						<!-- script-for-nav -->
							<script>
								$( "span.menu" ).click(function() {
								  $( ".head-nav ul" ).slideToggle(300, function() {
									// Animation complete.
								  });
								});
							</script>
						<!-- script-for-nav -->
				
						
			
					<div class="clearfix"> </div>
		</div>
	</div>
</body>
</html>