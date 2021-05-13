<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Dog Shelter</title>

  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
  <link rel="stylesheet" href="etc/css/all.min.css" />
  <link rel="stylesheet" href="etc/css/bootstrap.min.css" />
  <link rel="stylesheet" href="etc/css/templatemo-style.css" type="text/css">
  <link rel="stylesheet" href="etc/css/ionicons.min.css">
</head>
<body>
  <div class="parallax-window" data-parallax="scroll" data-image-src="etc/img/bg-02.jpg">    
    <div class="container-fluid">
      <div class="row tm-brand-row1">
        <div class="col-lg-12 col-1">
          <div id="btn_group">
            <div id="btn_group">
              <button id="test_btn1"><a class="nav-link1" href="LoginForm.jsp">Login</a></button>
              <button id="test_btn1"><a class="nav-link1" href="JoinForm.jsp">Register</a></button>
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
            <nav class="navbar navbar-expand-lg navbar-light tm-bg-white-transparent tm-navbar">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item active">
                    <div class="tm-nav-link-highlight"></div>
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                    <div class="tm-nav-link-highlight"></div>
                    <a class="nav-link" href="about.jsp">About</a>
                  </li>
                  <li class="nav-item">
                    <div class="tm-nav-link-highlight"></div>
                    <a class="nav-link dropdown-toggle js-scroll-trigger" data-toggle="dropdown"
                      href="services.jsp">Adoption</a>
                    <ul class="dropdown-menu">
                      <li class="dropdown-item"><a href="services.jsp">
                          <p style="color: grey;">센터내 동물</p>
                        </a></li>
                      <li class="dropdown-item"><a href="./services2.jsp">
                          <p style="color: grey;">입양된 동물</p>
                        </a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <div class="tm-nav-link-highlight"></div>
                    <a class="nav-link" href="testimonials.jsp">Board</a>
                  </li>
                  <li class="nav-item">
                    <div class="tm-nav-link-highlight"></div>
                    <a class="nav-link" href="contact.jsp">Direction</a>
                  </li>
                </ul>
              </div>
            </nav>
          </div>
        </div>
      </div>

      <section class="row" id="tmHome">
        <div class="col-12 tm-home-container">
          <div class="text-white tm-home-left">
            <p class="text-uppercase tm-slogan">backend dog shelter</p>
            <hr class="tm-home-hr" />
            <h2 class="tm-home-title">Save for dog</h2>
            <a href="services.jsp" class="btn btn-primary">강아지 보기</a>
          </div>
        </div>
      </section>

      <!-- Features -->
      <div class="row" id="tmFeatures">
        <div class="col-lg-4">
          <div class="tm-bg-white-transparent tm-feature-box">
            <h3 class="tm-feature-name">About shelter</h3>

            <div class="tm-feature-icon-container">
              <a href="about.jsp"><img src="etc/img/button1.png" alt="App on Mobile mockup" height="110" width="110" /></a>
            </div>

            <p class="text-center">Download and use this layout for your sites. Total 5 HTML pages included.</p>
          </div>
        </div>

        <div class="col-lg-4">
          <div class="tm-bg-white-transparent tm-feature-box">
            <h3 class="tm-feature-name">Adoption List</h3>

            <div class="tm-feature-icon-container">
              <a href="adoption.jsp"><img src="etc/img/button3.png" alt="App on Mobile mockup" height="110"
                  width="110" /></a>
            </div>
            <p class="text-center">You are allowed to use this for commercial purpose or personal site.
            </p>
          </div>
        </div>

        <div class="col-lg-4">
          <div class="tm-bg-white-transparent tm-feature-box">
            <h3 class="tm-feature-name">Direction</h3>

            <div class="tm-feature-icon-container">
              <a href="direction.jsp"><img src="etc/img/button2.png" alt="App on Mobile mockup" height="110"
                  width="110" /></a>
            </div>
            <p class="text-center">You are NOT allowed to redistribute this template on any download site.
            </p>
          </div>
        </div>
      </div>
      <!-- Page footer -->
      <footer class="row">
        <p class="col-12 text-white text-center tm-copyright-text">
          Copyright &copy; 2021 BitComputer JAVA #203.
          Designed by <a href="#" class="tm-copyright-link">Team 3</a>
        </p>
      </footer>
    </div>
    <!-- .container-fluid -->
  </div>

  <script src="etc/js/jquery.min.js"></script>
  <script src="etc/js/parallax.min.js"></script>
  <script src="etc/js/bootstrap.min.js"></script>
  <script src="etc/js/main.js"></script>
  <script src="etc/js/popper.js"></script>
</body>
</html>