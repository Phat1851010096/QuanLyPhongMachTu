<%-- 
    Document   : quanlythuoc
    Created on : Sep 8, 2021, 9:03:00 PM
    Author     : Phat Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h1 class="text-center text-danger">QUAN LY THUOC</h1>

<c:url value="/admin/thuoc/add" var="action" />
<form:form method="post" action="${action}" 
           enctype="multipart/form-data" modelAttribute="product">
    
    <form:errors path="*" element="div" cssClass="alert alert-danger" />
    <div class="form-group">
        <label for="name">Name</label>
        <form:input type="text" id="name" 
                    path="name" cssClass="form-control" />
        <form:errors path="name" cssClass="text-danger" />
    </div>
    
    <div class="form-group">
        <label for="description">Description</label>
        <form:textarea type="text" id="des" 
                    path="description" cssClass="form-control" />
        <form:errors path="description" cssClass="text-danger" />
    </div>
    
    <div class="form-group">
        <label for="price">Price</label>
        <form:input type="text" id="price" 
                    path="price" cssClass="form-control" />
        <form:errors path="price" cssClass="text-danger" />
    </div>
    
    <div class="form-group">
        <label for="cate">Category</label>
        <form:select id="cate" path="category" cssClass="form-control">
            <c:forEach items="${categories}" var="cat">
                <option value="${cat.id}" >${cat.name}</option>
            </c:forEach>
        </form:select>
        <form:errors path="category" cssClass="text-danger" />
    </div>
    
    <div class="form-group">
        <label for="image">Image</label>
        <form:input type="file" id="image" 
                    path="file" cssClass="form-control" />
    </div>
        
    <div class="form-group">
        <input type="submit" value="Add Product" class="btn btn-danger" />
    </div>
</form:form>
