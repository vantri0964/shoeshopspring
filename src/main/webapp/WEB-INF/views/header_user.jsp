<%@page import="java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<header>
	<div class="container">
                    <!-- Site Logo -->
                    <a href='<c:url value="/"/>' class="site-logo">
                        <i class="gi gi-flash"></i> <strong>Pro</strong>UI
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
                                <a href="javascript:void(0)" class="site-nav-sub"><i class="fa fa-angle-down site-nav-arrow"></i>Home</a>
                                <ul>
                                    <li>
                                        <a href="index.html">Full Width</a>
                                    </li>
                                    <li>
                                        <a href="index_alt.html">Full Width (Dark)</a>
                                    </li>
                                    <li>
                                        <a href="index_parallax.html">Full Width Parallax</a>
                                    </li>
                                    <li>
                                        <a href="index_boxed.html">Boxed</a>
                                    </li>
                                    <li>
                                        <a href="index_boxed_alt.html">Boxed (Dark)</a>
                                    </li>
                                    <li>
                                        <a href="index_boxed_parallax.html">Boxed Parallax</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" class="site-nav-sub"><i class="fa fa-angle-down site-nav-arrow"></i>Pages</a>
                                <ul>
                                    <li>
                                        <a href="blog.html">Blog</a>
                                    </li>
                                    <li>
                                        <a href="blog_post.html">Blog Post</a>
                                    </li>
                                    <li>
                                        <a href="portfolio_4.html">Portfolio 4 Columns</a>
                                    </li>
                                    <li>
                                        <a href="portfolio_3.html">Portfolio 3 Columns</a>
                                    </li>
                                    <li>
                                        <a href="portfolio_2.html">Portfolio 2 Columns</a>
                                    </li>
                                    <li>
                                        <a href="portfolio_single.html">Portfolio Single</a>
                                    </li>
                                    <li>
                                        <a href="team.html">Team</a>
                                    </li>
                                    <li>
                                        <a href="helpdesk.html">Helpdesk</a>
                                    </li>
                                    <li>
                                        <a href="jobs.html">Jobs</a>
                                    </li>
                                    <li>
                                        <a href="how_it_works.html">How it works</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="active">
                                <a href="javascript:void(0)" class="site-nav-sub"><i class="fa fa-angle-down site-nav-arrow"></i>eCommerce</a>
                                <ul>
                                    <li>
                                        <a href="ecom_home.html">Home</a>
                                    </li>
                                    <li>
                                        <a href="ecom_search_results.html">Search Results</a>
                                    </li>
                                    <li>
                                        <a href="ecom_product_list.html" class="active">Product List</a>
                                    </li>
                                    <li>
                                        <a href="ecom_product.html">Product</a>
                                    </li>
                                    <li>
                                        <a href="ecom_product_comparison.html">Product Comparison</a>
                                    </li>
                                    <li>
                                        <a href="ecom_shopping_cart.html">Shopping Cart</a>
                                    </li>
                                    <li>
                                        <a href="ecom_checkout.html">Checkout</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="features.html">Features</a>
                            </li>
                            <li>
                                <a href="pricing.html">Pricing</a>
                            </li>
                            <li>
                                <a href="contact.html">Contact</a>
                            </li>
                            <li>
                            <c:if test="${user_id != null }">
                               <a href="" >${user.getName()}</a>
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