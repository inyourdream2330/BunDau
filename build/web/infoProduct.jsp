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
        <div class="container">
            <div class="row">
                    <div class="col-12 m-auto mt-5 pt-3 login_form">
                        <div class="tieude text-center">
                            <h2>ĐẶT CHỖ</h2>
                        </div>
                        <h2 style="color: green;text-align: center">${msg}</h2>

                        <div class="row pt-3">
                            <div class="row">
                                <div class="col-8 pt-3">
                                    <img src="images/${food.img}" class="card-img-top" style="width:100%;" alt="...">
                                </div>
                                <div class="col-4 pt-3">
                                    <h3>${food.name}</h3>
                                    <p id="gia" style="color: #f 68f00;font-weight: bold;font-size: 24px">Giá: ${food.price/1000}00</p>
                                    <form method="POST" action="${pageContext.request.contextPath}/InfoProduct">
                                        Số Lượng<input type="number" name="sl"/>
                                        <input type="hidden" value="${food.fid}" name="fid" required=""><br>
                                        <input type="hidden" value="${food.price}" name="gia" required=""><br>
                                        Địa chỉ giao hàng<input type="text" name="address" required=""><br>
                                        <input  type="submit" value="Đặt mua"/>
                                    </form>
                                        <p>${mess}</p>
                                        
                                </div>

                            </div>
                        </div>

                    </div>

                </form>
            </div>
        </div>      


    </body>
</html>
