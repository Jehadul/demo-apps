<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- Template Name: Clip-Two - Responsive Admin Template build with Twitter Bootstrap 3.x | Author: ClipTheme -->
<!--[if IE 8]><html class="ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- start: HEAD -->
<head>
<title>DEMO</title>

<!-- start: META -->
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0, shrink-to-fit=no"">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<link rel="icon" href="assets/logo/favicon.ico">
<meta content="" name="author" />
<!-- end: META -->
<link rel="stylesheet" href="assets/css/googlefonts.css" type="text/css" />
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
<link rel="stylesheet" href="vendor/animate.css/animate.min.css"
	media="screen">
<link rel="stylesheet"
	href="vendor/perfect-scrollbar/perfect-scrollbar.min.css"
	media="screen">
<link rel="stylesheet" href="vendor/switchery/switchery.min.css"
	media="screen">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="stylesheet" href="assets/css/common.css">
<link rel="stylesheet" href="assets/css/plugins.css">
<%-- <link rel="stylesheet" href="assets/css/themes/${data.emp.uiTheme == null ? "theme-1" :  data.emp.uiTheme }.css" id="skin_color" /> --%>
<link rel="stylesheet" href="assets/css/themes/theme-1.css"
	id="skin_color" />
<link rel="stylesheet" href="vendor/DataTables/css/DT_bootstrap.css"
	media="screen">
<link rel="stylesheet" href="vendor/sweetalert/sweet-alert.css"
	media="screen">
<link rel="stylesheet" href="vendor/sweetalert/ie9.css" media="screen">
<link rel="stylesheet" href="vendor/toastr/toastr.min.css"
	media="screen">
<link rel="stylesheet"
	href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css"
	media="screen">
<link rel="stylesheet"
	href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css"
	media="screen">
<link rel="stylesheet"
	href="vendor/bootstrap-fileinput/jasny-bootstrap.min.css"
	media="screen">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="vendor/jstree/themes/default/style.min.css" rel="stylesheet"
	media="screen">

<!-- <link rel="stylesheet"	href="/assets/jquery-ui-1.12.1.custom/jquery-ui.min.css" media="all" /> -->

<!-- start: CSS REQUIRED FOR Calendar PAGE ONLY -->
<link href="vendor/fullcalendar/fullcalendar.min.css" rel="stylesheet"
	media="screen">
<link
	href="vendor/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
<!-- end: CSS REQUIRED FOR Calendar PAGE ONLY -->
</head>
<style>
#face-wrapper {
	display: inline-block;
	background-color: #e8e6e6;
}

.face {
	position: relative;
	border: 20px solid #e8e6e6;
}
</style>
<!-- end: HEAD -->
<body>
	<div id="app">
		<!-- sidebar -->
		<div class="sidebar app-aside" id="sidebar">
			<div class="sidebar-container perfect-scrollbar">
				<nav>
					<!-- start: SEARCH FORM -->
					<div class="search-form">
						<a class="s-open" href="#"> <i class="ti-search"></i>
						</a>
						<form action="/tcodesearch" method="post" class="ajax navbar-form"
							data-handler="processTcode" role="search">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <a class="s-remove" href="#"
								target=".navbar-form"> <i class="ti-close"></i>
							</a>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Enter Tcode..." name="tcode" id="tcode"
									style='text-transform: uppercase' />
								<button type="submit" class="btn tcode-search search-button">
									<i class="ti-search"></i>
								</button>
							</div>
						</form>
					</div>
					<!-- end: SEARCH FORM -->
					<!-- start: MAIN NAVIGATION MENU -->
					<ul class="main-navigation-menu" style="margin-top: 0px;">
								<li><a href="javascript:void(0)">
										<div class="item-content">
											<div class="item-media">
												<i class="ti-user"></i>
											</div>
											<div class="item-inner">
												<span class="title"> User </span><i class="icon-arrow"></i>
											</div>
										</div>
								</a>
									<ul class="sub-menu">
										<li><a href="${pageContext.request.contextPath}/user/manage" data-ajax="true"> <i class="ti-minus"></i><span
											class="title"> Manage User</span>
										</a></li>

									</ul></li>

							</ul></li>
					</ul>
					<!-- end: MAIN NAVIGATION MENU -->
				</nav>
			</div>
		</div>
		<!-- / sidebar -->
		<div class="app-content">
			<!-- start: TOP NAVBAR -->
			<header class="navbar navbar-default navbar-static-top">
				<!-- start: NAVBAR HEADER -->
				<div class="navbar-header">
					<a href="#"
						class="sidebar-mobile-toggler pull-left hidden-md hidden-lg"
						class="btn btn-navbar sidebar-toggle"
						data-toggle-class="app-slide-off" data-toggle-target="#app"
						data-toggle-click-outside="#sidebar"> <i
						class="ti-align-justify"></i>
					</a> <a class="navbar-brand" href="/"> DEMO
					</a> <a href="#"
						class="sidebar-toggler pull-right visible-md visible-lg"
						data-toggle-class="app-sidebar-closed" data-toggle-target="#app"
						id="asdf"> <i class="ti-align-justify"></i>
					</a> <a class="pull-right menu-toggler visible-xs-block"
						id="menu-toggler" data-toggle="collapse" href=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <i
						class="ti-view-grid"></i>
					</a>
				</div>
				<!-- end: NAVBAR HEADER -->
				<!-- start: NAVBAR COLLAPSE -->
				<div class="navbar-collapse collapse">
					<div class="col-md-auto visible-lg">
						<a href="/"><img class="margin-top-8" width="130" height="50"
							src="assets/images/" /></a>
					</div>
					<div class="col-md-auto visible-lg">
						<h4 class="margin-top-25">Demo Ltd.</h4>
					</div>
					<div class="col-md-auto pull-right">
						<ul class="nav navbar-right">
							<!-- start: MESSAGES -->
							<li class="dropdown"><a href="common/message/inbox"
								data-ajax="true"> <!-- <span class="dot-badge partition-red"></span> <i class="ti-comment"></i> <span>MESSAGES</span> -->
									<span class="badge"> <%-- ${data.msgCountWf} --%>
								</span> <i class="ti-comment"></i> <span>APPROVALS</span>
							</a></li>
							<!-- end: MESSAGES -->
							<!-- start: Helpdesk -->
							<li class="dropdown"><a href="helpdesk" data-ajax="true">
									<span class=""></span> <i class="fa fa-question-circle"></i> <span>HELPDESK</span>
									<!-- class= dot-badge partition-red -->
							</a></li>
							<!-- end: Helpdesk -->
							<!-- start: ACTIVITIES DROPDOWN -->
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" id="btnQuickAccess"> <i
									class="ti-check-box"></i> <span>QUICK ACCESS</span>
							</a>
								<ul
									class="dropdown-menu dropdown-light dropdown-messages dropdown-large align-left">
									<li class="view-all">
									</li>
								</ul></li>
							<!-- end: ACTIVITIES DROPDOWN -->
							<!-- start: FAVOURITES DROPDOWN -->
							<li class="dropdown"><a href class="dropdown-toggle"
								data-toggle="dropdown"> <i class="ti-star"></i> <span>FAVOURITES</span>
							</a>
								<ul
									class="dropdown-menu dropdown-light dropdown-messages dropdown-large">
									<li class="view-all"><a data-ajax="true" href="#"> Add
											Current Page </a></li>
								</ul></li>
							<!-- end: ACTIVITIES DROPDOWN -->
							<!-- start: USER OPTIONS DROPDOWN -->
							<li class="dropdown current-user"><a class="dropdown-toggle"
								data-toggle="dropdown"> <img
									src="assets/images/jehadul_hoque.jpg" alt="Jehadul Hoque"
									height="40px" width="40px"
									style="border-radius: 50%; object-fit: contain"> <%-- <span class="username">${data.emp.empName}<i class="ti-angle-down"></i></span> --%>
							</a>
								<ul class="dropdown-menu dropdown-dark emp-settings">
									<li>
										<a href="#" data-ajax="true"> My Profile </a>

									</li>
									<li><a data-toggle-class="active"
										data-toggle-target="#settings" id="ps_settings"> Personal
											Settings </a></li>
									<li><a data-toggle-class="active" onclick="openFeedback()"
										id="btnFeedback"> UI Feedback </a></li>
									<li class="dropdown"><a href="sys/ac/frm_user/myPassword"
										data-ajax="true"> Change My Password </a></li>
									<li><a href="#" id="lock"> Lock Screen </a></li>
									<li><sec:authorize access="hasRole('ROLE_USER')">
											<!-- For login user -->
											<c:url value="/logout" var="logoutUrl" />
											<form action="${logoutUrl}" method="post" id="logoutForm">
												<input type="hidden" name="${_csrf.parameterName}"
													value="${_csrf.token}" />
											</form>
											<script>
												function formSubmit() {
													sendChatMsg("userList",
															"updateUserlist");
													LoadMainContent("");
													document.getElementById(
															"logoutForm")
															.submit();
												}
											</script>

											<c:if
												test="${pageContext.request.userPrincipal.name != null}">
												<h2>
													<a href="javascript:formSubmit()"> Log out</a>
												</h2>
											</c:if>
										</sec:authorize> <!-- 			<a href="/logout">
												Log Out
											</a> --></li>
								</ul></li>
							<!-- end: USER OPTIONS DROPDOWN -->
						</ul>
						<!-- start: MENU TOGGLER FOR MOBILE DEVICES -->
						<div class="close-handle visible-xs-block menu-toggler"
							data-toggle="collapse" href=".navbar-collapse">
							<div class="arrow-left"></div>
							<div class="arrow-right"></div>
						</div>
						<!-- end: MENU TOGGLER FOR MOBILE DEVICES -->
					</div>
				</div>
				<a class="dropdown-off-sidebar"
					data-toggle-class="app-offsidebar-open" data-toggle-target="#app"
					onclick="msgCount()" id="chatBar"> <!-- <a class="dropdown-off-sidebar" data-toggle-class="app-offsidebar-open" data-toggle-target="#app" data-toggle-click-outside="#off-sidebar" onclick="msgCount()"> -->
					&nbsp;
				</a>
				<!-- end: NAVBAR COLLAPSE -->
			</header>
			<!-- end: TOP NAVBAR -->


			<div id="notification"></div>

			<div class="main-content">
			
			<div class="wrap-content container" id="container">
						<!-- start: DASHBOARD TITLE -->
						<section id="page-title" class="padding-top-15 padding-bottom-15">
							<div class="row">
								<div class="col-sm-7">
									<h1 class="mainTitle">Dashboard</h1>
									<span class="mainDescription">overview &amp; stats </span>
								</div>
								<div class="col-sm-5">
									<!-- start: MINI STATS WITH SPARKLINE -->
									<ul class="mini-stats pull-right">
										<li>
											<div class="sparkline-1">
												<span ></span>
											</div>
											<div class="values">
												<strong class="text-dark">18304</strong>
												<p class="text-small no-margin">
													Sales
												</p>
											</div>
										</li>
										<li>
											<div class="sparkline-2">
												<span ></span>
											</div>
											<div class="values">
												<strong class="text-dark">&#36;3,833</strong>
												<p class="text-small no-margin">
													Earnings
												</p>
											</div>
										</li>
										<li>
											<div class="sparkline-3">
												<span ></span>
											</div>
											<div class="values">
												<strong class="text-dark">&#36;848</strong>
												<p class="text-small no-margin">
													Referrals
												</p>
											</div>
										</li>
									</ul>
									<!-- end: MINI STATS WITH SPARKLINE -->
								</div>
							</div>
						</section>
						<!-- end: DASHBOARD TITLE -->
						<!-- start: FEATURED BOX LINKS -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-smile-o fa-stack-1x fa-inverse"></i> </span>
											<h2 class="StepTitle">Manage Users</h2>
											<p class="text-small">
												To add users, you need to be signed in as the super user.
											</p>
											<p class="links cl-effect-1">
												<a href>
													view more
												</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-paperclip fa-stack-1x fa-inverse"></i> </span>
											<h2 class="StepTitle">Manage Orders</h2>
											<p class="text-small">
												The Manage Orders tool provides a view of all your orders.
											</p>
											<p class="cl-effect-1">
												<a href>
													view more
												</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-terminal fa-stack-1x fa-inverse"></i> </span>
											<h2 class="StepTitle">Manage Database</h2>
											<p class="text-small">
												Store, modify, and extract information from your database.
											</p>
											<p class="links cl-effect-1">
												<a href>
													view more
												</a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: FEATURED BOX LINKS -->
						<!-- start: FIRST SECTION -->
						<div class="container-fluid container-fullw padding-bottom-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="row">
										<div class="col-md-7 col-lg-8">
											<div class="panel panel-white no-radius" id="visits">
												<div class="panel-heading border-light">
													<h4 class="panel-title"> Visits </h4>
													<ul class="panel-heading-tabs border-light">
														<li>
															<div class="pull-right">
																<div class="btn-group">
																	<a class="padding-10" data-toggle="dropdown">
																		<i class="ti-more-alt "></i>
																	</a>
																	<ul class="dropdown-menu dropdown-light" role="menu">
																		<li>
																			<a href="#">
																				Action
																			</a>
																		</li>
																		<li>
																			<a href="#">
																				Another action
																			</a>
																		</li>
																		<li>
																			<a href="#">
																				Something else here
																			</a>
																		</li>
																	</ul>
																</div>
															</div>
														</li>
														<li>
															<div class="rate">
																<i class="fa fa-caret-up text-primary"></i><span class="value">15</span><span class="percentage">%</span>
															</div>
														</li>
														<li class="panel-tools">
															<a data-original-title="Refresh" data-toggle="tooltip" data-placement="top" class="btn btn-transparent btn-sm panel-refresh" href="#"><i class="ti-reload"></i></a>
														</li>
													</ul>
												</div>
												<div collapse="visits" class="panel-wrapper">
													<div class="panel-body">
														<div class="height-350">
															<canvas id="chart1" class="full-width"></canvas>
															<div class="margin-top-20">
																<div class="inline pull-left">
																	<div id="chart1Legend" class="chart-legend"></div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-5 col-lg-4">
											<div class="panel panel-white no-radius">
												<div class="panel-heading border-light">
													<h4 class="panel-title"> Acquisition </h4>
												</div>
												<div class="panel-body">
													<h3 class="inline-block no-margin">26</h3> visitors on-line
													<div class="progress progress-xs no-radius">
														<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
															<span class="sr-only"> 40% Complete</span>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-4">
															<h4 class="no-margin">15</h4>
															<div class="progress progress-xs no-radius no-margin">
																<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
																	<span class="sr-only"> 80% Complete</span>
																</div>
															</div>
															Direct
														</div>
														<div class="col-sm-4">
															<h4 class="no-margin">7</h4>
															<div class="progress progress-xs no-radius no-margin">
																<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
																	<span class="sr-only"> 60% Complete</span>
																</div>
															</div>
															Sites
														</div>
														<div class="col-sm-4">
															<h4 class="no-margin">4</h4>
															<div class="progress progress-xs no-radius no-margin">
																<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
																	<span class="sr-only"> 40% Complete</span>
																</div>
															</div>
															Search
														</div>
													</div>
													<div class="row margin-top-30">
														<div class="col-xs-4 text-center">
															<div class="rate">
																<i class="fa fa-caret-up text-green"></i><span class="value">26</span><span class="percentage">%</span>
															</div>
															Mac OS X
														</div>
														<div class="col-xs-4 text-center">
															<div class="rate">
																<i class="fa fa-caret-up text-green"></i><span class="value">62</span><span class="percentage">%</span>
															</div>
															Windows
														</div>
														<div class="col-xs-4 text-center">
															<div class="rate">
																<i class="fa fa-caret-down text-red"></i><span class="value">12</span><span class="percentage">%</span>
															</div>
															Other OS
														</div>
													</div>
													<div class="margin-top-10">
														<div class="height-180">
															<canvas id="chart2" class="full-width"></canvas>
															<div class="inline pull-left legend-xs">
																<div id="chart2Legend" class="chart-legend"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: FIRST SECTION -->
						<!-- start: SECOND SECTION -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-sm-8">
									<div class="panel panel-white no-radius">
										<div class="panel-body">
											<div class="partition-light-grey padding-15 text-center margin-bottom-20">
												<h4 class="no-margin">Monthly Statistics</h4>
												<span class="text-light">based on the major browsers</span>
											</div>
											<div id="accordion" class="panel-group accordion accordion-white no-margin">
												<div class="panel no-radius">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#collapseOne" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle padding-15">
															<i class="icon-arrow"></i>
															This Month <span class="label label-danger pull-right">3</span>
														</a></h4>
													</div>
													<div class="panel-collapse collapse in" id="collapseOne">
														<div class="panel-body no-padding partition-light-grey">
															<table class="table">
																<tbody>
																	<tr>
																		<td class="center">1</td>
																		<td>Google Chrome</td>
																		<td class="center">4909</td>
																		<td><i class="fa fa-caret-down text-red"></i></td>
																	</tr>
																	<tr>
																		<td class="center">2</td>
																		<td>Mozilla Firefox</td>
																		<td class="center">3857</td>
																		<td><i class="fa fa-caret-up text-green"></i></td>
																	</tr>
																	<tr>
																		<td class="center">3</td>
																		<td>Safari</td>
																		<td class="center">1789</td>
																		<td><i class="fa fa-caret-up text-green"></i></td>
																	</tr>
																	<tr>
																		<td class="center">4</td>
																		<td>Internet Explorer</td>
																		<td class="center">612</td>
																		<td><i class="fa fa-caret-down text-red"></i></td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
												<div class="panel no-radius">
													<div class="panel-heading">
														<h4 class="panel-title">
														<a href="#collapseTwo" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle padding-15 collapsed">
															<i class="icon-arrow"></i>
															Last Month
														</a></h4>
													</div>
													<div class="panel-collapse collapse" id="collapseTwo">
														<div class="panel-body no-padding partition-light-grey">
															<table class="table">
																<tbody>
																	<tr>
																		<td class="center">1</td>
																		<td>Google Chrome</td>
																		<td class="center">5228</td>
																		<td><i class="fa fa-caret-up text-green"></i></td>
																	</tr>
																	<tr>
																		<td class="center">2</td>
																		<td>Mozilla Firefox</td>
																		<td class="center">2853</td>
																		<td><i class="fa fa-caret-up text-green"></i></td>
																	</tr>
																	<tr>
																		<td class="center">3</td>
																		<td>Safari</td>
																		<td class="center">1948</td>
																		<td><i class="fa fa-caret-up text-green"></i></td>
																	</tr>
																	<tr>
																		<td class="center">4</td>
																		<td>Internet Explorer</td>
																		<td class="center">456</td>
																		<td><i class="fa fa-caret-down text-red"></i></td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="panel panel-white no-radius">
										<div class="panel-heading border-bottom">
											<h4 class="panel-title">New Users</h4>
										</div>
										<div class="panel-body">
											<div class="text-center">
												<span class="mini-pie"> <canvas id="chart3" class="full-width"></canvas> <span>450</span> </span>
												<span class="inline text-large no-wrap">Acquisition</span>
											</div>
											<div class="margin-top-20 text-center legend-xs inline">
												<div id="chart3Legend" class="chart-legend"></div>
											</div>
										</div>
										<div class="panel-footer">
											<div class="clearfix padding-5 space5">
												<div class="col-xs-4 text-center no-padding">
													<div class="border-right border-dark">
														<span class="text-bold block text-extra-large">90%</span>
														<span class="text-light">Satisfied</span>
													</div>
												</div>
												<div class="col-xs-4 text-center no-padding">
													<div class="border-right border-dark">
														<span class="text-bold block text-extra-large">2%</span>
														<span class="text-light">Unsatisfied</span>
													</div>
												</div>
												<div class="col-xs-4 text-center no-padding">
													<span class="text-bold block text-extra-large">8%</span>
													<span class="text-light">NA</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: SECOND SECTION -->
						<!-- start: THIRD SECTION -->
						<div class="container-fluid container-fullw padding-bottom-10">
							<div class="row">
								<div class="col-sm-8">
									<div class="panel panel-white no-radius">
										<div class="panel-heading border-light">
											<h4 class="panel-title">Users</h4>
										</div>
										<div class="panel-body no-padding">
											<div class="padding-10">
												<img width="50" height="50" src="assets/images/avatar-1.jpg" class="img-circle pull-left" alt="">
												<h4 class="no-margin inline-block padding-5">Peter Clark <span class="block text-small text-left">UI Designer</span></h4>
												<div class="pull-right padding-15">
													<span class="text-small text-bold text-green"><i class="fa fa-dot-circle-o"></i> on-line</span>
												</div>
											</div>
											<div class="clearfix padding-5 space5">
												<div class="col-xs-4 text-center no-padding">
													<div class="border-right border-dark">
														<a class="text-dark" href="#">
															<i class="fa fa-heart-o text-red"></i> 250
														</a>
													</div>
												</div>
												<div class="col-xs-4 text-center no-padding">
													<div class="border-right border-dark">
														<a class="text-dark" href="#">
															<i class="fa fa-bookmark-o text-green"></i> 20
														</a>
													</div>
												</div>
												<div class="col-xs-4 text-center no-padding">
													<a class="text-dark" href="#"><i class="fa fa-comment-o text-azure"></i> 544</a>
												</div>
											</div>
											<div class="tabbable no-margin no-padding">
												<ul class="nav nav-tabs" id="myTab">
													<li class="active padding-top-5 padding-left-5">
														<a data-toggle="tab" href="#users_followers">
															Followers
														</a>
													</li>
													<li class="padding-top-5">
														<a data-toggle="tab" href="#users_following">
															Following
														</a>
													</li>
												</ul>
												<div class="tab-content">
													<div id="users_followers" class="tab-pane padding-bottom-5 active">
														<div class="panel-scroll height-200">
															<table class="table no-margin">
																<tbody>
																	<tr>
																		<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-1-small.jpg"></td>
																		<td><span class="text-small block text-light">UI Designer</span><span>Peter Clark</span></td>
																		<td class="center">
																		<div class="cl-effect-13">
																			<a href>
																				view more
																			</a>
																		</div></td>
																	</tr>
																	<tr>
																		<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-2-small.jpg"></td>
																		<td><span class="text-small block text-light">Content Designer</span><span>Nicole Bell</span></td>
																		<td class="center">
																		<div class="cl-effect-13">
																			<a href>
																				view more
																			</a>
																		</div></td>
																	</tr>
																	<tr>
																		<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-3-small.jpg"></td>
																		<td><span class="text-small block text-light">Visual Designer</span><span>Steven Thompson</span></td>
																		<td class="center">
																		<div class="cl-effect-13">
																			<a href>
																				view more
																			</a>
																		</div></td>
																	</tr>
																	<tr>
																		<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-5-small.jpg"></td>
																		<td><span class="text-small block text-light">Senior Designer</span><span>Kenneth Ross</span></td>
																		<td class="center">
																		<div class="cl-effect-13">
																			<a href>
																				view more
																			</a>
																		</div></td>
																	</tr>
																	<tr>
																		<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-4-small.jpg"></td>
																		<td><span class="text-small block text-light">Web Editor</span><span>Ella Patterson</span></td>
																		<td class="center">
																		<div class="cl-effect-13">
																			<a href>
																				view more
																			</a>
																		</div></td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
													<div id="users_following" class="tab-pane padding-bottom-5">
														<div class="panel-scroll height-200">
															<table class="table no-margin">
																<tbody>
																	<tr>
																		<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-3-small.jpg"></td>
																		<td><span class="text-small block text-light">Visual Designer</span><span>Steven Thompson</span></td>
																		<td class="center">
																		<div class="cl-effect-13">
																			<a href>
																				view more
																			</a>
																		</div></td>
																	</tr>
																	<tr>
																		<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-5-small.jpg"></td>
																		<td><span class="text-small block text-light">Senior Designer</span><span>Kenneth Ross</span></td>
																		<td class="center">
																		<div class="cl-effect-13">
																			<a href>
																				view more
																			</a>
																		</div></td>
																	</tr>
																	<tr>
																		<td class="center"><img alt="image" class="img-circle" src="assets/images/avatar-4-small.jpg"></td>
																		<td><span class="text-small block text-light">Web Editor</span><span>Ella Patterson</span></td>
																		<td class="center">
																		<div class="cl-effect-13">
																			<a href>
																				view more
																			</a>
																		</div></td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="panel panel-white no-radius">
										<div class="panel-heading border-bottom">
											<h4 class="panel-title">Specialization</h4>
										</div>
										<div class="panel-body">
											<canvas id="chart4" class="full-width"></canvas>
											<div class="margin-top-20 padding-bottom-5 inline">
												<div id="chart4Legend" class="chart-legend"></div>
											</div>
										</div>
										<div class="panel-footer">
											<div class="clearfix padding-5 space5">
												<div class="col-xs-4 text-center no-padding">
													<div class="border-right border-dark">
														<span class="text-bold block text-extra-large">90%</span>
														<span class="text-light">Satisfied</span>
													</div>
												</div>
												<div class="col-xs-4 text-center no-padding">
													<div class="border-right border-dark">
														<span class="text-bold block text-extra-large">2%</span>
														<span class="text-light">Unsatisfied</span>
													</div>
												</div>
												<div class="col-xs-4 text-center no-padding">
													<span class="text-bold block text-extra-large">8%</span>
													<span class="text-light">NA</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: THIRD SECTION -->
						<!-- start: FOURTH SECTION -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-xs-12 col-sm-4">
									<div class="row">
										<div class="col-md-12">
											<div class="panel panel-white no-radius">
												<div class="panel-body padding-20 text-center">
													<div class="space10">
														<h5 class="text-dark no-margin">Today</h5>
														<h2 class="no-margin"><small>$</small>1,450</h2>
														<span class="badge badge-success margin-top-10">253 Sales</span>
													</div>
													<div class="sparkline-4 space10">
														<span ></span>
													</div>
													<span class="text-white-transparent"><i class="fa fa-clock-o"></i> 1 hour ago</span>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="panel panel-white no-radius">
												<div class="panel-body padding-20 text-center">
													<div class="space10">
														<h5 class="text-dark no-margin">Today</h5>
														<h2 class="no-margin"><small>$</small>1,450</h2>
														<span class="badge badge-danger margin-top-10">253 Sales</span>
													</div>
													<div class="sparkline-5 space10">
														<span ></span>
													</div>
													<span class="text-white-transparent"><i class="fa fa-clock-o"></i> 1 hour ago</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4">
									<div class="panel panel-white no-radius">
										<div class="panel-heading border-bottom">
											<h4 class="panel-title">Activities</h4>
										</div>
										<div class="panel-body">
											<ul class="timeline-xs margin-top-15 margin-bottom-15">
												<li class="timeline-item success">
													<div class="margin-left-15">
														<div class="text-muted text-small">
															2 minutes ago
														</div>
														<p>
															<a class="text-info" href>
																Steven
															</a>
															has completed his account.
														</p>
													</div>
												</li>
												<li class="timeline-item">
													<div class="margin-left-15">
														<div class="text-muted text-small">
															12:30
														</div>
														<p>
															Staff Meeting
														</p>
													</div>
												</li>
												<li class="timeline-item danger">
													<div class="margin-left-15">
														<div class="text-muted text-small">
															11:11
														</div>
														<p>
															Completed new layout.
														</p>
													</div>
												</li>
												<li class="timeline-item info">
													<div class="margin-left-15">
														<div class="text-muted text-small">
															Thu, 12 Jun
														</div>
														<p>
															Contacted
															<a class="text-info" href>
																Microsoft
															</a>
															for license upgrades.
														</p>
													</div>
												</li>
												<li class="timeline-item">
													<div class="margin-left-15">
														<div class="text-muted text-small">
															Tue, 10 Jun
														</div>
														<p>
															Started development new site
														</p>
													</div>
												</li>
												<li class="timeline-item">
													<div class="margin-left-15">
														<div class="text-muted text-small">
															Sun, 11 Apr
														</div>
														<p>
															Lunch with
															<a class="text-info" href>
																Nicole
															</a>
															.
														</p>
													</div>
												</li>
												<li class="timeline-item warning">
													<div class="margin-left-15">
														<div class="text-muted text-small">
															Wed, 25 Mar
														</div>
														<p>
															server Maintenance.
														</p>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4">
									<div class="panel panel-white no-radius">
										<div class="panel-heading border-bottom">
											<h4 class="panel-title">Chat</h4>
										</div>
										<div class="panel-body no-padding">
											<div class="panel-scroll height-330 perfect-scrollbar" id="chatBox">
												<ol class="discussion">
													<li class="messages-date">
														Sunday, Feb 9, 12:58
													</li>
													<li class="self">
														<div class="message">
															<div class="message-name">
																Peter Clark
															</div>
															<div class="message-text">
																Hi, Nicole
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-1.jpg" alt="">
															</div>
														</div>
														<div class="message">
															<div class="message-name">
																Nicole Bell
															</div>
															<div class="message-text">
																How are you?
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-1.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="other">
														<div class="message">
															<div class="message-name">
																Nicole Bell
															</div>
															<div class="message-text">
																Hi, i am good
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-2.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="self">
														<div class="message">
															<div class="message-name">
																Peter Clark
															</div>
															<div class="message-text">
																Glad to see you ;)
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-1.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="messages-date">
														Sunday, Feb 9, 13:10
													</li>
													<li class="other">
														<div class="message">
															<div class="message-name">
																Nicole Bell
															</div>
															<div class="message-text">
																What do you think about my new Dashboard?
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-2.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="messages-date">
														Sunday, Feb 9, 15:28
													</li>
													<li class="other">
														<div class="message">
															<div class="message-name">
																Nicole Bell
															</div>
															<div class="message-text">
																Alo...
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-2.jpg" alt="">
															</div>
														</div>
														<div class="message">
															<div class="message-name">
																Nicole Bell
															</div>
															<div class="message-text">
																Are you there?
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-2.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="self">
														<div class="message">
															<div class="message-name">
																Peter Clark
															</div>
															<div class="message-text">
																Hi, i am here
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-1.jpg" alt="">
															</div>
														</div>
														<div class="message">
															<div class="message-name">
																Nicole Bell
															</div>
															<div class="message-text">
																Your Dashboard is great
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-1.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="messages-date">
														Friday, Feb 7, 23:39
													</li>
													<li class="other">
														<div class="message">
															<div class="message-name">
																Nicole Bell
															</div>
															<div class="message-text">
																How does the binding and digesting work in AngularJS?, Peter?
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-2.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="self">
														<div class="message">
															<div class="message-name">
																Peter Clark
															</div>
															<div class="message-text">
																oh that's your question?
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-1.jpg" alt="">
															</div>
														</div>
														<div class="message">
															<div class="message-name">
																Peter Clark
															</div>
															<div class="message-text">
																little reduntant, no?
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-1.jpg" alt="">
															</div>
														</div>
														<div class="message">
															<div class="message-name">
																Peter Clark
															</div>
															<div class="message-text">
																literally we get the question daily
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-1.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="other">
														<div class="message">
															<div class="message-name">
																Nicole Bell
															</div>
															<div class="message-text">
																I know. I, however, am not a nerd, and want to know
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-2.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="self">
														<div class="message">
															<div class="message-name">
																Peter Clark
															</div>
															<div class="message-text">
																for this type of question, wouldn't it be better to try Google?
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-1.jpg" alt="">
															</div>
														</div>
													</li>
													<li class="other">
														<div class="message">
															<div class="message-name">
																Nicole Bell
															</div>
															<div class="message-text">
																Lucky for us :)
															</div>
															<div class="message-avatar">
																<img src="assets/images/avatar-2.jpg" alt="">
															</div>
														</div>
													</li>
												</ol>
											</div>
										</div>
										<div class="message-bar">
											<div class="message-inner">
												<a class="link icon-only" href="#"><i class="fa fa-camera"></i></a>
												<div class="message-area">
													<textarea placeholder="Message"></textarea>
												</div>
												<a class="link" href="#">
													Send
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: FOURTH SECTION -->
					</div>
			<!-- start: SETTINGS -->
			<div class="settings panel panel-default hidden-xs hidden-sm" id="settings">
				<button ct-toggle="toggle" data-toggle-class="active" data-toggle-target="#settings" class="btn btn-default">
					<i class="fa fa-spin fa-gear"></i>
				</button>
				<div class="panel-heading">
					Style Selector
				</div>
				<div class="panel-body">
					<!-- start: FIXED HEADER -->
					<div class="setting-box clearfix">
						<span class="setting-title pull-left"> Fixed header</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-header" />
						</span>
					</div>
					<!-- end: FIXED HEADER -->
					<!-- start: FIXED SIDEBAR -->
					<div class="setting-box clearfix">
						<span class="setting-title pull-left">Fixed sidebar</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-sidebar" />
						</span>
					</div>
					<!-- end: FIXED SIDEBAR -->
					<!-- start: CLOSED SIDEBAR -->
					<div class="setting-box clearfix">
						<span class="setting-title pull-left">Closed sidebar</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="closed-sidebar" />
						</span>
					</div>
					<!-- end: CLOSED SIDEBAR -->
					<!-- start: FIXED FOOTER -->
					<div class="setting-box clearfix">
						<span class="setting-title pull-left">Fixed footer</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-footer" />
						</span>
					</div>
					<!-- end: FIXED FOOTER -->
					<!-- start: THEME SWITCHER -->
					<div class="colors-row setting-box">
						<div class="color-theme theme-1">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-1">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
						<div class="color-theme theme-2">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-2">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
					</div>
					<div class="colors-row setting-box">
						<div class="color-theme theme-3">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-3">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
						<div class="color-theme theme-4">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-4">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
					</div>
					<div class="colors-row setting-box">
						<div class="color-theme theme-5">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-5">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
						<div class="color-theme theme-6">
							<div class="color-layout">
								<label>
									<input type="radio" name="setting-theme" value="theme-6">
									<span class="ti-check"></span>
									<span class="split header"> <span class="color th-header"></span> <span class="color th-collapse"></span> </span>
									<span class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span class="color th-body"></span> </span>
								</label>
							</div>
						</div>
					</div>
					<!-- end: THEME SWITCHER -->
				</div>
			</div>
			<!-- end: SETTINGS -->
