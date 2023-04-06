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

        <title>Product</title>

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
                padding: 10px 15px;
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
                margin-top: 50px;
            }

            .footer{
                margin-top: 100px;
            }
            .if{
                padding: 5px;
            }
            
            .right-content input{
                margin: 5px 0;
                width: 400px;
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
                        <li class="nav-item">
                            <a class="nav-link" href="home">Home</a>
                        </li>
                        <c:if test="${sessionScope.account!=null}">
                            <li class="nav-item active">
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

        <div class="single-product">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <div class="line-dec"></div>
                            <h1>Account</h1>
                        </div>
                    </div>
                    <div class="col-md-6" >
                        <img src="images/312821339_1078556369488198_7541454756585578219_n.jpg" alt="" style="width: 40%; margin-left: 200px; border-radius: 500px;"/>
                    </div>
                    <div class="col-md-6" style="padding-top: 10px;">
                        <div class="right-content">
                            <form action="change" method="post">
                                <center><div><h1 style="border-bottom: 1px solid rgb(58,139,205)">Change Information</h1></div></center>
                                Username:&nbsp;<input style="margin-left: 33px;" type="text" disabled name="user" value="${sessionScope.account.username}"><br/>
                                Name:&nbsp;<input style="margin-left: 63px;" type="text" name="name" value="${sessionScope.user.name}"><br/>
                                Phone Number:&nbsp;<input type="text" name="phone" value="${sessionScope.user.phone}"><br/>
                                Address:&nbsp;<input style="margin-left: 47px;" type="text" name="address" value="${sessionScope.user.address}"><br/>
                                Email:&nbsp;<input style="margin-left: 66px;" type="text" name="email" disabled value="${sessionScope.user.email}"><br/>
                                <h3 style="color: blue">${requestScope.mess}</h3>
                                <div style="margin-top: 50px"></div>
                                <center>
                                    <input style="padding: 5px 10px; background-color: rgb(58,139,205); color: #fff" type="submit" value="Change Information"/>
                                </center>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo" style="border-top: 1px solid rgb(158,158,158)">
                            <img src="images/header-logo.png" alt="" style="margin-bottom: 50px; margin-top: 50px">
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

    </body>
    <footer>
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
    </footer>
</html>
