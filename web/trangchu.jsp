<%-- 
    Document   : trangchu
    Created on : Mar 13, 2020, 3:58:12 PM
    Author     : admin
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Ẩm thực Hòa Lạc</title>
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
                        <a class="nav-link" href="#">Giưới Thiệu<span class="sr-only">(current)</span></a>
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


        <div class="row my-5 py-5 mr-0">
            <div class="col-6">
                <img src="images/bundau6.jpg" style="height: 100%">
            </div>

            <div class="col-6">
                <h2 style="text-align: center;color: #f68f00;">Chào mừng đến với Mẹt Quán</h2>
                <h4>Ẩm thực nói chung và bún đậu mắm tôm Hola nói riêng khiến bao người phải nao lòng. Từ Nam ra Bắc, từ những người bình dân đến nghệ sĩ nổi tiếng đều nói rằng “Chưa ăn bún đậu ở đây thì chưa đến Hà Nội”.</h4>
                <p>
                    Có một điều phải công nhận rằng bún đậu mắm tôm là một món ăn có quá nhiều sắc thái, bởi vậy tuy rằng là món ăn quen thuộc nhưng nó lại không bao giờ là nhàm chán. Từ những ngày hè oi bức, trời lạnh giá, mưa phùn gió bấc hay từ gánh hàng rong nơi góc phố, một quán cóc ven khu chợ đông đúc, rồi trong các nhà hàng thuần Việt sang chảnh đều rất hợp để thưởng thức.
                </p>
                <img src="images/bundau14.jpg" style="width: 100%;height:400px">
            </div>

        </div>

        <div class="tieude text-center">
            <p>ƯU ĐÃI ĐẶC BIỆT</p>
            <h2>THỰC ĐƠN CỦA MẸT QUÁN</h2>
        </div>
        <div class="container pt-5">
            <c:forEach  begin="1" end="9" var="i" step="3">
                <div class="row">
                    <div class="col-4">
                        <div>
                            <span>${listFood.get(i).getName()}</span>
                            <br>
                            <span>...............</span>
                            <span style="color: orange;font-style: italic;">${listFood.get(i).getPrice()/1000}.00đ</span>
                            <div>${listFood.get(i).getTitle()}</div>
                        </div>
                        <br>

                    </div>
                    <div class="col-4">
                        <div>
                            <span>${listFood.get(i+1).getName()}</span>
                            <br>
                            <span>...............</span>
                            <span style="color: orange;font-style: italic;">${listFood.get(i+1).getPrice()/1000}.00đ</span>
                            <div>${listFood.get(i+1).getTitle()}</div>
                        </div>
                        <br>

                    </div>
                        <div class="col-4">
                        <div>
                            <span>${listFood.get(i+2).getName()}</span>
                            <br>
                            <span>...............</span>
                            <span style="color: orange;font-style: italic;">${listFood.get(i+2).getPrice()/1000}.00đ</span>
                            <div>${listFood.get(i+2).getTitle()}</div>
                        </div>
                        <br>

                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="row">
            <div class="col-3 text-center m-auto">
                <a href="${pageContext.request.contextPath}/ThucDon" class="btn boxed-color-lg red uppercase font-bold font20" style="background-color:#f68f00;color: white">XEM TẤT CẢ THỰC ĐƠN</a>
            </div>
        </div>

        <div class="section-titles text-center uppercase m-bottom4">
            <h5 class="font-white font15 font-bold">CHUYÊN NGHIỆP</h5>
            <h2 class="font-white font40 font-bold">DỊCH VỤ CỦA MẸT QUÁN</h2>
        </div>



        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div id="carouselExampleControls" class="carousel slide py-5 my-5" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="carousel--wrap text-center">
                                    <h3 class="card-title" >LỜI CHỨNG THỰC</h3>
                                    <h2 class="card-title">KHÁCH HÀNG NÓI VỀ MẸT QUÁN</h2>
                                    <p>Lần đầu ghé đây, phục vụ rất chuyên nghiệp và hiếu khách từ chú bảo vệ đến nhân viên phục vụ ai cũng vui vẻ niềm nở dễ thương hết...Và quán nổi tiếng là đặc sản tây bắc...Quan trọng nhất là Rất ngon, đặc biệt là nước chấm, 1 chén nước chấm với mình là không đủ....</p>
                                    <span>Nguyễn Linh-Hà Nội</span><br>

                                </div> <!-- het carousel--wrap -->
                                <img src="images/back.jpg" class="d-block" alt="...">
                            </div> 

                            <div class="carousel-item">
                                <div class="carousel--wrap text-center">
                                    <p>Lần đầu ghé đây, phục vụ rất chuyên nghiệp và hiếu khách từ chú bảo vệ đến nhân viên phục vụ ai cũng vui vẻ niềm nở dễ thương hết...Và quán nổi tiếng là đặc sản tây bắc...Quan trọng nhất là Rất ngon, đặc biệt là nước chấm, 1 chén nước chấm với mình là không đủ....</p>
                                    <span>cuccucukd</span><br>
                                    
                                </div> <!-- het carousel--wrap -->
                                <img src="images/back.jpg" class="d-block" alt="...">
                            </div> 

                            <div class="carousel-item">
                                <div class="carousel--wrap text-center">
                                    <p>Tvbvbvbvb</p>
                                    <span>Lần đầu ghé đây, phục vụ rất chuyên nghiệp và hiếu khách từ chú bảo vệ đến nhân viên phục vụ ai cũng vui vẻ niềm nở dễ thương hết...Và quán nổi tiếng là đặc sản tây bắc...Quan trọng nhất là Rất ngon, đặc biệt là nước chấm, 1 chén nước chấm với mình là không đủ....</span><br>
                                    <span>(otofun)</span>
                                </div> <!-- het carousel--wrap -->
                                <img src="images/back.jpg" class="d-block" alt="...">
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
                </div>
            </div>
        </div>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>

