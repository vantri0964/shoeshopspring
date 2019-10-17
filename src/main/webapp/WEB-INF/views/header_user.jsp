<%@page import="java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<header>
	<div class="container">
                    <!-- Site Logo -->
                    <a href='<c:url value="/"/>' class="site-logo">
                        <i class="gi gi-flash"></i> <strong>Shoe</strong>shop
                    </a>
                    <!-- Site Logo -->

                    <!-- Site Navigation -->
                    <nav>
                        <!-- Menu Toggle -->
                        <!-- Toggles menu on small screens -->
                        <a href="javascript:void(0)" class="btn btn-default site-menu-toggle visible-xs visible-sm">
                            <i class="fa fa-bars"></i>
                        </a>
                        <!-- END Menu Toggle -->

                        <!-- Main Menu -->
                        <ul class="site-nav">
                            <!-- Toggles menu on small screens -->
                            <li class="visible-xs visible-sm">
                                <a href="javascript:void(0)" class="site-menu-toggle text-center">
                                    <i class="fa fa-times"></i>
                                </a>
                            </li>
                            <!-- END Menu Toggle -->
                            <li>
                                <a href="javascript:void(0)" class="site-nav-sub"><i class="fa fa-angle-down site-nav-arrow"></i>Category</a>
                                <ul>
									<li>
                                        <a href="#">Male</a>
                                    </li>
                                    <li>
                                        <a href="#">FeMale</a>
                                    </li>
                                </ul>
                            </li>
                         
                            <li>
                                <a href="#">Features</a>
                            </li>
                            <li>
                                <a href="#l">Pricing</a>
                            </li>
                            <li>
                                <a href="#">Contact</a>
                            </li>
                            <li>
                            <c:if test="${user_id != null }">
                               <a href="" >${user_name}</a>
                                <ul>
                                    <li>
                                        <a href="ecom_home.html">Profile</a>
                                    </li>
                                    <li>
                                        <a href="ecom_search_results.html">DashBoard</a>
                                    </li>
                                    <li>
                                        <a href='<c:url value ="/session/logout/"/>'>Logout</a>
                                    </li>
                                 </ul>
                            </c:if>
                            <c:if test="${user_id == null }">
                                <a href='<c:url value="/session/" />'> Login </a>
                            </c:if>
                             
                            </li>
                            <li id="cart">
                              <a href='<c:url value="/cart/index/"/>'><span class="gi gi-cart_out">
	                              <c:if test="${user_id != null }">
		                              <c:if test="${proCart != null}">
		                            	<span id="number">${proCart.size()}</span>
		                              </c:if>
		                              <c:if test="${proCart == null}">
		                            	<span id="number">0</span>
		                              </c:if>
	                              </c:if>
                              </span></a>
                            </li>
                        </ul>
                        <!-- END Main Menu -->
                    </nav>
                    <!-- END Site Navigation -->
                </div>
</header>
<jsp:include page="flash.jsp" />