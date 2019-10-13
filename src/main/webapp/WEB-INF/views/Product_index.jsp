<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="header.jsp"/>
<title>Product</title>
</head>
<body>
<div id="page-container">
	<jsp:include page="header_user.jsp"/>
    <!-- Intro -->
        <section class="site-section site-section-light site-section-top themed-background-dark">
            <div class="container text-center">
                <h1 class="animation-slideDown"><strong>Explore over 5.000 products!</strong></h1>
            </div>
        </section>
    <!-- END Intro -->

    <!-- Product List -->
    <section class="site-content site-section">
        <div class="container">
            <div class="row">
                <!-- Sidebar -->
       			<jsp:include page="share/_category.jsp"/>
                <!-- END Sidebar -->

                <!-- Products -->
                <div class="col-md-8 col-lg-9">
                    <div class="form-inline push-bit clearfix">
                        <select id="results-show" name="results-show" class="form-control pull-right" size="1">
                            <option value="0" disabled selected>SHOW</option>
                            <option value="25">25</option>
                            <option value="50">50</option>
                            <option value="75">75</option>
                            <option value="100">100</option>
                        </select>
                        <select id="results-sort" name="results-sort" class="form-control" size="1">
                            <option value="0" disabled selected>SORT BY</option>
                            <option value="1">Popularity</option>
                            <option value="2">Name (A to Z)</option>
                            <option value="3">Name (Z to A)</option>
                            <option value="4">Price (Lowest to Highest)</option>
                            <option value="5">Price (Highest to Lowest)</option>
                            <option value="6">Sales (Lowest to Highest)</option>
                            <option value="7">Sales (Highest to Lowest)</option>
                        </select>
                    </div>
                    <div class="row store-items">
						<jsp:include page="share/_product.jsp"/>       
						         
                    </div>
                </div>
                <!-- END Products -->
            </div>
        </div>
    </section>
    <!-- END Product List -->
    
    <jsp:include page="footer_user.jsp"/>
</div>
<a href="#" id="to-top"><i class="fa fa-angle-up"></i></a>
<jsp:include page="footer_js.jsp"/>
<script src='<c:url value="/resources/javascript/custom.js" />'></script>
</body>
</html>
