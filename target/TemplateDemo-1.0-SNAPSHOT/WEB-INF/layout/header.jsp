<%-- 
    Document   : header
    Created on : Aug 3, 2021, 4:05:27 PM
    Author     : Phat Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--::header part start::-->
<header class="main_menu home_menu">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg navbar-light">

                    <a class="navbar-brand" href="index.jsp"> <img class="img-fluid" src="<c:url value="images/logo.png" />" alt="logo"> </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse main-menu-item justify-content-center"
                        id="navbarSupportedContent">
                        <ul class="navbar-nav align-items-center">
                            <li class="nav-item active">
                                <a class="nav-link" href="<c:url value="/" />">Trang chủ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">Về chúng tôi</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value="/medicine"  />">Thuốc</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Sắp lịch trực
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="<c:url value="/doctor" />">Bác sỹ</a>
                                    <a class="dropdown-item" href="dep.html">Y tá</a>
                                </div>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link" href="login.html">Đăng nhập</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Đăng ký</a>
                            </li>
                        </ul>
                    </div>
                    <a class="btn_2 d-none d-lg-block" href="#">HOT LINE- 09856</a>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header part end-->
