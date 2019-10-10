<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../header.jsp"/>
<title>Insert title here</title>
</head>
<body>
	<div id="page-wrapper">
		<div id="page-container" class="sidebar-partial sidebar-visible-lg sidebar-no-animations">
			<jsp:include page="menu_right.jsp"/>
			<div id="main-container">			
				<div id="page-content">
		            <div class="row">
		            
		                 <div class="col-lg-12">
		                             <!-- Meta Data Block -->
		                             <div class="block">
		                                 <!-- Meta Data Title -->
		                                 <div class="block-title">
		                                     <h2><i class="fa fa-google"></i> <strong>Meta</strong> Data</h2>
		                                 </div>
		                                 <!-- END Meta Data Title -->
		
		                                 <!-- Meta Data Content -->
		                                 <form action='<c:url value="../create/" />' method="post" class="form-horizontal form-bordered">
		                                     <div class="form-group">
		                                         <label class="col-md-3 control-label" for="product-meta-title">Name</label>
		                                         <div class="col-md-9">
		                                             <input type="text" id="product-meta-title" name="name" class="form-control" placeholder="Enter meta title..">
		                                             <div class="help-block">55 Characters Max</div>
		                                         </div>
		                                     </div>
		                                     <div class="form-group">
		                                         <label class="col-md-3 control-label" for="product-meta-keywords">Price</label>
		                                         <div class="col-md-9">
		                                             <input type="text" id="product-meta-keywords" name="price" class="form-control" placeholder="keyword1, keyword2, keyword3">
		                                         </div>
		                                     </div>
		                                     <div class="form-group">
		                                         <label class="col-md-3 control-label" for="product-meta-description">Description</label>
		                                         <div class="col-md-9">
		                                             <textarea id="product-meta-description" name="description" class="form-control" rows="6" placeholder="Enter meta description.."></textarea>
		                                             <div class="help-block">115 Characters Max</div>
		                                         </div>
		                                     </div>
		                                     <div class="form-group form-actions">
		                                         <div class="col-md-9 col-md-offset-3">
		                                             <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-floppy-o"></i> Save</button>
		                                             <button type="reset" class="btn btn-sm btn-warning"><i class="fa fa-repeat"></i> Reset</button>
		                                         </div>
		                                     </div>
		                                 </form>
		                                 <!-- END Meta Data Content -->
		                             </div>
		                             <!-- END Meta Data Block -->
		
		                             <!-- Product Images Block -->
		                             <div class="block">
		                                 <!-- Product Images Title -->
		                                 <div class="block-title">
		                                     <h2><i class="fa fa-picture-o"></i> <strong>Product</strong> Images</h2>
		                                 </div>
		                                 <!-- END Product Images Title -->
		
		                                 <!-- Product Images Content -->
		                                 <div class="block-section">
		                                     <!-- Dropzone.js, You can check out https://github.com/enyo/dropzone/wiki for usage examples -->
		                                     <form action="page_ecom_product_edit.html" class="dropzone"></form>
		                                 </div>
		                                 <table class="table table-bordered table-striped table-vcenter">
		                                     <tbody>
		                                         <tr>
		                                             <td style="width: 20%;">
		                                                 <a href="img/placeholders/photos/photo11.jpg" data-toggle="lightbox-image">
		                                                     <img src="img/placeholders/photos/photo11.jpg" alt="" class="img-responsive center-block" style="max-width: 110px;">
		                                                 </a>
		                                             </td>
		                                             <td class="text-center">
		                                                 <label class="switch switch-primary">
		                                                     <input type="checkbox" checked><span></span>
		                                                 </label>
		                                                 Cover
		                                             </td>
		                                             <td class="text-center">
		                                                 <a href="javascript:void(0)" class="btn btn-xs btn-danger"><i class="fa fa-trash-o"></i> Delete</a>
		                                             </td>
		                                         </tr>
		                                         <tr>
		                                             <td>
		                                                 <a href="img/placeholders/photos/photo13.jpg" data-toggle="lightbox-image">
		                                                     <img src="img/placeholders/photos/photo13.jpg" alt="" class="img-responsive center-block" style="max-width: 110px;">
		                                                 </a>
		                                             </td>
		                                             <td class="text-center">
		                                                 <label class="switch switch-primary">
		                                                     <input type="checkbox"><span></span>
		                                                 </label>
		                                                 Cover
		                                             </td>
		                                             <td class="text-center">
		                                                 <a href="javascript:void(0)" class="btn btn-xs btn-danger"><i class="fa fa-trash-o"></i> Delete</a>
		                                             </td>
		                                         </tr>
		                                         <tr>
		                                             <td>
		                                                 <a href="img/placeholders/photos/photo9.jpg" data-toggle="lightbox-image">
		                                                     <img src="img/placeholders/photos/photo9.jpg" alt="" class="img-responsive center-block" style="max-width: 110px;">
		                                                 </a>
		                                             </td>
		                                             <td class="text-center">
		                                                 <label class="switch switch-primary">
		                                                     <input type="checkbox"><span></span>
		                                                 </label>
		                                                 Cover
		                                             </td>
		                                             <td class="text-center">
		                                                 <a href="javascript:void(0)" class="btn btn-xs btn-danger"><i class="fa fa-trash-o"></i> Delete</a>
		                                             </td>
		                                         </tr>
		                                     </tbody>
		                                 </table>
		                                 <!-- END Product Images Content -->
		                             </div>
		                             <!-- END Product Images Block -->
		                         </div>
		             </div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer_js.jsp"/>
	 <script src="<c:url value="/resources/javascript/ckeditor/ckeditor.js"/>"></script>
</body>
</html>