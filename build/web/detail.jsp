<%-- 
    Document   : detail
    Created on : Oct 26, 2022, 2:39:30 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

        <title>Product detail</title>

        <!-- Bootstrap core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="css/fontawesome.css">
        <link rel="stylesheet" href="css/tooplate-main.css">
        <link rel="stylesheet" href="css/owl.css">
        <link rel="stylesheet" href="css/flex-slider.css">
    </head>
    <body>
        <!-- Pre Header -->
        <div id="pre-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <span>Suspendisse laoreet magna vel diam lobortis imperdiet</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="images/header-logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="home">Home</a>
                        </li>
                        <c:if test="${sessionScope.account!=null}">
                            <li class="nav-item">
                                <a class="nav-link" href="account.jsp">Account
                                </a>
                            </li>
                        </c:if>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">Contact Us</a>
                        </li>
                        <c:if test="${sessionScope.account==null}">
                            <li class="nav-item login">
                            <a class="nav-link" href="login">Login</a>
                        </li>
                        </c:if>
                        <c:if test="${sessionScope.account!=null}">
                            <li class="nav-item login">
                            <a class="nav-link" href="logout">Logout</a>
                        </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <!-- Single Starts Here -->
        <c:set var="d" value="${requestScope.detail}"/>
        <div class="single-product">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <div class="line-dec"></div>
                            <h1>Product Detail</h1>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img src="${d.image}" alt="" style="width: 70%; margin-left: 70px;"/>
                    </div>
                    <div class="col-md-6" style="border: 1px solid rgb(199,199,199); padding-top: 10px;">
                        <div class="right-content">
                            <h3 style="margin-top: 10px">${d.name}</h3>
                            <h6 style="text-decoration: line-through">${d.price+100}00 VND</h6>
                            <h5 style="color: red">${d.price}00 VND</h5>
                            <p style="font-weight: 500">${d.describe} </p>
                            <form action="" method="get">
                                <label for="quantity">Quantity:</label>
                                <input name="quantity" type="quantity" class="quantity-text" id="quantity" 
                                       onfocus="if (this.value == '1') {
                                                   this.value = '';
                                               }" 
                                       onBlur="if (this.value == '') {
                                                   this.value = '1';
                                               }"
                                       value="1">
                                <input type="submit" class="button" value="Order Now!">
                            </form>
                            <div class="down-content">
                                <div class="categories">
                                    <h6>Category: <span><a href="product?cid=${d.category.id}">${d.category.name}</a></h6>
                                </div>
                                <div class="share">
                                    <h6>Share: <span><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-twitter"></i></a></span></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Single Page Ends Here -->


     <!-- Similar Starts Here -->
    <div class="featured-items">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <div class="line-dec"></div>
              <h1>You May Also Like</h1>
            </div>
          </div>
          <div class="col-md-12">
            <div class="owl-carousel owl-theme">
                <c:forEach items="${requestScope.relative}" var="r">
              <a href="detail?pid=${r.id}">
                  <div class="featured-item" style="height: 350px; position: relative">
                  <img src="${r.image}" alt="Item 1">
                  <h4>${r.name}</h4>
                  <h6 style="position: absolute; bottom: 0; margin-bottom: 15px;">${r.price}00 VND</h6>
                </div>
              </a>
                </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Similar Ends Here -->

        <!-- Footer Starts Here -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo" style="border-top: 1px solid rgb(199,199,199)">
                            <img src="images/header-logo.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="footer-menu">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">How It Works ?</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="social-icons">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Ends Here -->


        <!-- Sub Footer Starts Here -->
        <div class="sub-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyright-text">
                            <p>Project PRJ301_SE1650 

                                - Design: <a rel="nofollow" href="https://www.facebook.com/profile.php?id=100023801687842">Nguyễn Hồng Sơn</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sub Footer Ends Here -->


        <!-- Bootstrap core JavaScript -->
        <script src="jquery/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.bundle.min.js"></script>


        <!-- Additional Scripts -->
        <script src="js/custom.js"></script>
        <script src="js/owl.js"></script>
        <script src="js/isotope.js"></script>
        <script src="js/flex-slider.js"></script>


        <script language = "text/Javascript">
                                           cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
                                           function clearField(t) {                   //declaring the array outside of the
                                               if (!cleared[t.id]) {                      // function makes it static and global
                                                   cleared[t.id] = 1;  // you could use true and false, but that's more typing
                                                   t.value = '';         // with more chance of typos
                                                   t.style.color = '#fff';
                                               }
                                           }
        </script>


    </body>
</html>
