<%-- 
    Document   : home
    Created on : Oct 22, 2022, 1:47:38 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

        <title>Pixie - Shop</title>

        <!-- Bootstrap core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="css/fontawesome.css">
        <link rel="stylesheet" href="css/tooplate-main.css">
        <link rel="stylesheet" href="css/owl.css">
        <link rel="stylesheet" href="css/mycss.css">

        <style>
            .featured-item{
                border: 0px solid rgb(102, 98, 98);
                box-shadow: 0 0 8px #000;
                height: 380px;
                position: relative;
            }

            .featured-item h6 {
                position: absolute;
                bottom: 0;
                margin-bottom: 20px;
                padding: 10px 14px;
                background-color: orangered;
                color: #fff;
                border-radius: 5px;
                left: 50%;
                transform: translateX(-50%);

            }

            .featured-item:hover img{
                padding: 3px;
            }

            body{
                position: relative;
            }

            .search{
                position: absolute;
                right: 40px;
                margin-top: 10px;
            }

            .section-heading{
                justify-content: center;
            }

            .featured-page{
                margin-top: 20px;
            }
        </style>

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
                        <li class="nav-item active">
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
                        <li class="nav-item">
                            <c:if test="${sessionScope.account==null}">
                                <a class="nav-link" href="login">Cart</a>
                            </c:if>
                            <c:if test="${sessionScope.account!=null}">
                                <a class="nav-link" href="cart.jsp">Cart</a>
                            </c:if>
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

        <form action="search" class="search">
            <input type="text" name="search" placeholder="Search" style="width: 300px; padding: 5px 0px;"/> 
            <input type="submit" value="Search" style="padding: 5px 10px; background-color: rgb(58,139,205); border-radius: 5px; color: #fff;"/>
        </form>

        <div class="banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="caption">
                            <h2>PIXIE SHOP</h2>
                            <div class="line-dec"></div>
                            <p>Thời trang PIXIE hướng tới hình tượng người phụ nữ hiện đại, tôn vinh sự tinh tế, tao nhã và gợi cảm. 
                                <br><br>Thời trang PIXIE liên tục xây dựng được hình ảnh người dẫn đầu, liên tục đem đến những xu hướng thời trang mới, tạo nên trào lưu, phong cách cho những người đam mê thời trang.</p>
                            <div class="main-button">
                                <a href="product?cid=${0}">Order Now!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Page Content -->
        <!-- Items Starts Here -->
        <div class="featured-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-12">
                        <div class="section-heading">
                            <!--                            <div class="line-dec"></div>-->
                            <h1 style="margin-top: 30px;">Category</h1>
                            <c:set var="cid" value="${requestScope.cid}"/>
                            <c:set var="pr" value="${requestScope.price}"/>
                            <form action="filter">
                                Tên sản phẩm:&nbsp; 
                                <select name="cid">
                                    <option value="0">All</option>
                                    <c:forEach items="${requestScope.data}" var="c">
                                        <option ${(cid==c.id)?'selected':''} value="${c.id}">${c.name}</option>
                                    </c:forEach>
                                </select><br/>
                                Giá:&nbsp;<select name="price">
                                    <option value="0">Bất kì</option>
                                    <option ${(pr==1)?'selected':''} value="1">0 đến 200.000</option>
                                    <option ${(pr==2)?'selected':''} value="2">200.000 đến 400.000</option>
                                    <option ${(pr==3)?'selected':''} value="3">400.000 đến 600.000</option>
                                    <option ${(pr==4)?'selected':''} value="4">600.000 đến 800.000</option>
                                    <option ${(pr==5)?'selected':''} value="5">800.000 đến 1.000.000</option>
                                    <option ${(pr==6)?'selected':''} value="6">Hơn 1.000.000</option>
                                </select>
                                <input type="submit" value="Search"/>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-12">
                        <div id="filters" class="button-group">
                            <ul class="menu">
                                <li class="btn btn-primary"><a href="product?cid=${0}">All</a></li>
                                    <c:forEach items="${requestScope.data}" var="d">
                                    <li><a href="product?cid=${d.id}">${d.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="clr"></div>
        <c:set var="list" value="${requestScope.product}"/>

        <c:if test="${list==null || list.size()==0}">
        <center>
            <h2>No product!</h2>
        </center>
    </c:if>

    <c:if test="${list!=null && list.size()!=0}">
        <div class="featured container no-gutter">
            <div class="row posts">
                <c:forEach items="${requestScope.product}" var="p">
                    <div class="item new col-md-3">
                        <a href="detail?pid=${p.id}">
                            <div class="featured-item">
                                <img src="${p.image}" alt="">
                                <h4>${p.name}</h4>
                                <h6>${p.price}00 VND</h6>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </c:if>
    <!--         Featred Page Ends Here 
    
    
             Subscribe Form Starts Here -->
    <div class="subscribe-form">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <div class="line-dec"></div>
                        <h1>Subscribe on PIXIE now!</h1>
                    </div>
                </div>
                <div class="col-md-8 offset-md-2">
                    <div class="main-content">
                        <p>Godard four dollar toast prism, authentic heirloom raw denim messenger bag gochujang put a bird on it celiac readymade vice.</p>
                        <div class="container">
                            <form id="subscribe" action="" method="get">
                                <div class="row">
                                    <div class="col-md-7">
                                        <fieldset>
                                            <input name="email" type="text" class="form-control" id="email" 
                                                   onfocus="if (this.value == 'Your Email...') {
                                                               this.value = '';
                                                           }" 
                                                   onBlur="if (this.value == '') {
                                                               this.value = 'Your Email...';
                                                           }"
                                                   value="Your Email..." required="">
                                        </fieldset>
                                    </div>
                                    <div class="col-md-5">
                                        <fieldset>
                                            <button type="submit" id="form-submit" class="button">Subscribe Now!</button>
                                        </fieldset>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--         Subscribe Form Ends Here 
    
             Footer Starts Here -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="logo">
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
    <!--         Footer Ends Here -->


    <!--         Sub Footer Starts Here -->
    <div class="sub-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright-text">
                        <p>Project PRJ301_SE1650

                            - Design: <a rel="nofollow" href="https://www.facebook.com/profile.php?id=100023801687842">Nguyen Hong Son</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--         Sub Footer Ends Here -->
</body>
</html>
