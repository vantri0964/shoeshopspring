<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.List"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!--  <script type="text/javascript">
 	$(document).ready(function(){
   		$(".show").fadeOut(4000);
	});
 </script> -->
<style type="text/css" media="screen">
.show{
	position: relative;
	top: 100px;
	right: -65%;
	width: 300px;
  	height: auto;
}
</style>
 <% 
 Hashtable<String , String> flash = new Hashtable<String, String>();
	flash = null;
	flash = (Hashtable<String , String>) request.getAttribute("flash");
	 String type = "";
	 String Info = "";
	if(flash != null){
		type = flash.keys().nextElement();
 		Info = flash.elements().nextElement();
	}
%>
<c:if test="${flash != null}">
    <div class="col-md-12">
	  <div class="show alert alert-<%= type %>">
	    <button type="button" class="close" data-dismiss="alert">&times;</button>
	    <strong>Error!</strong><%= Info %>
	  </div>
	</div>
</c:if>
