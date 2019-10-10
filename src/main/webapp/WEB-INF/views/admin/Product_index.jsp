<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="com.levantri.empty.Product"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../header.jsp"/>
<title>Insert title here</title>
 <style type="text/css" media="screen">
  	.show{
  		width: 300px;
  		height: auto;
  	}
  </style>
</head>
<body>
<div id="page-wrapper">
	<div  id="page-container" class="sidebar-partial sidebar-visible-lg sidebar-no-animations">
		<jsp:include page="menu_right.jsp"/>
		<div id="main-container">
                    <header class="navbar navbar-default">
                        <!-- Left Header Navigation -->
                        <ul class="nav navbar-nav-custom">
                            <!-- Main Sidebar Toggle Button -->
                            <li>
                                <a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar');">
                                    <i class="fa fa-bars fa-fw"></i>
                                </a>
                            </li>
                            <!-- END Main Sidebar Toggle Button -->

                            <!-- Template Options -->
                            <!-- Change Options functionality can be found in js/app.js - templateOptions() -->
                            <li class="dropdown">
                                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="gi gi-settings"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-custom dropdown-options">
                                    <li class="dropdown-header text-center">Header Style</li>
                                    <li>
                                        <div class="btn-group btn-group-justified btn-group-sm">
                                            <a href="javascript:void(0)" class="btn btn-primary" id="options-header-default">Light</a>
                                            <a href="javascript:void(0)" class="btn btn-primary" id="options-header-inverse">Dark</a>
                                        </div>
                                    </li>
                                    <li class="dropdown-header text-center">Page Style</li>
                                    <li>
                                        <div class="btn-group btn-group-justified btn-group-sm">
                                            <a href="javascript:void(0)" class="btn btn-primary" id="options-main-style">Default</a>
                                            <a href="javascript:void(0)" class="btn btn-primary" id="options-main-style-alt">Alternative</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- END Template Options -->
                        </ul>
                        <!-- END Left Header Navigation -->

                        <!-- Search Form -->
                        <form action="page_ready_search_results.html" method="post" class="navbar-form-custom" role="search">
                            <div class="form-group">
                                <input type="text" id="top-search" name="top-search" class="form-control" placeholder="Search..">
                            </div>
                        </form>
                        <!-- END Search Form -->

                        <!-- Right Header Navigation -->
                        <ul class="nav navbar-nav-custom pull-right">
                            <!-- Alternative Sidebar Toggle Button -->
                            <li>
                                <!-- If you do not want the main sidebar to open when the alternative sidebar is closed, just remove the second parameter: App.sidebar('toggle-sidebar-alt'); -->
                                <a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar-alt', 'toggle-other');">
                                    <i class="gi gi-share_alt"></i>
                                    <span class="label label-primary label-indicator animation-floating">4</span>
                                </a>
                            </li>
                            <!-- END Alternative Sidebar Toggle Button -->

                            <!-- User Dropdown -->
                            <li class="dropdown">
                                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="img/placeholders/avatars/avatar2.jpg" alt="avatar"> <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                    <li class="dropdown-header text-center">Account</li>
                                    <li>
                                        <a href="page_ready_timeline.html">
                                            <i class="fa fa-clock-o fa-fw pull-right"></i>
                                            <span class="badge pull-right">10</span>
                                            Updates
                                        </a>
                                        <a href="page_ready_inbox.html">
                                            <i class="fa fa-envelope-o fa-fw pull-right"></i>
                                            <span class="badge pull-right">5</span>
                                            Messages
                                        </a>
                                        <a href="page_ready_pricing_tables.html"><i class="fa fa-magnet fa-fw pull-right"></i>
                                            <span class="badge pull-right">3</span>
                                            Subscriptions
                                        </a>
                                        <a href="page_ready_faq.html"><i class="fa fa-question fa-fw pull-right"></i>
                                            <span class="badge pull-right">11</span>
                                            FAQ
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="page_ready_user_profile.html">
                                            <i class="fa fa-user fa-fw pull-right"></i>
                                            Profile
                                        </a>
                                        <!-- Opens the user settings modal that can be found at the bottom of each page (page_footer.html in PHP version) -->
                                        <a href="#modal-user-settings" data-toggle="modal">
                                            <i class="fa fa-cog fa-fw pull-right"></i>
                                            Settings
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="page_ready_lock_screen.html"><i class="fa fa-lock fa-fw pull-right"></i> Lock Account</a>
                                        <a href="login.html"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
                                    </li>
                                    <li class="dropdown-header text-center">Activity</li>
                                    <li>
                                        <div class="alert alert-success alert-alt">
                                            <small>5 min ago</small><br>
                                            <i class="fa fa-thumbs-up fa-fw"></i> You had a new sale ($10)
                                        </div>
                                        <div class="alert alert-info alert-alt">
                                            <small>10 min ago</small><br>
                                            <i class="fa fa-arrow-up fa-fw"></i> Upgraded to Pro plan
                                        </div>
                                        <div class="alert alert-warning alert-alt">
                                            <small>3 hours ago</small><br>
                                            <i class="fa fa-exclamation fa-fw"></i> Running low on space<br><strong>18GB in use</strong> 2GB left
                                        </div>
                                        <div class="alert alert-danger alert-alt">
                                            <small>Yesterday</small><br>
                                            <i class="fa fa-bug fa-fw"></i> <a href="javascript:void(0)" class="alert-link">New bug submitted</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- END User Dropdown -->
                        </ul>
                        <!-- END Right Header Navigation -->
                    </header>
                    <!-- END Header -->

                    <!-- Page content -->
                    <div id="page-content">
                        <!-- eCommerce Products Header -->
                        <div class="content-header">
                            <ul class="nav-horizontal text-center">
                                <li>
                                    <a href="page_ecom_dashboard.html"><i class="fa fa-bar-chart"></i> Dashboard</a>
                                </li>
                                <li>
                                    <a href="page_ecom_orders.html"><i class="gi gi-shop_window"></i> Orders</a>
                                </li>
                                <li>
                                    <a href="page_ecom_order_view.html"><i class="gi gi-shopping_cart"></i> Order View</a>
                                </li>
                                <li class="active">
                                    <a href="page_ecom_products.html"><i class="gi gi-shopping_bag"></i> Products</a>
                                </li>
                                <li>
                                    <a href="page_ecom_product_edit.html"><i class="gi gi-pencil"></i> Product Edit</a>
                                </li>
                                <li>
                                    <a href="page_ecom_customer_view.html"><i class="gi gi-user"></i> Customer View</a>
                                </li>
                            </ul>
                        </div>
                        <!-- END eCommerce Products Header -->

                        <!-- Quick Stats -->
                        <div class="row text-center">
                            <div class="col-sm-6 col-lg-3">
                                <a href="page_ecom_product_edit.html" class="widget widget-hover-effect2">
                                    <div class="widget-extra themed-background-success">
                                        <h4 class="widget-content-light"><strong>Add New</strong> Product</h4>
                                    </div>
                                    <div class="widget-extra-full"><span class="h2 text-success animation-expandOpen"><i class="fa fa-plus"></i></span></div>
                                </a>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <a href="javascript:void(0)" class="widget widget-hover-effect2">
                                    <div class="widget-extra themed-background-danger">
                                        <h4 class="widget-content-light"><strong>Out of</strong> Stock</h4>
                                    </div>
                                    <div class="widget-extra-full"><span class="h2 text-danger animation-expandOpen">71</span></div>
                                </a>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <a href="javascript:void(0)" class="widget widget-hover-effect2">
                                    <div class="widget-extra themed-background-dark">
                                        <h4 class="widget-content-light"><strong>Top</strong> Sellers</h4>
                                    </div>
                                    <div class="widget-extra-full"><span class="h2 themed-color-dark animation-expandOpen">20</span></div>
                                </a>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <a href="javascript:void(0)" class="widget widget-hover-effect2">
                                    <div class="widget-extra themed-background-dark">
                                        <h4 class="widget-content-light"><strong>All</strong> Products</h4>
                                    </div>
                                    <div class="widget-extra-full"><span class="h2 themed-color-dark animation-expandOpen">4.982</span></div>
                                </a>
                            </div>
                        </div>
                        <!-- END Quick Stats -->

                        <!-- All Products Block -->
                        <div class="block full">
                            <!-- All Products Title -->
                            <div class="block-title">
                                <div class="block-options pull-right">
                                    <a href="javascript:void(0)" class="btn btn-alt btn-sm btn-default" data-toggle="tooltip" title="Settings"><i class="fa fa-cog"></i></a>
                                </div>
                                <h2><strong>All</strong> Products</h2>
                            </div>
                            	<div class="col-md-12">
									  <div class="alert alert-success show">
									    <button type="button" class="close" data-dismiss="alert">&times;</button>
									    <strong>Thành công!</strong> Cảnh báo thành công!
									  </div>
								</div>
                            <!-- END All Products Title -->

                            <!-- All Products Content -->
                            <table id="ecom-products" class="table table-bordered table-striped table-vcenter">
                                <thead>
                                    <tr>
                                        <th class="text-center" style="width: 70px;">ID</th>
                                        <th>Product Name</th>
                                        <th class="text-right hidden-xs">Price</th>
                                        <th class="hidden-xs">Status</th>
                                        <th class="hidden-xs text-center">Added</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <% List<Product> productLists = (List<Product>) request.getAttribute("productLists"); %>
                                <c:forEach var="f" items="${productLists}">
                                	  <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8799</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html"><c:out value="${f.getName()}"/> </a></td>
                                        <td class="text-right hidden-xs"><strong> <c:out value="${f.getPrice()}"/> </strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (6)</span>
                                        </td>
                                        <td class="hidden-xs text-center">13/06/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8799</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #99</a></td>
                                        <td class="text-right hidden-xs"><strong>$2052,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (6)</span>
                                        </td>
                                        <td class="hidden-xs text-center">13/06/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8798</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #98</a></td>
                                        <td class="text-right hidden-xs"><strong>$2060,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">20/03/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8797</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #97</a></td>
                                        <td class="text-right hidden-xs"><strong>$1826,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (180)</span>
                                        </td>
                                        <td class="hidden-xs text-center">23/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8796</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #96</a></td>
                                        <td class="text-right hidden-xs"><strong>$208,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">10/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8795</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #95</a></td>
                                        <td class="text-right hidden-xs"><strong>$1272,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (161)</span>
                                        </td>
                                        <td class="hidden-xs text-center">06/11/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8794</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #94</a></td>
                                        <td class="text-right hidden-xs"><strong>$2419,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">22/01/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8793</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #93</a></td>
                                        <td class="text-right hidden-xs"><strong>$229,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">10/08/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8792</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #92</a></td>
                                        <td class="text-right hidden-xs"><strong>$1149,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">22/06/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8791</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #91</a></td>
                                        <td class="text-right hidden-xs"><strong>$1696,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (105)</span>
                                        </td>
                                        <td class="hidden-xs text-center">03/11/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8790</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #90</a></td>
                                        <td class="text-right hidden-xs"><strong>$627,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (120)</span>
                                        </td>
                                        <td class="hidden-xs text-center">16/01/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8789</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #89</a></td>
                                        <td class="text-right hidden-xs"><strong>$570,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (219)</span>
                                        </td>
                                        <td class="hidden-xs text-center">16/07/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8788</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #88</a></td>
                                        <td class="text-right hidden-xs"><strong>$2178,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (149)</span>
                                        </td>
                                        <td class="hidden-xs text-center">14/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8787</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #87</a></td>
                                        <td class="text-right hidden-xs"><strong>$782,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (209)</span>
                                        </td>
                                        <td class="hidden-xs text-center">11/02/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8786</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #86</a></td>
                                        <td class="text-right hidden-xs"><strong>$1184,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">16/11/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8785</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #85</a></td>
                                        <td class="text-right hidden-xs"><strong>$655,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">22/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8784</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #84</a></td>
                                        <td class="text-right hidden-xs"><strong>$1010,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (127)</span>
                                        </td>
                                        <td class="hidden-xs text-center">11/02/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8783</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #83</a></td>
                                        <td class="text-right hidden-xs"><strong>$2228,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">21/02/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8782</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #82</a></td>
                                        <td class="text-right hidden-xs"><strong>$1351,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">14/08/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8781</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #81</a></td>
                                        <td class="text-right hidden-xs"><strong>$450,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (56)</span>
                                        </td>
                                        <td class="hidden-xs text-center">12/02/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8780</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #80</a></td>
                                        <td class="text-right hidden-xs"><strong>$1668,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (159)</span>
                                        </td>
                                        <td class="hidden-xs text-center">09/08/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8779</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #79</a></td>
                                        <td class="text-right hidden-xs"><strong>$1211,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (240)</span>
                                        </td>
                                        <td class="hidden-xs text-center">10/09/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8778</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #78</a></td>
                                        <td class="text-right hidden-xs"><strong>$1968,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">27/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8777</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #77</a></td>
                                        <td class="text-right hidden-xs"><strong>$1665,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">23/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8776</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #76</a></td>
                                        <td class="text-right hidden-xs"><strong>$2170,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (225)</span>
                                        </td>
                                        <td class="hidden-xs text-center">09/02/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8775</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #75</a></td>
                                        <td class="text-right hidden-xs"><strong>$585,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">14/08/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8774</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #74</a></td>
                                        <td class="text-right hidden-xs"><strong>$419,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (98)</span>
                                        </td>
                                        <td class="hidden-xs text-center">04/03/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8773</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #73</a></td>
                                        <td class="text-right hidden-xs"><strong>$2226,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (205)</span>
                                        </td>
                                        <td class="hidden-xs text-center">04/09/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8772</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #72</a></td>
                                        <td class="text-right hidden-xs"><strong>$619,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (85)</span>
                                        </td>
                                        <td class="hidden-xs text-center">02/11/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8771</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #71</a></td>
                                        <td class="text-right hidden-xs"><strong>$495,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">28/08/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8770</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #70</a></td>
                                        <td class="text-right hidden-xs"><strong>$2011,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (239)</span>
                                        </td>
                                        <td class="hidden-xs text-center">16/06/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8769</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #69</a></td>
                                        <td class="text-right hidden-xs"><strong>$1391,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">08/12/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8768</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #68</a></td>
                                        <td class="text-right hidden-xs"><strong>$747,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (215)</span>
                                        </td>
                                        <td class="hidden-xs text-center">14/07/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8767</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #67</a></td>
                                        <td class="text-right hidden-xs"><strong>$566,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">20/08/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8766</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #66</a></td>
                                        <td class="text-right hidden-xs"><strong>$2475,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">25/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8765</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #65</a></td>
                                        <td class="text-right hidden-xs"><strong>$1595,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (183)</span>
                                        </td>
                                        <td class="hidden-xs text-center">03/08/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8764</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #64</a></td>
                                        <td class="text-right hidden-xs"><strong>$1101,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (180)</span>
                                        </td>
                                        <td class="hidden-xs text-center">26/05/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8763</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #63</a></td>
                                        <td class="text-right hidden-xs"><strong>$2047,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">28/03/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8762</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #62</a></td>
                                        <td class="text-right hidden-xs"><strong>$2475,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (205)</span>
                                        </td>
                                        <td class="hidden-xs text-center">17/09/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8761</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #61</a></td>
                                        <td class="text-right hidden-xs"><strong>$1837,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">17/03/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8760</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #60</a></td>
                                        <td class="text-right hidden-xs"><strong>$665,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (213)</span>
                                        </td>
                                        <td class="hidden-xs text-center">05/05/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8759</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #59</a></td>
                                        <td class="text-right hidden-xs"><strong>$2415,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (205)</span>
                                        </td>
                                        <td class="hidden-xs text-center">26/06/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8758</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #58</a></td>
                                        <td class="text-right hidden-xs"><strong>$2219,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">07/01/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8757</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #57</a></td>
                                        <td class="text-right hidden-xs"><strong>$934,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">05/09/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8756</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #56</a></td>
                                        <td class="text-right hidden-xs"><strong>$1133,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">01/11/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8755</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #55</a></td>
                                        <td class="text-right hidden-xs"><strong>$573,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (179)</span>
                                        </td>
                                        <td class="hidden-xs text-center">17/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8754</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #54</a></td>
                                        <td class="text-right hidden-xs"><strong>$806,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">07/09/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8753</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #53</a></td>
                                        <td class="text-right hidden-xs"><strong>$1959,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (207)</span>
                                        </td>
                                        <td class="hidden-xs text-center">04/06/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8752</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #52</a></td>
                                        <td class="text-right hidden-xs"><strong>$1334,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">18/08/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8751</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #51</a></td>
                                        <td class="text-right hidden-xs"><strong>$2164,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (194)</span>
                                        </td>
                                        <td class="hidden-xs text-center">27/09/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8750</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #50</a></td>
                                        <td class="text-right hidden-xs"><strong>$976,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">19/12/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8749</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #49</a></td>
                                        <td class="text-right hidden-xs"><strong>$1014,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">14/11/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8748</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #48</a></td>
                                        <td class="text-right hidden-xs"><strong>$1744,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">18/05/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8747</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #47</a></td>
                                        <td class="text-right hidden-xs"><strong>$612,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (200)</span>
                                        </td>
                                        <td class="hidden-xs text-center">21/06/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8746</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #46</a></td>
                                        <td class="text-right hidden-xs"><strong>$567,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (215)</span>
                                        </td>
                                        <td class="hidden-xs text-center">13/10/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8745</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #45</a></td>
                                        <td class="text-right hidden-xs"><strong>$1712,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (136)</span>
                                        </td>
                                        <td class="hidden-xs text-center">06/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8744</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #44</a></td>
                                        <td class="text-right hidden-xs"><strong>$507,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">01/11/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8743</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #43</a></td>
                                        <td class="text-right hidden-xs"><strong>$1507,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">11/07/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8742</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #42</a></td>
                                        <td class="text-right hidden-xs"><strong>$316,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">22/02/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8741</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #41</a></td>
                                        <td class="text-right hidden-xs"><strong>$261,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-success">Available (100)</span>
                                        </td>
                                        <td class="hidden-xs text-center">21/05/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><a href="page_ecom_product_edit.html"><strong>PID.8740</strong></a></td>
                                        <td><a href="page_ecom_product_edit.html">Product #40</a></td>
                                        <td class="text-right hidden-xs"><strong>$1906,00</strong></td>
                                        <td class="hidden-xs">
                                            <span class="label label-danger">Out of Stock</span>
                                        </td>
                                        <td class="hidden-xs text-center">05/04/2014</td>
                                        <td class="text-center">
                                            <div class="btn-group btn-group-xs">
                                                <a href="page_ecom_product_edit.html" data-toggle="tooltip" title="Edit" class="btn btn-default"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:void(0)" data-toggle="tooltip" title="Delete" class="btn btn-xs btn-danger"><i class="fa fa-times"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- END All Products Content -->
                        </div>
                        <!-- END All Products Block -->
                    </div>
                    <!-- END Page Content -->

                    <!-- Footer -->
                    <footer class="clearfix">
                        <div class="pull-right">
                            Crafted with <i class="fa fa-heart text-danger"></i> by <a href="http://goo.gl/vNS3I" target="_blank">pixelcave</a>
                        </div>
                        <div class="pull-left">
                            <span id="year-copy"></span> &copy; <a href="http://goo.gl/TDOSuC" target="_blank">ProUI 3.0</a>
                        </div>
                    </footer>
                    <!-- END Footer -->
                </div>
	</div>
	<jsp:include page="../footer_js.jsp"/>
	<script src="<c:url value="/resources/javascript/pages/ecomProducts.js"/>"></script>
    <script>$(function(){ EcomProducts.init(); });</script>
</div>
</body>
</html>