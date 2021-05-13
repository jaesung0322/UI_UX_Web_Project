<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		data-image-src="etc/img/bg-07.jpg">
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
									<li class="nav-item">
										<div class="tm-nav-link-highlight"></div> <a
										class="nav-link dropdown-toggle js-scroll-trigger"
										data-toggle="dropdown" href="services.jsp">Adoption</a>
										<ul class="dropdown-menu">
											<li class="dropdown-item"><a href="./services.jsp"
												style="color: grey;"> 센터내 동물 </a></li>
											<li class="dropdown-item"><a href="./services2.jsp"
												style="color: grey;"> 입양된 동물 </a></li>
										</ul>
									</li>
									<li class="nav-item green-highlight active">
										<div class="tm-nav-link-highlight"></div> <a class="nav-link"
										href="./testimonials.jsp">Board<span class="sr-only">(current)</span></a>
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

			<!-- Testimonials header -->
			<section class="row" id="tmServices">
				<div class="col-12">
					<br>

					<h1 class="text-center">
						<a href="#">게시판</a>
					</h1>
					<br> <br>
					<table class="table table-hover table-striped text-center"
						style="border: 1px solid; background-color: white;">
						<thead>
							<tr>
								<td style="text-align: center;"><strong>공지사항</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>공지</td>
								<td>공지제목</td>
								<td>관리자</td>
								<td>작성일자</td>
							</tr>
						</tbody>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>작성일자</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>게시판 no</td>
								<td>게시판 title</td>
								<td>user id</td>
								<td>이건 잘...</td>
							</tr>
						</tbody>
						<!-- 게시판 글 부분 -->
						<tbody>
							<c:forEach var="board" items="${boards}">
								<tr>
									<td>${board.number}</td>
									<td>${board.title}</td>
									<td>${board.id }</td>
									<td>${board.creDate}</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>


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
	<script src="etc/slick/slick.min.js"></script>
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

			$('.tm-carousel').slick({
				dots : true,
				infinite : false,
				arrows : false,
				speed : 300,
				slidesToShow : 3,
				slidesToScroll : 2,
				responsive : [ {
					breakpoint : 1024,
					settings : {
						arrows : false,
						slidesToShow : 2,
						slidesToScroll : 1,
						infinite : true,
						dots : true
					}
				}, {
					breakpoint : 600,
					settings : {
						arrows : false,
						slidesToShow : 1,
						slidesToScroll : 1
					}
				}, {
					breakpoint : 480,
					settings : {
						arrows : false,
						slidesToShow : 1,
						slidesToScroll : 1
					}
				}
				// You can unslick at a given breakpoint now by adding:
				// settings: "unslick"
				// instead of a settings object
				]
			});
		});
	</script>
</body>
</html>