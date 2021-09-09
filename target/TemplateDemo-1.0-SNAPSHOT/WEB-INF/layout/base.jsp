<%-- 
    Document   : base
    Created on : Aug 3, 2021, 4:01:27 PM
    Author     : Phat Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"
           uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title" />
        </title>
                 
        <!-- Bootstrap CSS -->
        <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet" />
        <!-- animate CSS -->
        <link href="<c:url value="/css/animate.css" />" rel="stylesheet" />
        <!-- owl carousel CSS -->
        <link href="<c:url value="/css/owl.carousel.min.css" />" rel="stylesheet" />
        <!-- magnific popup CSS -->
        <link href="<c:url value="/css/magnific-popup.css" />" rel="stylesheet" />
        <!-- nice select CSS -->
        <link href="<c:url value="/css/nice-select.css" />" rel="stylesheet" />
        <!-- swiper CSS -->
        <link href="<c:url value="/css/slick.css" />" rel="stylesheet" />
        <!-- style CSS -->
        <link href="<c:url value="/css/style.css" />" rel="stylesheet" />
        
        <script src="<c:url value="/js/jquery-1.12.1.min.js" />"></script>
<!--         popper js -->
        <script src="<c:url value="/js/popper.min.js" />"></script>
<!--         bootstrap js -->
        <script src="<c:url value="/js/bootstrap.min.js" />"></script>
<!--         owl carousel js -->
        <script src="<c:url value="/js/owl.carousel.min.js" />"></script>
        
        <script src="<c:url value="/js/jquery.nice-select.min.js" />"></script>
<!--         contact js -->
        <script src="<c:url value="/js/jquery.ajaxchimp.min.js" />"></script>
        <script src="<c:url value="/js/jquery.form.js" />"></script>
        <script src="<c:url value="/js/jquery.validate.min.js" />"></script>
        <script src="<c:url value="/js/mail-script.js" />"></script>
        <script src="<c:url value="/js/contact.js" />"></script>
<!--         custom js -->
        <script src="<c:url value="/js/custom.js" />"></script>
        
    </head>
    <body>

        <div class="container">
            <!-- HEADER -->
            <tiles:insertAttribute name="header" />

            <!-- CONTENT -->
            <tiles:insertAttribute name="content" />

            <!-- FOOTER -->
            <tiles:insertAttribute name="footer" />
        </div>

    </body>
</html>
