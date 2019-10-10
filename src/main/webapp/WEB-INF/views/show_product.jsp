<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="header.jsp"/>
<title>Insert title here</title>
</head>
<body>
	  <div id="page-container">
            <!-- Site Header -->
   			<jsp:include page="header_user.jsp"/>
            <!-- END Site Header -->

            <!-- Intro -->
            <%-- <div id="id_product" data-idProduct="${product.getId()}"></div> --%>
            <div id="price" data-price="${product.getPrice()}"></div>
            <div id="image" data-image="${product.getImage()}"></div>
            <section class="site-section site-section-light site-section-top themed-background-dark">
                <div class="container text-center">
                    <h1 class="animation-slideDown"><strong>Blue Jacket</strong></h1>
                </div>
            </section>
            <!-- END Intro -->

            <!-- Product View -->
            <section class="site-content site-section">
                <div class="container">
                    <div class="row">
                        <!-- Sidebar -->
   						<jsp:include page='share/_category.jsp'/>
                        <!-- END Sidebar -->

                        <!-- Product Details -->
                        <div class="col-md-8 col-lg-9">
                            <div class="row" data-toggle="lightbox-gallery">
                                <!-- Images -->
                                <div  id="id_product" data-idProduct="${product.getId()}">${product.getName()}</div>
                                <div class="col-sm-6 push-bit">
                                    <a href="img/placeholders/photos/photo31.jpg" class="gallery-link"><img src="img/placeholders/photos/photo31.jpg" alt="" class="img-responsive push-bit"></a>
                                    <div class="row push-bit">
                                        <div class="col-xs-4">
                                            <a href="img/placeholders/photos/photo30.jpg" class="gallery-link"><img src="img/placeholders/photos/photo30.jpg" alt="" class="img-responsive"></a>
                                        </div>
                                        <div class="col-xs-4">
                                            <a href="img/placeholders/photos/photo29.jpg" class="gallery-link"><img src="img/placeholders/photos/photo29.jpg" alt="" class="img-responsive"></a>
                                        </div>
                                        <div class="col-xs-4">
                                            <a href="img/placeholders/photos/photo28.jpg" class="gallery-link"><img src="img/placeholders/photos/photo28.jpg" alt="" class="img-responsive"></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- END Images -->

                                <!-- Info -->
                                <div class="col-sm-6 push-bit">
                                    <div class="clearfix">
                                        <div class="pull-right">
                                            <span class="h2"><strong>$ ${product. getPrice()}</strong></span>
                                        </div>
                                        <span class="h4"><strong class="text-success">IN STOCK</strong><br><small>15 Available</small></span>
                                    </div>
                                    <hr>
                                    <p>${product.getDescription()}</p>
                                    <p>Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti. Pellentesque non accumsan orci.</p>
                                    <hr>
                                    <div class="form-inline push-bit text-right selected-color">
                                      <c:forEach items="${colors}" var="color">
                                         <input  data-color="${color.getId()}" type="radio" name="color" value="${color.getId()}"><label>${color.getColor()}</label>
                                      </c:forEach>
									 </div>
                                    <form  method="get" action="javascript:void(0)"  class="form-inline push-bit text-right">
	                                    <div class="col-md-3 col-sm-3">
	                                         <input type="number"  value="1" min="1" id="example-amount" name="amount" class="form-control ui-wizard-content">
	                                     	 <span><i id="error" class="amount-error"></i></span>
	                                     </div>
                                        <select id="ecom-addcart-size" name="ecom-addcart-size" class="form-control size" size="1">
                                            <c:forEach items="${sizes}" var="size">
                                            	 <option data-size="${size.getId()}" value="${size.getId()}">${size.getName()}</option>
                                            </c:forEach>
                                        </select>
                                        <c:if test="${user_id != null }">
                                        	<button type="submit" class="btn btn-primary add-cart">Add to Cart</button>
                                        </c:if>
                                        <c:if test="${user_id == null }">
                                        	<a  href='<c:url value="/session/"/>' class="btn btn-primary">Add to Cart</a>
                                        </c:if>
                                    </form>
                                </div>
                                <!-- END Info -->

                                <!-- More Info Tabs -->
                                <div class="col-xs-12 site-block">
                                    <ul class="nav nav-tabs push-bit" data-toggle="tabs">
                                        <li class="active"><a href="#product-specs">Specs</a></li>
                                        <li><a href="#product-description">Description</a></li>
                                        <li><a href="#product-reviews">Reviews (3)</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="product-specs">
                                            <table class="table table-borderless table-striped table-vcenter">
                                                <thead>
                                                    <tr>
                                                        <th colspan="2">Color and Size</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="detailPro" items="${product.getProduct_details()}">
                                                    <tr>
                                                        <td style="width: 120px;"><strong>${detailPro.getColor().getColor()}</strong></td>
                                                        <td>${detailPro.getSize().getName()}</td>
                                                    </tr>
                                                  </c:forEach>
                                                </tbody>
                                            </table>
                                            <table class="table table-borderless table-striped table-vcenter">
                                                <thead>
                                                    <tr>
                                                        <th colspan="2">Dimensions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td style="width: 120px;"><strong>Height</strong></td>
                                                        <td>85cm</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>Width</strong></td>
                                                        <td>40cm</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table class="table table-borderless table-striped table-vcenter">
                                                <thead>
                                                    <tr>
                                                        <th colspan="2">More Info</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td style="width: 120px;"><strong>Info #1</strong></td>
                                                        <td>Details</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>Info #2</strong></td>
                                                        <td>Details</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>Info #3</strong></td>
                                                        <td>Details</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="tab-pane" id="product-description">
                                            <p>Maecenas ultrices, justo vel imperdiet gravida, urna ligula hendrerit nibh, ac cursus nibh sapien in purus. Mauris tincidunt tincidunt turpis in porta. Integer fermentum tincidunt auctor. Vestibulum ullamcorper, odio sed rhoncus imperdiet, enim elit sollicitudin orci, eget dictum leo mi nec lectus. Nam commodo turpis id lectus scelerisque vulputate. Integer sed dolor erat. Fusce erat ipsum, varius vel euismod sed, tristique et lectus? Etiam egestas fringilla enim, id convallis lectus laoreet at. Fusce purus nisi, gravida sed consectetur ut, interdum quis nisi. Quisque egestas nisl id lectus facilisis scelerisque? Proin rhoncus dui at ligula vestibulum ut facilisis ante sodales! Suspendisse potenti. Aliquam tincidunt sollicitudin sem nec ultrices. Sed at mi velit. Ut egestas tempor est, in cursus enim venenatis eget!</p>
                                            <p>Mauris tincidunt tincidunt turpis in porta. Integer fermentum tincidunt auctor. Vestibulum ullamcorper, odio sed rhoncus imperdiet, enim elit sollicitudin orci, eget dictum leo mi nec lectus. Nam commodo turpis id lectus scelerisque vulputate. Integer sed dolor erat. Fusce erat ipsum, varius vel euismod sed, tristique et lectus? Etiam egestas fringilla enim, id convallis lectus laoreet at. Fusce purus nisi, gravida sed consectetur ut, interdum quis nisi. Quisque egestas nisl id lectus facilisis scelerisque? Proin rhoncus dui at ligula vestibulum ut facilisis ante sodales! Suspendisse potenti. Aliquam tincidunt sollicitudin sem nec ultrices. Sed at mi velit. Ut egestas tempor est, in cursus enim venenatis eget! Nulla quis ligula ipsum.</p>
                                            <p>Vestibulum ullamcorper, odio sed rhoncus imperdiet, enim elit sollicitudin orci, eget dictum leo mi nec lectus. Nam commodo turpis id lectus scelerisque vulputate. Integer sed dolor erat. Fusce erat ipsum, varius vel euismod sed, tristique et lectus? Etiam egestas fringilla enim, id convallis lectus laoreet at. Fusce purus nisi, gravida sed consectetur ut, interdum quis nisi. Quisque egestas nisl id lectus facilisis scelerisque? Proin rhoncus dui at ligula vestibulum ut facilisis ante sodales!</p>
                                        </div>
                                        <div class="tab-pane" id="product-reviews">
                                            <ul class="media-list push">
                                                <li class="media">
                                                    <a href="javascript:void(0)" class="pull-left">
                                                        <img src="img/placeholders/avatars/avatar1.jpg" alt="Avatar" class="img-circle">
                                                    </a>
                                                    <div class="media-body">
                                                        <div class="text-warning pull-right">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                        <a href="javascript:void(0)"><strong>Customer</strong></a><br>
                                                        <span class="text-muted"><small><em>2 hours ago</em></small></span>
                                                        <p>Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti.</p>
                                                    </div>
                                                </li>
                                                <li class="media">
                                                    <a href="javascript:void(0)" class="pull-left">
                                                        <img src="img/placeholders/avatars/avatar12.jpg" alt="Avatar" class="img-circle">
                                                    </a>
                                                    <div class="media-body">
                                                        <div class="text-warning pull-right">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                        <a href="javascript:void(0)"><strong>Customer</strong></a><br>
                                                        <span class="text-muted"><small><em>2 hours ago</em></small></span>
                                                        <p>Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti.</p>
                                                    </div>
                                                </li>
                                                <li class="media">
                                                    <a href="javascript:void(0)" class="pull-left">
                                                        <img src="img/placeholders/avatars/avatar16.jpg" alt="Avatar" class="img-circle">
                                                    </a>
                                                    <div class="media-body">
                                                        <div class="text-warning pull-right">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                        <a href="javascript:void(0)"><strong>Customer</strong></a><br>
                                                        <span class="text-muted"><small><em>2 hours ago</em></small></span>
                                                        <p>Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Donec lacinia venenatis metus at bibendum? In hac habitasse platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend. Sed porttitor pretium venenatis. Suspendisse potenti. Aliquam quis ligula elit. Aliquam at orci ac neque semper dictum. Sed tincidunt scelerisque ligula, et facilisis nulla hendrerit non. Suspendisse potenti.</p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- END More Info Tabs -->
                            </div>
                        </div>
                        <!-- END Product Details -->
                    </div>
                </div>
            </section>
            <!-- END Product View -->

            <!-- Footer -->
           		 <jsp:include page="footer_user.jsp"/>
            <!-- END Footer -->
        </div>
        <a href="#" id="to-top"><i class="fa fa-angle-up"></i></a>
        <jsp:include page="footer_js.jsp"/>
</body>
</html>