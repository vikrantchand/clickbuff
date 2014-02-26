<!DOCTYPE html>
<html lang="en" class="app">
<head> <meta charset="utf-8" /> 
<title>ClickBuff.com</title> 
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
<link rel="stylesheet" href="css/clickbuff.css" type="text/css" /> 
<link rel="stylesheet" href="css/font.css" type="text/css" /> 
<link rel="stylesheet" href="css/slider.css" type="text/css">
<link rel="stylesheet" href="js/datepicker/datepicker.css" type="text/css">
<script src="js/jquery-migrate-1.2.1.min.js"></script> 
<script type="text/javascript">

jQuery(document).ready(function($){
	$('#registerForm').submit(function(){
		alert("sdfsdf");
		var a=$('#registerForm').serializeArray();
		var o = {};
		$.each(a, function() {
	        if (o[this.name] !== undefined) {
	            if (!o[this.name].push) {
	                o[this.name] = [o[this.name]];
	            }
	            o[this.name].push(this.value || '');
	        } else {
	            o[this.name] = this.value || '';
	        }
	    });
		/* var userEntity=getData(); */
		alert("sdfsdf");
		$.ajax({
			 type: 'POST',
             url: 'user',
			 dataType: "json",
             data : JSON.stringify(o),
             contentType: "application/json",
             success: function(data){
            	 if(data.msg=="")
            	 window.location='index.jsp';
            	 else
            		 document.getElementById("json").innerHTML = data.msg;
            	 $('#json').show();
			 },
				error:function(data){
					document.getElementById("json").innerHTML = data.msg;
					 $('#json').show();
			}

		});
		return false;

		});
});

</script>
<!--[if lt IE 9]> 
    <script src="js/ie/html5shiv.js"></script> 
    <script src="js/ie/respond.min.js"></script> 
    <script src="js/ie/excanvas.js"></script> 
<![endif]-->
<style>
.dropdown-menu li a:hover
{
	color:rgb(0,152,250);
}
.dropdown-menu li .wrapper-sm
{
	background-color:rgb(0,152,250);
	color:white;
	margin-top:-5px;
	margin-bottom:-10px;
}
</style>
</head>

<body> 
<section class="vbox">
    <header id="header" class="header navbar navbar-fixed-top" style="background: linear-gradient(to top, rgb(0,153,250), rgb(0,153,250));"> 
    	<div class="navbar-header aside-md visible-xs"> 
            <a href="index.html" class="navbar-brand text-white">Clickbuff</a> 
        </div>
    	<ul class="nav navbar-nav hidden-xs"> 
        	<li> <a class="text-white" href="index.jsp"><span class="h5 font-bold"> Clickbuff</span> </a> </li> 
        </ul>
    	<ul class="nav navbar-nav navbar-right hidden-xs nav-user"> 
<li><a class="text-white" onClick="document.getElementById('loginForm').className='text-center show'; document.getElementById('signUpForm').className='text-center hide';" href="#"><span class="font-bold"><i class="fa fa-sign-in"></i> Sign In</span> </a> </li> 
<li><a class="text-white"onClick="document.getElementById('signUpForm').className='text-center show'; document.getElementById('loginForm').className='text-center hide';" href="#"><span class="font-bold"><i class="fa fa-user"></i> Sign Up</span> </a> </li> 
        </ul>
        <form role="search" class="col-lg-4 pull-right" onSubmit="searchResults()" action="#"> 
        	<div class="form-group wrapper m-b-n-xs m-t-n-xs"> 
            	<div class="input-group">
                   	<input type="text" class="form-control input-sm" placeholder="Search"> 
                    <span class="input-group-btn"><button type="submit" class="btn btn-facebook btn-sm btn-icon"><i class="fa fa-search"></i></button></span>
                </div> 
            </div> 
        </form>
    </header> 
	<section id="content"> 
    	<section class="vbox"> 


<!-- sign up Form-->
<div class="text-center hide" id="signUpForm" style="width:100%; height:100%; background:rgba(51,51,51,0.6); z-index:1000; position:absolute;">
<section class="modal-dialog wrapper-md animated fadeInUp" style="width:800px;"> 
    	<section class="panel panel-default bg-white m-t-lg"> 
        	<header class="panel-heading text-center" style="background:rgb(0,152,250); color:white;"> <strong>Sign up</strong>
            <button type="button" class="close" data-dismiss="modal">&times;</button> 
            </header> 
	        <div class="modal-body">
	        <pre id="json" hidden="true" style="color: RED"></pre>
            <form id="registerForm" class="panel-body wrapper-lg" data-validate="parsley"> 
            <div class="row">
            	<div class="form-group col-lg-6"> 
                	<label class="control-label">First Name</label> 
                    <input type="text" id="firstName" name="firstName" placeholder="First Name" class="form-control input-sm parsley-validate" data-required="true"> 
                </div> 
                <div class="form-group col-lg-6">
                	<label class="control-label">Last Name</label>
                    <input type="text" name="lastName" placeholder="Last Name" class="form-control input-sm parsley-validate" data-required="true">
                </div>
            </div>
            <div class="row">
            	<div class="form-group col-lg-6"> 
                	<label class="control-label">DOB</label> 
                    <input type="text" name="dob" placeholder="DOB" class="combodate form-control parsley-validate" data-format="DD-MM-YYYY" data-template="D MMM YYYY" name="dob" value="01-01-2014" data-required="true"> 
                </div> 
                <div class="form-group col-lg-6"> 
                	<label class="control-label">Email</label> 
                    <input type="email" name="email" placeholder="Enter email" class="form-control input-sm parsley-validate" data-required="true"> 
                </div> 
            </div>
            <div class="row">
                <div class="form-group col-lg-6"> 
                	<label class="control-label">Password</label> 
                    <input type="password" name="password" id="inputPassword" placeholder="Password" class="form-control input-sm parsley-validate" data-required="true" data-type="password"> 
                </div> 
                <div class="form-group col-lg-6"> 
                	<label class="control-label">Confirm Password</label> 
                    <input type="password" id="inputPassword" placeholder="Confirm Password" class="form-control input-sm parsley-validate" data-required="true" data-type="password" data-equalto="#inputPassword"> 
                </div> 
            </div>
                <button type="submit" class="btn btn-primary" >Sign up</button> 
                <div class="line line-dashed"></div> 
                <p class="text-muted text-center"><small>Already have an account?</small></p> 
               <a href="#" onClick="document.getElementById('loginForm').className='text-center show'; document.getElementById('signUpForm').className='text-center hide';" class="btn btn-default btn-block">Sign in</a> 
             
            </form> 
        </div>
	</section>
</section>
</div>
<!-- /sign up Form-->




<!-- login Form-->
        	<div class="text-center hide" id="loginForm" style="width:100%; height:100%; background:rgba(51,51,51,0.6); z-index:1000; position:absolute;">
            <section class="modal-dialog wrapper-md animated fadeInUp text-left" style="width:400px;"> 
    	<section class="panel panel-default bg-white m-t-lg"> 
        	<header class="panel-heading text-center" style="background:rgb(0,152,250); color:white;"> 
            <strong>Sign in</strong>
            <button type="button" class="close" onClick="document.getElementById('loginForm').className='text-center hide';">&times;</button> 
            </header> 
	        <div class="modal-body">
            <form action="client_home.jsp" class="panel-body wrapper-lg" data-validate="parsley"> 
            <div class="form-group"> 
            	<label class="control-label">Email</label> <input type="email" placeholder="Enter email" class="form-control input-lg parsley-validate" data-required="true"> 
            </div> 
            <div class="form-group"> 
            	<label class="control-label">Password</label> <input type="password" id="inputPassword" placeholder="Password" class="form-control input-lg parsley-validate" data-required="true"> 
            </div> 
            <a data-dismiss="modal" data-toggle="ajaxModal" href="modals/forgot_password.html" class="pull-right m-t-xs"><small>Forgot password?</small></a> 
            <button type="submit" class="btn btn-primary">Sign in</button> 
            <div class="line line-dashed"></div> 
            <p class="text-muted text-center"><small>Do not have an account?</small></p>
                <a href="#" onClick="document.getElementById('signUpForm').className='text-center show'; document.getElementById('loginForm').className='text-center hide';" class="btn btn-default btn-block">Create Account</a> 
            </form> 
            </div>
        </section> 
</section>
</div>
<!--/ login Form-->

        	<section> 
            	<section class="hbox stretch"> 
                    <aside class="aside-md" style="background-color:#C1E0FF;">
                    	<section class="panel panel-default">
                        	<header class="panel-heading"><span>Categories</span></header>
							<section class="panel-body no-border" style="padding:0;">
                            	<div class="dropdown pull-left" style="width:100%;"> 
                                	<ul class="dropdown-menu pos-stc inline m-t-none" role="menu" aria-labelledby="dropdownMenu" style="width:100%;"> 
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Mobile &amp; Accessories</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Mobile &amp; Accessories</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li> 
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Computer Hardware</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-34px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Computer Hardware</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li> 
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Electronics</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-62px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Electronics</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li> 
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Electrical</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-90px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Electrical</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li> 
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Sports</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-118px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Sports</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li> 
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Jewellery</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-146px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Jewellery</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li> 
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Automobile</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-174px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Automobile</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li> 
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Printing</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-202px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Printing</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li>                                         
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> News Papers</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-230px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> News Papers</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li>                                         
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Travelling Agency</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-258px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Travelling Agency</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li>
                                    	<li class="dropdown-submenu"> 
                                    		<a tabindex="-1" href="#" onClick="loadCategory()"><i class="fa fa-caret-right"></i> Super Marts</a> 
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="width:300px; height:400px; margin-top:-286px;"> 
                                            	<li class="wrapper-sm"><i class="fa fa-caret-right"></i> Super Marts</li>
                                                <li class="divider"></li>
                                            	<li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 1</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 2</a></li> 
                                                <li><a tabindex="-1" href="modals/shop_demo.html" data-toggle="ajaxModal">Shop Name 3</a></li> 
                                            </ul> 
                                        </li>                                         
                                    </ul> 
                                </div>
                        	</section>
                        </section>
                    </aside> 
                   	<section>
                    	<section class="vbox"> 
                        	<section class="scrollable wrapper" id="ads_wall" onScroll="scrollFunction();" style="background-color:#C1E0FF;"> 
                            <section class="panel panel-default hidden-xs"> 
                            	<div class="carousel slide auto panel-body bg-dark" id="c-slide"> 
                                    <div class="carousel-inner"> 
                                    <div class="item"> 
                            				<div id="gallery" class="gallery gridalicious row">  
												<div class="item col-lg-3"><img src="images/shop1.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>
												<div class="item col-lg-3"><img src="images/shop2.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>
												<div class="item col-lg-3"><img src="images/shop3.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>
												<div class="item col-lg-3"><img src="images/shop4.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>	                        
                                    		</div>
                                    </div> 
                                    <div class="item active"> 
                            				<div id="gallery" class="gallery gridalicious row">  
												<div class="item col-lg-3"><img src="images/shop5.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>
												<div class="item col-lg-3"><img src="images/shop6.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>
												<div class="item col-lg-3"><img src="images/shop7.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>
												<div class="item col-lg-3"><img src="images/shop8.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>	                        
                                    		</div>
                                    </div> 
                                    <div class="item"> 
                            				<div id="gallery" class="gallery gridalicious row">  
												<div class="item col-lg-3"><img src="images/shop9.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>
												<div class="item col-lg-3"><img src="images/shop10.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>
												<div class="item col-lg-3"><img src="images/shop11.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>
												<div class="item col-lg-3"><img src="images/shop12.jpg" style="height:150px;">
											    <div class="desc">
                                                <p><a data-toggle="ajaxModal" href="modals/shop_demo.html">Shop Name</a></p>
                                                <div class="click" id="feed-click-1"><a class="btn btn-xs bg-white" style="color:black;" href="modals/login.html" data-toggle="ajaxModal"><img src="images/cursor.jpg" height="15">  click</a> 200 clicks</div>
                                                </div>
												</div>	                        
                                    		</div>
                                    </div> 
                                	</div> 
                                	<a class="left carousel-control" href="#c-slide" data-slide="prev" style="z-index:40;"> 
                                    	<i class="fa fa-angle-left fa-2x"></i> 
                                    </a> 
                                	<a class="right carousel-control" href="#c-slide" data-slide="next" style="z-index:40;"> 
                                    	<i class="fa fa-angle-right fa-2x"></i> 
                                    </a> 
                            	</div> 
                            </section>
                            <section id="shop_information_feed">
                            <% for(int i=0;i<5;i++){%>
		                                <section class="panel">
        		                        	<div class="panel-body">
												<div class="row">
                                                	<div class="col-lg-4">
                                                		<img src="images/shop1.jpg" class="thumbnail thumb-lg" style="width:100%; height:162px;"><br>
                                                        <div class="m-b-sm"> <div class="btn-group btn-group-justified"> 
                                                        <a class="btn btn-white b-black b-1x" id="btn-3" href="modals/login.html" data-toggle="ajaxModal"><span class="text"><img src="images/cursor.jpg" height="15"> Click</span></a> 
                                                    <a href="#" class="btn btn-default disabled"><span class="text-dark font-bold">200</span></a> </div> </div>
						                            <a class="btn btn-sm btn-block text-white font-bold" href="modals/login.html" data-toggle="ajaxModal" style="background:rgb(0,152,250); font-family:'cooper'; font-size:20px; padding:1px;">message</a><br>
                                                    </div>
                                			        <div class="col-lg-8">
              		                    	<h4><a data-toggle="ajaxModal" href="modals/shop_demo.html" class="text-dark"><strong>Shop Name </strong></a></h4>
                                                    <p class="bg-light wrapper"> 
We are Jaipur Based institute for endorsing performing arts with vision to build up a affirmative culture...
                                                    <small class="text-danger pull-right">Posted on: 24 Dec 2013</small>
                                                    </p>
                                                    <p class="bg-light wrapper"> 
We are Jaipur Based institute for endorsing performing arts with vision to build up a affirmative culture...
                                                    <small class="text-danger pull-right">Posted on: 20 Dec 2013</small>
                                                    </p>
                                                     <strong class="text-primary pull-right m-t-n-xs"><a  data-toggle="ajaxModal" href="modals/shop_demo.html">See more</a></strong><div class="line line-dashed m-t"></div>
                                                     <br>
<form action="#" class="m-b-none"> <div class="input-group"> <input type="text" class="form-control" placeholder="comment here.."> <span class="input-group-btn"> <button class="btn btn-default" type="button" data-toggle="ajaxModal" href="modals/login.html">POST</button> </span> </div> </form>
												</div>
                                			</div>
                                		</section> 
                           <% }%>
                            </section>
                            </section> 
                        </section> 
                    </section> 
                    <aside class="b-l aside-md">
                        <header class="panel-heading" style="padding:0;">
                           	<div class="dropdown" style="width:100%; padding:0;"> 
                               	<ul class="dropdown-menu pos-stc inline no-border bg-light" role="menu" aria-labelledby="dropdownMenu" style="width:100%;"> 
                                   	<li class="dropdown-submenu"> 
                                   		<a tabindex="-1" href="#">Buff Meter <i class="fa fa-caret-down"></i></a> 
                                        <ul class="dropdown-menu bg-light no-border" role="menu" aria-labelledby="dropdownMenu" style="left:0%; width:100%; right:100%;"> 
                                          	<li><a tabindex="-1" href="#">Default</a></li> 
                                            <li><a tabindex="-1" href="#">Mobile &amp; Accessories</a></li> 
                                            <li><a tabindex="-1" href="#">Computer Hardware</a></li> 
                                            <li><a tabindex="-1" href="#">Electronics</a></li> 
                                            <li><a tabindex="-1" href="#">Electrical</a></li> 
                                            <li><a tabindex="-1" href="#">Sports Jewellery</a></li> 
                                            <li><a tabindex="-1" href="#">Automobile</a></li> 
                                            <li><a tabindex="-1" href="#">Printing</a></li> 
                                            <li><a tabindex="-1" href="#">News Papers</a></li> 
                                            <li><a tabindex="-1" href="#">Travelling Agency</a></li> 
                                            <li><a tabindex="-1" href="#">Super Marts</a></li> 
                                        </ul> 
                                    </li> 
                                </ul>
                            </div>
                        </header>
                    	<section class="vbox">
                        	<section class="scrollable" id="buffmeter" onScroll="scrollFunctionBuffmeter();">
                                <%for(int i=0;i<20;i++){%>
                                <div class="panel-body bg-white b-b">
                                   	<div class="row">
	                                    <div class="col-lg-6">
    	                                    <img src="images/shop10.jpg" class="img-full inline pull-left" style="height:70px;">
                                        </div>
                                        <div class="col-lg-6">
                                        <a  data-toggle="ajaxModal" href="modals/shop_demo.html"><span class="h5">Shop name </span></a>
                                        <a class="btn btn-white b-black b-1x btn-xs m-t-xs m-b-xs" id="btn-3" href="modals/login.html" data-toggle="ajaxModal"><span class="text"><img src="images/cursor.jpg" height="15"> Click</span></a> 
                                        <small class="btn btn-xs btn-primary disabled">600 Clicks</small>
                                        </div>
                                    </div>
                                </div>
                                <%}%>
                    		</section>
                        </section>
                    </aside>
                    <aside class="b-l aside-sm">
	                   	<header class="panel-heading"><span class="h6">Online Users <a class="pull-right" href="" data-toggle="class:show" data-target="#user_search"><i class="fa fa-search"></i></a></span>
                        </header>
                    	<section class="vbox hidden-xs">
                        	<section class="scrollable" id="user_scroll_box" onScroll="scrollFunctionUserBoard();">
                                  <section class="panel panel-default no-border">
			        	                <div class="dropdown pull-left m-r no-border">
            		    		<ul class="dropdown-menu pos-stc inline no-border" role="menu" aria-labelledby="dropdownMenu" id="user_board">
                                <li id="user_search" class="animated fadeInDown wrapper hide"><input type="text" class="input-sm form-control" placeholder="Search.."></li>
<% for(int i=0;i<20;i++){%>                                
<li class="dropdown-submenu"> 
<a tabindex="-1" href="#"><i class="fa fa-circle" style="color:rgb(0,152,250);"></i> User Name</a> 
<section class="dropdown-menu bg-light" style="width:300px; margin:<%out.print((90+i*30));%>px 0 0 -450px; position:fixed; padding:0;"> 
<div class="row">
<div class="col-lg-4"><a href="#"><img src="images/avatar.jpg" class="img-full"></a></div>
<div class="col-lg-8"><a href="#"><strong style="color:rgb(0,150,250);">User Name</strong></a><br><p>This is the sample status</p></div>
</div>
</section> 
</li> 
<%}%>
                            	</ul> 
                        				</div>                    
                                </section> 
                    		</section>
                        </section>
                    </aside>
                </section> 
            </section> 
        </section> 
    </section>
</section>
<script src="js/clickbuff.js"></script>
<script src="js/parsley/parsley.min.js"></script>
<script src="js/parsley/parsley.extend.js"></script>
<script src="js/datepicker/datepicker.js"></script>
<script src="js/datepicker/moment.min.js"></script>
<script>
if (window.XMLHttpRequest){xmlhttp=new XMLHttpRequest();}else{xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");}
var sh=document.getElementById('ads_wall').offsetHeight+200,limit=5;status=0;
var buffsh=document.getElementById('buffmeter').offsetHeight-400;
var usersh=document.getElementById('user_scroll_box').offsetHeight-400;

function show_user_details(id){
	document.getElementById('user-details-'+id).className="panel bg-white";
}

function hide_user_details(id){
	document.getElementById('user-details-'+id).className="panel bg-white hide";
}

function searchResults(){
		xmlhttp.onreadystatechange=function(){
			if (xmlhttp.readyState==4 && xmlhttp.status==200){
				var response=xmlhttp.responseText;
				document.getElementById("shop_information_feed").innerHTML=response;
			}
		}
		xmlhttp.open("GET","ajax/perform_search.html",true);xmlhttp.send();
}
function loadCategory(){
	xmlhttp.onreadystatechange=function(){
		if (xmlhttp.readyState==4 && xmlhttp.status==200){
			var response=xmlhttp.responseText;
			document.getElementById("shop_information_feed").innerHTML=response;
		}
	}
	xmlhttp.open("GET","ajax/load_category_demo.html",true);
	xmlhttp.send();
}
function scrollFunction() {
	if(document.getElementById('ads_wall').scrollTop>sh && status==0){
		xmlhttp.onreadystatechange=function(){
			if (xmlhttp.readyState==4 && xmlhttp.status==200){
				var response=xmlhttp.responseText;
				document.getElementById("ads_wall").innerHTML+=response;
				if(response=='end') status=1;
				sh+=300;
				limit+=2;
			}
		}
		xmlhttp.open("GET","streams/ads_stream.html",true);xmlhttp.send();
	}
}
function scrollFunctionBuffmeter() {
	if(document.getElementById('buffmeter').scrollTop>buffsh && status==0)
	{
		xmlhttp.onreadystatechange=function(){
			if (xmlhttp.readyState==4 && xmlhttp.status==200){
				var response=xmlhttp.responseText;
				document.getElementById("buffmeter").innerHTML+=response;
				if(response=='end') status=1;
				buffsh+=100;
				limit+=2;
			}
		}
		xmlhttp.open("GET","streams/buffmeter_stream.html",true);xmlhttp.send();
	}
}
function scrollFunctionUserBoard() {
	if(document.getElementById('user_scroll_box').scrollTop>usersh && status==0)
	{
		xmlhttp.onreadystatechange=function(){
			if (xmlhttp.readyState==4 && xmlhttp.status==200){
				var response=xmlhttp.responseText;
				document.getElementById("user_board").innerHTML+=response;
				if(response=='end') status=1;
				usersh+=100;
				limit+=2;
			}
		}
		xmlhttp.open("GET","streams/user_stream.html",true);xmlhttp.send();
	}
}
</script>
</body>
</html>