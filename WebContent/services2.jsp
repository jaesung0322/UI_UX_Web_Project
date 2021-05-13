<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Dog Shelter</title>

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
<link rel="stylesheet" href="etc/css/all.min.css" />
<link rel="stylesheet" href="etc/css/bootstrap.min.css" />
<link rel="stylesheet" href="etc/css/templatemo-style.css"
	type="text/css">
<link rel="stylesheet" href="etc/css/ionicons.min.css">
</head>
<body>
	<div class="parallax-window" data-parallax="scroll"
		data-image-src="etc/img/bg-10.jpg">
		<div class="container-fluid">
			<div class="row tm-brand-row1">
				<div class="col-lg-12 col-1">
					<div id="btn_group">
						<div id="btn_group">
							<button id="test_btn1">
								<a class="nav-link1" href="LoginForm.jsp">Login</a>
							</button>
							<button id="test_btn1">
								<a class="nav-link1" href="JoinForm.jsp">Logout</a>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row tm-brand-row">
				<div class="col-lg-4 col-11">
					<div class="tm-brand-container tm-bg-white-transparent">
						<img src="etc/img/logo_0.png" alt="App on Mobile mockup" />
						<div class="tm-brand-texts">
							<h1 class="tm-brand-name">Dog Shelter</h1>
							<p class="small">Give new life to puppies!!</p>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-1">
					<div class="tm-nav">
						<nav
							class="navbar navbar-expand-lg navbar-light tm-bg-white-transparent tm-navbar">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarNav"
								aria-controls="navbarNav" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarNav">
								<ul class="navbar-nav">
									<li class="nav-item">
										<div class="tm-nav-link-highlight"></div> <a class="nav-link"
										href="index.jsp">Home</a>
									</li>
									<li class="nav-item">
										<div class="tm-nav-link-highlight"></div> <a class="nav-link"
										href="about.jsp">About</a>
									</li>
									<li class="nav-item green-highlight active">
										<div class="tm-nav-link-highlight"></div> <a
										class="nav-link dropdown-toggle js-scroll-trigger"
										data-toggle="dropdown" href="./services.jsp">Adoption</a>
										<ul class="dropdown-menu">
											<li class="dropdown-item"><a href="./services.jsp"><p
														style="color: grey;">센터내 동물</p></a></li>
											<li class="dropdown-item"><a href="./services2.jsp"><p
														style="color: grey;">입양된 동물</p></a></li>
										</ul>
									</li>
									<li class="nav-item">
										<div class="tm-nav-link-highlight"></div> <a class="nav-link"
										href="testimonials.jsp">Board</a>
									</li>
									<li class="nav-item">
										<div class="tm-nav-link-highlight"></div> <a class="nav-link"
										href="contact.jsp">Direction</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>

			<!-- Services header -->
			<section class="row" id="tmServices">
				<div class="col-lg-3 col-md-4 col-sm-6 mb-4">
					<div class="card h -100">
						<a href="#"><img class="card-img-top" src="../강아지.jfif" alt=""></a>
						<div class="cradbody">
							<table class="table">
								<thead>
									<tr>
										<td>고유번호</td>
										<td>이름</td>
										<td>견종</td>
										<td>성별</td>
										<td>나이</td>
										<td>병이력</td>
										<td>발견장소</td>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</section>

			<!-- Page footer -->
			<footer class="row">
				<p class="col-12 text-white text-center tm-copyright-text">
					Copyright &copy; 2021 BitComputer JAVA #203. Designed by <a
						href="#" class="tm-copyright-link">Team 3</a>
				</p>
			</footer>
		</div>
		<!-- .container-fluid -->
	</div>

	<script src="etc/js/jquery.min.js"></script>
	<script src="etc/js/parallax.min.js"></script>
	<script src="etc/js/bootstrap.min.js"></script>
	<script>
		$(function() {
			$('.tabgroup > div').hide();
			$('.tabgroup > div:first-of-type').show();
			$('.tabs a')
					.click(
							function(e) {
								e.preventDefault();
								var $this = $(this), tabgroup = '#'
										+ $this.parents('.tabs').data(
												'tabgroup'), others = $this
										.closest('li').siblings().children('a'), target = $this
										.attr('href');
								others.removeClass('active');
								$this.addClass('active');
								$(tabgroup).children('div').hide();
								$(target).show();

								// Scroll to tab content (for mobile)
								if ($(window).width() < 992) {
									$('jsp, body').animate(
											{
												scrollTop : $(
														"#first-tab-group")
														.offset().top
											}, 200);
								}
							})
		});
	</script>
</body>
</html>