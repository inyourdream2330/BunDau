<%-- 
    Document   : datban
    Created on : Mar 13, 2020, 4:29:52 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Đặt bàn</title>
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

        <div class="container">
            <div class="row">
                <form action="${pageContext.request.contextPath}/DatBan" method="POST">
                    <div class="col-6 m-auto mt-5 pt-3 login_form">
                        <div class="tieude text-center">
                            <h2>ĐẶT CHỖ</h2>
                        </div>
                        <h2 style="color: green;text-align: center">${msg}</h2>

                        <div class="row pt-3">
                            <div class="row">
                                <div class="col-6">
                                    <p class="label">Họ Tên</p>
                                    <input type="text" name="name" id="contact-name" value="${sessionScope.username }" required>
                                </div>
                                <div class="col-6">
                                    <p class="label">Điện Thoại</p>
                                    <input type="phone" name="phone" id="contact-name" required>
                                </div>
                                <div class="col-6 pt-3">
                                    <p class="label">Số Lượng Khách</p>
                                    <input type="number" min ="1" max ="500" name="budget" value="1" placeholder="Số lượng khách" style="width: 100%" required>
                                </div>
                                <div class="col-6 pt-3">
                                    <p class="label">Ngày</p>
                                    <input type="date" name="date" id="start" placeholder="Ngày"style="width: 100%"required>
                                </div>
                                <div class="col-12 pt-3">
                                    <p class="label">Email</p>
                                    <input type="email" name="email" value="${sessionScope.email}" id="contact-name"required>
                                </div>
                                <div class="col-12 pt-3">
                                    <p class="label">Yêu cầu của bạn</p>
                                    <input type="text" name="note" id="contact-name"required>
                                </div>
                            </div>
                        </div>

                    </div>
                    <footer>
                        <input class="button1" value="Đặt chỗ ngay" id="submit" type="submit">
                    </footer>
                </form>
            </div>
        </div>
    </body>
</html>
