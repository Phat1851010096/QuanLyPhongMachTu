<%-- 
    Document   : medicine
    Created on : Sep 4, 2021, 10:40:39 AM
    Author     : Phat Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<br>
<br>
<br>
<br>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <ul class="navbar-nav">
        <c:forEach var="cat" items="${loaithuoc}">
            <li class="nav-item">
                <a class="nav-link" href="#">${cat.tenLoaiThuoc}</a>
            </li>
        </c:forEach>
    </ul>
</nav>
           
<form action="">
    <div class="row">
        <div class="col-md-11">
            <input class="form-control" type="text" name="kw" placeholder="Nhap tu khoa de tim" />
            
        </div>
        &ensp;<input type="submit" value="Search" class="btn btn-danger" />

    </div>
</form>

<div>
    <ul class="pagination">
        <c:forEach var="page" begin="1" end="${Math.ceil(thuocCounter/9)}">
            <li class="page-item"><a class="page-link" href="<c:url value="/" />?page=${page}">${page}</a></li>
        </c:forEach>
    </ul>
</div>

<div class="row">
    <c:forEach var="t" items="${thuoc}">
        <div class="card col-md-3 .bg-light">
            <div class="card-body">
                <c:if test="${t.HINHANH.startsWith('https')}">
                    <img class="img-fluid" src="${t.HINHANH}" alt="${t.TENTHUOC}" />
                </c:if>
                <c:if test="${!t.HINHANH.startsWith('https')}">
                    <img class="img-fluid" src="<c:url value="images/medicine/ThuocDauDau/panadol.png" />" alt="${t.HINHANH}" />
                </c:if>
            </div>
            <div class="card-footer .bg-light">
                <h4>${t.TENTHUOC}</h4>
            </div>

        </div>
    </c:forEach>
</div>
