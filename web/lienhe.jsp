<%-- 
    Document   : lienhe
    Created on : Mar 13, 2020, 4:35:37 PM
    Author     : admin
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Liên Hệ</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/1.css">
        <link href="https://fonts.googleapis.com/css?family=Pattaya&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="fontawesome-free-5.11.2-web/css/all.min.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    </head>
    <body>


        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <a class="navbar-brand logo" href="#"><img src="images/logometquan.png" ></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav text ml-auto ">
                    <li class="nav-item ">
                        <a class="nav-link" href="${pageContext.request.contextPath}/TrangChu">Trang chủ<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#">Giới Thiệu<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/ThucDon">Thực Đơn</a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link" href="${pageContext.request.contextPath}/DatBan">Đặt bàn<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/LienHe">Liên Hệ</a>
                    </li>
                    <c:if test="${sessionScope.username == null}">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Register">Sign up</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.username != null}">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Info">${sessionScope.username}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </nav>

        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/bundau2.jpg" class="d-block w-100  img-fluid" style="width: 100%;height: 760px" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/bundau8.jpg" class="d-block w-100 img-fluid" style="width: 100%;height: 760px" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/bundau10.jpg" class="d-block w-100 img-fluid" style="width: 100%;height: 760px" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/bundau11.jpg" class="d-block w-100 img-fluid" style="width: 100%;height: 760px" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/bundau7.jpg" class="d-block w-100 img-fluid" style="width: 100%;height: 760px" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="container pt-5">
            <div class="row">
                <div class="col-4 pr-4">
                    <h5>
                        Address Info
                    </h5>
                    <div>
                        Mẹt Quán
                    </div>
                    
                    <div>
                        <i class="fa fa-map-marker"></i> 
                        Thôn corona, xã covid, tình N-covi
                    </div>
                    <div>
                        <i class="fa fa-phone"></i>
                        0123456789
                    </div>
                    <div>
                        <i class="fa fa-envelope"></i>
                        lienhe@metquan.com
                    </div>
                </div>



                <div class="section col-8">
                    <h2>Đăng kí nhận thông báo khuyến mại</h2>
                    <h3 style="color:green">${msg}</h3>
                    <div class="row">
                        <form action="${pageContext.request.contextPath}/LienHe" method="post">
                            <div class="col-6">
                                <p class="label">Họ Tên</p>
                                <input type="text" name="name" id="contact-name"><i class="icon-append fa fa-user"></i>
                            </div>

                            <div class="col-6">
                                <p class="label">Email</p>
                                <input type="email" name="email" id="contact-email"><i class="icon-append fa fa-envelope-o"></i>
                            </div>

                            <div class="col-4 pt-4">

                                <footer>
                                    <input class="button" value="Đăng ký" name="submit" id="submit" type="submit">
                                </footer>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <span class="text-muted">Rất vui lòng được phục vụ các bạn</span>
            </div>
        </footer>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        </body>
</html>
