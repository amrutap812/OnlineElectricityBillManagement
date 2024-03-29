<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- import spring JSPtag lib for URL rewriting -->
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Home Page</title>

<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<script src="https://use.fontawesome.com/db006bf474.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function printDiv(divName) {
		var printContents = document.getElementById(divName).innerHTML;
		var originalContents = document.body.innerHTML;

		document.body.innerHTML = printContents;

		window.print();

		document.body.innerHTML = originalContents;

	}
</script>
<!-- Custom styles for this template-->
<link href="./../resources/css/sb-admin-2.min.css" rel="stylesheet">
<style>
.gif {
	border-radius: 20px;
	cursor: pointer;
}

.shadowme {
	box-shadow: 5px 5px 5px black;
}

tbody {
	color: black;
}

.pointer {
	cursor: pointer;
}

.navbar-nav {
	width: 600px;
}

.button {
	justify-content: center;
}
</style>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-info sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center bg-white"
				href="/">
				<div class="img-profile rounded-circle">
					<div class="sidebar-brand-text mx-3">
						<img src="./../resources/images/bulb.gif" height="70px"
							width="224.5px" alt="">
					</div>
					<!--  <i class="fas fa-laugh-wink"></i> -->
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link" href="/"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span
					style="font-size: 1.5em;">Dashboard</span></a></li>

			<hr class="sidebar-divider">

			<li class="nav-item"><a class="nav-link collapsed"
				href="<spring:url value='/consumer/home'/>" aria-expanded="true"
				aria-controls="collapseTwo"> <i class="fas fa-home"></i> <span
					style="font-size: 1.2em;">Home</span>
			</a></li>

			<li class="nav-item"><a class="nav-link collapsed"
				href="<spring:url value='/consumer/profile'/>" aria-expanded="true"
				aria-controls="collapseTwo"> <i class="fas fa-fw fa-user"></i> <span
					style="font-size: 1.2em;">Profile</span>
			</a></li>

			<li class="nav-item"><a class="nav-link collapsed"
				href="<spring:url value='/consumer/current_bill'/>"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-magic"></i> <span style="font-size: 1.2em;">Current
						Bill</span>
			</a></li>

			<li class="nav-item"><a class="nav-link collapsed"
				href="<spring:url value='/consumer/bill_history'/>"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-tasks"></i> <span style="font-size: 1.2em;">Bill
						History</span>
			</a></li>

			<li class="nav-item"><a class="nav-link collapsed"
				href="<spring:url value='/consumer/payment_history'/>"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-credit-card"></i> <span
					style="font-size: 1.2em;">Payment History</span>
			</a></li>


		</ul>
		
			<div id="content-wrapper" class="d-flex flex-column">

				<div id="content">

					<nav
						class="navbar navbar-expand navbar-black bg-black topbar mb-4 static-top shadow"
						style="background-color: black;">

						<button id="sidebarToggleTop"
							class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"> </i>
						</button>

						<ul class="navbar-nav ml-auto col-12">

							<li
								class="nav-item dropdown no-arrow h2 text-light mx-1 d-flex align-items-center pointer col-md-10">
								<i class="fas fa-fw fa-lightbulb-o mr-2 "></i><b> Online
									Electricity Bill Generator </b>
							</li>

							<!-- <div class="topbar-divider d-none d-sm-block"></div> -->

							<li class="nav-item dropdown no-arrow align-self-md-right">
								<a class="nav-link dropdown-toggle" href="#" id="userDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <img
									class="img-profile rounded-circle"
									src="./../resources/images/gif11.gif"><span
									class="mr-2 d-none d-lg-inline text-light-600 large"><b>&nbsp;&nbsp;&nbsp;${sessionScope.user_details.firstName}&nbsp;&nbsp;&nbsp;${sessionScope.user_details.lastName}</b></span>

							</a>
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
									aria-labelledby="userDropdown">
									<a class="dropdown-item"
										href="<spring:url value='/user/logout'/>" data-toggle="modal"
										data-target="#logoutModal">Logout</a>
								</div>
							</li>

						</ul>

					</nav>
					<!-- Begin Page Content -->
					<div class="container-fluid">

						<!-- Page Heading -->
						<div
							class="d-sm-flex align-items-center justify-content-between mb-4">
							<h1 class="h3 mb-0 text-gray-800">Consumer Panel</h1>
							<h1 class="h5 mb-0 text-gray-600">
								<b>For Support: </b> <i
									class="fas fa-phone-square ml-4 fa-sm fa-fw mr-2 "></i>+91
								8484904280 <i class="fa fa-envelope mr-2 ml-4"
									aria-hidden="true"> onlinebilelectricity@gmail.com</i>

							</h1>
						</div>
						<!-- Content Row -->
						<div class="col-xl-8 mb-4">

							<!-- Project Card Example -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h5 align="center" style="color: green;">${requestScope.message}</h5>
									<h5 class="m-0 font-weight-bold text-info">Current
										Electricity Bill</h5>
								</div>

								<div class="card-body row">
									<c:if test="${!empty requestScope.view_bill.id}">
										<h5 class="col-md-4">
											<b>Bill id :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.id}</h5>
										<h5 class="col-md-4">
											<b>Consumer Id :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.userId}</h5>
										<h5 class="col-md-4">
											<b>Consumer Name :</b>
										</h5>
										<h5 class="col-md-8">${sessionScope.user_details.firstName}&nbsp;&nbsp;&nbsp;${sessionScope.user_details.lastName}</h5>
										<h5 class="col-md-4">
											<b>Email :</b>
										</h5>
										<h5 class="col-md-8">${sessionScope.user_details.email}</h5>
										<h5 class="col-md-4">
											<b>Mobile :</b>
										</h5>
										<h5 class="col-md-8">${sessionScope.user_details.phone}</h5>
										<h5 class="col-md-4">
											<b>Address :</b>
										</h5>
										<h5 class="col-md-8">${sessionScope.user_details.address}</h5>
										<h5 class="col-md-4">
											<b>Zone :</b>
										</h5>
										<h5 class="col-md-8">${sessionScope.user_details.zone}</h5>
										<h5 class="col-md-4">
											<b>City :</b>
										</h5>
										<h5 class="col-md-8">${sessionScope.user_details.city}</h5>
										<h5 class="col-md-4">
											<b>State :</b>
										</h5>
										<h5 class="col-md-8">${sessionScope.user_details.state}</h5>
										<h5 class="col-md-4">
											<b>Month :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.month}</h5>
										<h5 class="col-md-4">
											<b>Year :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.year}</h5>
										<h5 class="col-md-4">
											<b>Units Consumed :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.unit}</h5>
										<h5 class="col-md-4">
											<b>Current Bill :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.currentBill}</h5>
										<h5 class="col-md-4">
											<b>Dues :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.dues}</h5>
										<h5 class="col-md-4">
											<b>Fine :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.fine}</h5>
										<h5 class="col-md-4">
											<b>Tax :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.tax}</h5>
										<h5 class="col-md-4">
											<b>Total Bill :</b>
										</h5>
										<h5 class="col-md-8">${requestScope.view_bill.totalBill}</h5>
										<h5 class="col-md-10 text-center">
											<a
												href="<spring:url value='/consumer/pay_bill?bid=${requestScope.view_bill.id}'/>">
												<input type="button" value="Pay"
												class="btn btn-outline-success" class="button">
											</a>
											<button onclick="printDiv('content-wrapper')"
												class="btn btn-outline-success" class="button">Print
											</button>
										</h5>
									</c:if>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary"
						href="<spring:url value='/user/logout'/>">Logout</a>
				</div>
			</div>
		</div>
	</div>

</body>

</html>
