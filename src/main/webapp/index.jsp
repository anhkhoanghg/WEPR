<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Web Programming Assignment</title>
<link rel="stylesheet" href="styles/main.css">
<link rel="icon" href="./imgs/favicon/caticon.ico" sizes="16x16">

<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css"> -->
</head>
<body>
	<div class="main-content"></div>
	<!-- Top navbar -->
	<!-- <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
		<div class="container-fluid">
			Brand
			<a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="#" target="_blank">ArusGu's profile</a>
			Form
			<form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
				<div class="form-group mb-0">
					<div class="input-group input-group-alternative">
						<div class="input-group-prepend">
							<span class="input-group-text">
								<i class="fas fa-search"></i>
							</span>
						</div>
						<div>
							<input class="form-control" placeholder="Find me." type="text">
						</div>
					</div>
				</div>

			</form>
			User
			<div class="dropdown is-active">
				<ul class="navbar-nav align-items-center d-none d-md-flex">

					<li class="nav-item dropdown">
						<a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<span class="media align-items-center">
								<span class="avatar avatar-sm rounded-circle">
									<img alt="Image Pic" src="./imgs/pic_profile.jpg">
								</span>
								<span class="media-body ml-2 d-none d-lg-block">
									<span class="mb-0 text-sm  font-weight-bold">ArusGu</span>
								</span>
							</span>
						</a>
						<div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
							<div class=" dropdown-header noti-title">
								<h6 class="text-overflow m-0">Welcome</h6>
							</div>
							<a href="#" class="dropdown-item">
								<i class="ni ni-single-02"></i>
								<span>My profile</span>
							</a>
							<a href="#" class="dropdown-item">
								<i class="ni ni-settings-gear-65"></i>
								<span>Settings</span>
							</a>
							<a href="#" class="dropdown-item">
								<i class="ni ni-calendar-grid-58"></i>
								<span>Activity</span>
							</a>
							<a href="#" class="dropdown-item">
								<i class="ni ni-support-16"></i>
								<span>My Projects</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#!" class="dropdown-item">
								<i class="ni ni-user-run"></i>
								<span>Logout</span>
							</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</nav> -->



	<!-- Header -->
	<div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center"
		style="min-height: 600px; background-image: url('./imgs/backgroundpic.jpeg'); background-size: cover; background-position: center top;">
		<!-- Mask -->
		<span class="mask bg-gradient-default opacity-8"></span>
		<!-- Header container -->
		<div class="container-fluid d-flex align-items-center">
			<div class="row">
				<div class="col-lg-7 col-md-10">
					<h1 class="display-2 text-white">Hello Guys.</h1>
					<p class="text-white mt-0 mb-5">This is my profile page where you can track my progress. I hope you have a
						pleasant experience exploring my content and pages.</p>
					<a href="#!" class="btn btn-info">Look me.</a>


				</div>
			</div>
		</div>
	</div>
	<!-- Page content -->
	<div class="container-fluid mt--7">
		<div class="row">
			<div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
				<div class="card card-profile shadow">
					<div class="row justify-content-center">
						<div class="col-lg-3 order-lg-2">
							<div class="card-profile-image">
								<a href="#">
									<img src="./imgs/pic_profile.jpg" class="rounded-circle">
								</a>
							</div>
						</div>
					</div>
					<div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
						<div class="d-flex justify-content-between">
							<a href="https://zalo.me/0965881030" class="btn btn-sm btn-info mr-4">Connect</a>
							<a href="https://www.facebook.com/AurusGu" class="btn btn-sm btn-default float-right">Message</a>
						</div>
					</div>
					<div class="card-body pt-0 pt-md-4">
						<div class="row">
							<div class="col">
								<div class="card-profile-stats d-flex justify-content-center mt-md-5">
									<div>
										<span class="heading">∞</span>
										<span class="description">Follower</span>
									</div>
									<div>
										<span class="heading">1</span>
										<span class="description">Photos</span>
									</div>
									<div>
										<span class="heading">00</span>
										<span class="description">Comments</span>
									</div>
								</div>
							</div>
						</div>
						<div class="text-center">
							<h3>
								Nguyen Hoang Anh Khoa
								<span class="font-weight-light">, 22</span>
							</h3>
							<div class="h5 font-weight-300">
								<i class="ni location_pin mr-2"></i>
								Ba Ria - Vung Tau
							</div>
							<div class="h5 mt-4">
								<i class="ni business_briefcase-24 mr-2"></i>
								Fuzzy Logic, Computer Vision, NLP
							</div>
							<div>
								<i class="ni education_hat mr-2"></i>
								Ho Chi Minh University of Education and Technology
							</div>
							<hr class="my-4">
							<p class="intro-content hideContent">
								Life imposes things on you that you can’t control, but you still have the choice of how you’re going to live
								through this.
								<br>

							</p>
							<p style="text-align: center;" class="intro-content hideContent">-ArusGu-</p>
							<div id="showmoreButton">Show more</div>
						</div>

					</div>
				</div>
			</div>
			<div class="col-xl-8 order-xl-1">
				<div class="card bg-secondary shadow">
					<div class="card-header bg-white border-0">
						<div class="row align-items-center">
							<div class="col-8">
								<h3 class="mb-0">My Works</h3>
							</div>
							<div class="col-4 text-right">
								<!-- <div class="HeartAnimation"></div> -->
								<a href="#!" class="btn btn-sm btn-primary">Settings</a>

							</div>
						</div>
					</div>
					<div class="card-body">

						<!-- Work Part -->
						<div class="ag-card-work">
							<div class="ag-format-container">
								<div class="ag-courses_box">
									<div class="ag-courses_item">
										<a href="/pages/homework1/index" class="ag-courses-item_link">
											<span class="ag-courses-item_bg"></span>
											<span class="ag-courses-item_title">Homework 1</span>
											<br>
											<span class=" ag-courses-item_date-box ag-courses-item_date"> C5E2 </span>
										</a>
									</div>

									<div class="ag-courses_item">
										<a href="/pages/homework2/index" class="ag-courses-item_link">
											<span class="ag-courses-item_bg"></span>
											<span class="ag-courses-item_title">Homework 2</span>
											<br>
											<span class=" ag-courses-item_date-box ag-courses-item_date"> C4E1 </span>
										</a>
									</div>

									<div class="ag-courses_item">
										<a href="/pages/homework3/index" class="ag-courses-item_link">
											<span class="ag-courses-item_bg"></span>
											<span class="ag-courses-item_title">Homework 3</span>
											<br>
											<span class=" ag-courses-item_date-box ag-courses-item_date"> C5E1 </span>
										</a>
									</div>

									<div class="ag-courses_item">
										<a href="/pages/homework4/index" class="ag-courses-item_link">
											<span class="ag-courses-item_bg"></span>
											<span class="ag-courses-item_title">Homework 4</span>
											<br>
											<span class=" ag-courses-item_date-box ag-courses-item_date"> C6E2 </span>
										</a>
									</div>

									<div class="ag-courses_item">
										<a href="/pages/homework5/index" class="ag-courses-item_link">
											<span class="ag-courses-item_bg"></span>
											<span class="ag-courses-item_title">Homework 5</span>
											<br>
											<span class=" ag-courses-item_date-box ag-courses-item_date"> C7E1 </span>
										</a>
									</div>

									<div class="ag-courses_item">
										<a href="/pages/homework6/index" class="ag-courses-item_link">
											<span class="ag-courses-item_bg"></span>
											<span class="ag-courses-item_title">Homework 6</span>
											<br>
											<span class=" ag-courses-item_date-box ag-courses-item_date"> C8E1 </span>
										</a>
									</div>

									<div class="ag-courses_item">
										<a href="/pages/homework7/index" class="ag-courses-item_link">
											<span class="ag-courses-item_bg"></span>
											<span class="ag-courses-item_title">Homework 7</span>
											<br>
											<span class=" ag-courses-item_date-box ag-courses-item_date"> Card List </span>
										</a>
									</div>

									<div class="ag-courses_item">
										<a href="/pages/homework8/index" class="ag-courses-item_link">
											<span class="ag-courses-item_bg"></span>
											<span class="ag-courses-item_title">Homework 8</span>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>







	<footer class="footer">
		<div class="row align-items-center justify-content-xl-between">
			<div class="col-xl-6 m-auto text-center">
				<div class="copyright">
					<p>
						Made with
						<a href="https://github.com/anhkhoanghg" target="_blank">@ArusGu </a>
						2023
					</p>
				</div>
			</div>
		</div>
	</footer>

	<script type="text/javascript">
			let showmoreButton = document.getElementById("showmoreButton");
			showmoreButton.onclick = function() {
				let introContent = document.querySelector(".intro-content");

				if (introContent.classList.contains("hideContent")) {
					introContent.classList.add("showContent")
					introContent.classList.remove("hideContent")
					showmoreButton.innerHTML = "Show less";
				} else {
					introContent.classList.add("hideContent")
					introContent.classList.remove("showContent")
					showmoreButton.innerHTML = "Show more";
				}

			}
			
		</script>
</body>
</html>