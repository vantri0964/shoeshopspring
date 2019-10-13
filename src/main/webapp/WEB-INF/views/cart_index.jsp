<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@  page import="com.levantri.empty.OrderProduct" %>
<%@  page import=" java.util.List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="header.jsp"/>
<title>Insert title here</title>
</head>
<body>
	  <div id="page-container sidebar-partial sidebar-visible-lg sidebar-no-animations">
   			<jsp:include page="header_user.jsp"/>

            <div id="id_product" data-idProduct="${product.getId()}"></div>
            <section class="site-section site-section-light site-section-top themed-background-dark">
                <div class="container text-center">
                    <h1 class="animation-slideDown"><strong>Blue Jacket</strong></h1>
                </div>
            </section>
            <jsp:include page="error.jsp"/>
			<div class="block cart-table">
                            <!-- Table Styles Title -->
                            <div class="block-title">
                                <h2><strong>Table</strong> Styles</h2>
                            </div>
                            <!-- END Table Styles Title -->

                            <!-- Table Styles Content -->
                            <!-- Changing classes functionality initialized in js/pages/tablesGeneral.js -->
                            <div class="table-options clearfix">
                                <div class="btn-group btn-group-sm pull-right">
                                    <a href="javascript:void(0)" class="btn btn-primary active" id="style-striped" data-toggle="tooltip" title="" data-original-title=".table-striped">Striped</a>
                                    <a href="javascript:void(0)" class="btn btn-primary" id="style-condensed" data-toggle="tooltip" title="" data-original-title=".table-condensed">Condensed</a>
                                    <a href="javascript:void(0)" class="btn btn-primary" id="style-hover" data-toggle="tooltip" title="" data-original-title=".table-hover">Hover</a>
                                </div>
                                <div class="btn-group btn-group-sm pull-left" data-toggle="buttons">
                                    <label id="style-default" class="btn btn-primary active" data-toggle="tooltip" title="" data-original-title=".table">
                                        <input type="radio" name="style-options"> Default
                                    </label>
                                    <label id="style-bordered" class="btn btn-primary" data-toggle="tooltip" title="" data-original-title=".table-bordered">
                                        <input type="radio" name="style-options"> Bordered
                                    </label>
                                    <label id="style-borderless" class="btn btn-primary" data-toggle="tooltip" title="" data-original-title=".table-borderless">
                                        <input type="radio" name="style-options"> Borderless
                                    </label>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table id="general-table" class="table table-striped table-vcenter">
                                    <thead>
                                        <tr>
                                            <th style="width: 80px;" class="text-center"><input type="checkbox"></th>
                                            <th>Name</th>
                                            <th>Image</th>
                                            <th>Color</th>
                                            <th>Size</th>
                                            <th>count</th> 
                                            <th>Price</th>
                                            <th>Total</th>                             
                                            <th style="width: 150px;" class="text-center">Actions</th>
                                        </tr>
                                    </thead>
                                    <c:if test="${listCart == null}">
                                    	<tbody><tr><td colspan="8"><i>Cart not exists product</i></td></tr></tbody>
                                    </c:if>
                                    <c:if test="${listCart != null}">
	                                    <tbody>
	                                    <c:forEach var="cart" items="${listCart}">
	                                        <tr>
	                                            <td class="text-center"><input type="checkbox" id="checkbox1-1" name="checkbox1-1"></td>
	                                 
	                                            <td class="id_product" data-id_product="${cart.getId_product()}"><a href="page_ready_user_profile.html">${cart.getName_product()}</a></td>
	                                            <td><img alt="" src="" width="150px" height="100px"></td>
	                                            <td class="id_color" data-id_color = "${cart.getId_color()}">${cart.getName_color()}</td>
	                                            <td class="id_size"  data-id_size = "${cart.getId_size()}">${cart.getName_size()}</td>
	                                            <td class="count_index_cart"><input type="number" value="${cart.getCount()}" class="form-control"><span class="amount-error"></span></td>
	                                            <td class="price">${cart.getPrice()}</td>
	                                            <td class="total_index_cart">${cart.getPrice() * cart.getCount()}</td>
	                                            <td class="text-center">
	                                                <div class="btn-group btn-group-xs">
	                                                    <a href="javascript:void(0)" class="update_index_cart" data-toggle="tooltip" title="" class="btn btn-default" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
	                                                    <a href="javascript:void(0)" class="delete_index_cart" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Delete"><i class="fa fa-times"></i></a>
	                                                </div>
	                                            </td>
	                                        </tr>
	                                     </c:forEach>
	                                    </tbody>
	                                    <tfoot>
	                                        <tr>
	                                            <td colspan="10">
	                                                <div class="btn-group btn-group-sm pull-right">
	                                                    <a href="javascript:void(0)" class="btn btn-primary" data-toggle="tooltip" title="" data-original-title="Settings"><i class="fa fa-cog"></i></a>
	                                                    <div class="btn-group btn-group-sm dropup">
	                                                        <a href="javascript:void(0)" class="btn btn-primary pull-right dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></a>
	                                                        <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
	                                                            <li><a href="javascript:void(0)"><i class="fa fa-print pull-right"></i> Print</a></li>
	                                                            <li class="dropdown-header"><i class="fa fa-share pull-right"></i> Export As</li>
	                                                            <li>
	                                                                <a href="javascript:void(0)">.pdf</a>
	                                                                <a href="javascript:void(0)">.cvs</a>
	                                                            </li>
	                                                        </ul>
	                                                    </div>
	                                                </div>
	                                                <div class="btn-group btn-group-sm">
	                                                    <a href="javascript:void(0)" class="btn btn-primary" data-toggle="tooltip" title="" data-original-title="Edit Selected"><i class="fa fa-pencil"></i></a>
	                                                    <a href="javascript:void(0)" class="btn btn-primary" data-toggle="tooltip" title="" data-original-title="Delete Selected"><i class="fa fa-times"></i></a>	                             
	                                                </div>
	                                                <div><span><b >Total Price:<span id="total_result"> ${total}</span></b></span></div>
	                                            </td>
	                                        </tr>
	                                    </tfoot>
                                    </c:if>
                                </table>
                            </div>
                            <!-- END Table Styles Content -->
                        </div >
                         <div class="block cart-table col-md-12 col-sm-8">
                        	<div class="col-sm-5 col-sm-offset-0">
                                    <!-- Wizard Progress Bar, functionality initialized in js/pages/formsWizard.js -->
                                    <div class="">
                                        <h1>CHECKOUT</h1>
                                    </div>
                                    <!-- END Wizard Progress Bar -->

                                    <!-- Progress Wizard Content -->
                                    <form id="progress-wizard"  modelAttribute="order" action="" method="post" class="form-horizontal ui-formwizard">
                                        <!-- First Step -->
                                        <div id="progress-first" class="step ui-formwizard-content" style="display: block;">
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="example-email">Số điện thoại</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="example-progress-email" path="phone" class="form-control ui-wizard-content" placeholder="test@example.com">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="example-password">City</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="example-progress-password" path="city" class="form-control ui-wizard-content" placeholder="Choose a crazy one..">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                            	<label class="col-md-4 control-label" for="example-password">Bank</label>
                                            	<div class="col-md-8">
	                                                <select id="example-select" path="id_user_bank" class="form-control" size="1">
	                                                    <option value="0">Please select</option>
	                                                    <option value="1">Option #1</option>
	                                                    <option value="2">Option #2</option>
	                                                    <option value="3">Option #3</option>
	                                                </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="example-password2">Chi nhánh ngân hàng</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="example-progress-password2" path="branch" class="form-control ui-wizard-content" placeholder="..and confirm it!">
                                                </div>
                                            </div>
                                                   <div class="form-group">
                                                <label class="col-md-4 control-label" for="example-password2">Địa chỉ chi tiết</label>
                                                <div class="col-md-8">
                                                    <input type="text" id="example-progress-password2" path="address" class="form-control ui-wizard-content" placeholder="..and confirm it!">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END First Step -->

                                        <!-- Form Buttons -->
                                        <div class="form-group form-actions">
                                            <div class="col-md-8 col-md-offset-4">
                                                <input type="reset" class="btn btn-sm btn-warning ui-wizard-content ui-formwizard-button" id="back3" value="Back">
                                                <input type="submit" class="btn btn-sm btn-primary ui-wizard-content ui-formwizard-button" id="next3" value="Next">
                                            </div>
                                        </div>
                                        <!-- END Form Buttons -->
                                    </form>
                                    <!-- END Progress Wizard Content -->
                                </div>
                        	
                        </div>
           <jsp:include page="footer_user.jsp"/>
        </div>
        <a href="#" id="to-top"><i class="fa fa-angle-up"></i></a>
        <jsp:include page="footer_js.jsp"/>
       <script src='<c:url value="/resources/javascript/custom.js" />'></script>
       <script src='<c:url value="/resources/javascript/pages/tablesGeneral.js" />'></script>
       <script>$(function(){ TablesGeneral.init(); });</script>
</body>
</html>