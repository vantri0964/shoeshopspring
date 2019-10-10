<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:forEach var="product" items="${products}">
 <div class="col-md-6" data-toggle="animation-appear" data-animation-class="animation-fadeInQuick" data-element-offset="-100">
     <div class="store-item">
         <div class="store-item-rating text-warning">
             <i class="fa fa-star"></i>
             <i class="fa fa-star"></i>
             <i class="fa fa-star"></i>
             <i class="fa fa-star"></i>
             <i class="fa fa-star-half-o"></i>
         </div>
         <div class="store-item-image">
             <a href="product/${product.getId()}">
                 <img src='<c:url value="resources/images/img/placeholders/photos/photo32.jpg"/>' alt="" class="img-responsive">
             </a>
         </div>
         <div class="store-item-info clearfix">
             <span class="store-item-price themed-color-dark pull-right">${product.getPrice()}</span>
             <a href="ecom_product.html"><strong>${product.getName()}</strong></a><br>
             <small><i class="fa fa-shopping-cart text-muted"></i> <a href="javascript:void(0)" class="text-muted">Add to cart</a></small>
         </div>
     </div>
 </div>
</c:forEach>