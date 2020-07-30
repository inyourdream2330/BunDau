<%-- 
    Document   : thudon
    Created on : Mar 13, 2020, 4:16:06 PM
    Author     : admin
--%>
<%@page import="java.lang.String"%>
<%@page import="model.Food"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Thực Đơn</title>
        <link rel="stylesheet" type="text/css" href="css/1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Pattaya&display=swap" rel="stylesheet">
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

        <div class="tieude text-center">
            <h2>Hôm nay ăn gì?</h2>
        </div>


        <c:forEach items="${requestScope.types}" var="type">
            <div class="tieude1">
                <h3><img src="images/12.png" >${type.name}</h3>
            </div>
            <div class="container">
                <div class="row">
                    <c:forEach items="${requestScope.foods}" var="f">
                        <c:if test="${type.id eq f.tid}">
                            <div class="card col-12 col-md-6 col-lg-3 spzero mb-5">
                                <img src="images/${f.img}" class="card-img-top" style="width:100%;" alt="...">
                                <h4 style="text-align: center;">${f.name}</h4>
                                <div class="card-body">
                                    <p class="card-text">${f.title}</p>
                                    <p id="gia" style="color: #f 68f00;font-weight: bold;font-size: 24px">Giá: ${f.price/1000}00</p>
                                        <a href="${pageContext.request.contextPath}/${username eq null?"Login?order=1":"InfoProduct?fid="}${f.fid}" class="btn btn-primary muangay">Mua ngay</a>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </c:forEach>      



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
