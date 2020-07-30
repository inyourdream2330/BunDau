<%-- 
    Document   : register
    Created on : Mar 26, 2020, 4:36:44 PM
    Author     : admin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tạo tài khoản</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Creative triplet Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Custom Theme files -->
        <!-- Font-awesome-CSS --> <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //Custom Theme files -->
        <!-- web font -->
        <link href="//fonts.googleapis.com/css?family=Karla:400,700" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

        <!-- //web font -->
    </head>
    <body>
        <h1>Mẫu Đăng Ký</h1>
        <div class="main-agileits"style="display: flex;justify-content: center;margin-bottom: 50px;">
            <!--Signup-form-ends-here-->
            <div class="right-map-w3-agile" >
                <div class="new-account-form">
                    <h2 class="heading-w3-agile">Tạo tài khoản thành viên</h2>
                    <form action="${pageContext.request.contextPath}/Register" method="post">
                        <div class="inputs-w3ls">
                            <p>Tên đăng nhập</p>
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <input type="text" class="name" name="name" placeholder="" required=""/>
                            
                        </div>
                        <div class="inputs-w3ls">
                            <p>Email</p>
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <input type="email" class="email" name="email" placeholder="" required=""/>
                        </div>
                        <div class="inputs-w3ls">
                            <p>Tên</p>
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <input type="text" class="email" name="first-name" placeholder="" required=""/>
                        </div>
                        <div class="inputs-w3ls">
                            <p>Ho</p>
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                            <input type="text" class="email" name="last-name" placeholder="" required=""/>
                        </div>
                        
                        <div class="inputs-w3ls">
                            <p>Mật khẩu</p>
                            <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                            <input type="password" class="password" name="password" placeholder="" required=""/>
                        </div>
                        <div class="inputs-w3ls">
                            <p>Xác nhận mật khẩu</p>
                            <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                            <input type="password" class="password" name="confirm-password" placeholder="" required=""/>
                        </div>		
                        <p style="color:red">${msg_pass}</p>
                        <input type="submit" value="Đăng ký">  <br>
                        <p style="color: red">${msg_user}</p>
                    </form> 
                </div>
            </div>
            <!--//Signup-form-ends-here-->
            <!--welcome-stars-here-->

            <!--//welcome-form-stars-here-->
            
        </div>
    </body>
</html>