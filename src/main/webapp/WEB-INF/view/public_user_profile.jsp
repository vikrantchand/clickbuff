<!DOCTYPE html>
<html lang="en" class="app">
<head> <meta charset="utf-8" /> 
<title>ClickBuff.com</title> 
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
<link rel="stylesheet" href="<% out.print("css/clickbuff.css");%>" type="text/css" /> 
<link rel="stylesheet" href="css/font.css" type="text/css" /> 
<link rel="stylesheet" href="css/slider.css" type="text/css">
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

<section class="animated fadeInDownBig bg-light m-r-n-lg" style="width:100%; height:100%; position:absolute;"> 
    <section class="vbox">
    <header id="header" class="header navbar navbar-fixed-top" style="background: linear-gradient(to top, rgb(0,153,250), rgb(0,153,250));"> 
    	<div class="navbar-header aside-md visible-xs"> 
            <a href="#" class="navbar-brand text-white">Clickbuff</a> 
        </div>
    	<ul class="nav navbar-nav hidden-xs"> 
<li class="active"> <a href="index.jsp" class="text-white"><span class="font-bold">Clickbuff</span> </a> </li> 
        </ul>
    	<ul class="nav navbar-nav navbar-right hidden-xs nav-user"> 
        	<li> <a href="client_home.jsp" class="text-white"><span class="font-bold"><i class="fa fa-home"></i> Home</span> </a> </li> 
        	<li> <a href="index.jsp" class="text-white"><span class="font-bold"><i class="fa fa-sign-out"></i> Logout</span> </a> </li> 
        </ul>
    </header> 
    <section id="content"> 
    	<section class="vbox"> 
        	<section> 
            	<section class="hbox stretch"> 
        	<aside class="aside">
                       	<section class="vbox"> 
                        <section class="scrollable hover"> 
        	<section class="panel panel-default">
            	<header class="header wrapper"><span class="h4" style="color:rgb(0,152,250);">User Name</span></header>
            	<section class="panel-body">
                <div class="row">
                <div class="col-lg-4">
        		<a href="modals/image_viewer.jsp" data-toggle="ajaxModal"><img src="images/avatar.jpg" class="img-full thumbnail thumb-lg"></a>
                 </div>
                <div class="col-lg-8">
    	            <p class="text-left h4">"This is a sample status for user profile."</p><br />
                    <div class="line line-dashed"></div>
                    <strong>Name</strong><br>
                    <strong>DOB</strong><br>
                    <strong>Gender</strong><br>
                    <strong>City</strong><br>
                    <strong>Country</strong><br>
                    <strong>Mobile</strong><br>
                    <strong>Email</strong><br>
                    <strong>Hobby</strong><br>
                    <strong>My Pass Time</strong><br>
                    <strong>Occupation</strong><br>
                    <strong>About:</strong><br>
		                    <form class="animated fadeInDown wrapper" id="newMessageForm">
                            	<label> Send Message</label>
        		            	<textarea class="form-control m-b" placeholder="Write your ad here..."></textarea>
		                        <input type="submit" class="btn btn-primary" value="Sumbit">
		                    </form>
                </div>
                </div>
                </section>
            </section> 
            </section>
            </section>
        </aside>
            	<aside class="bg-light lter b-l aside-md" id="email-list"> 
                	<section class="vbox"> 
                    	<header class="bg-light dk header wrapper"><span class="h4">Recent Comments</span>
                        </header> 
                        <section class="scrollable hover"> 
                        	<ul class="list-group no-radius m-b-none m-t-n-xxs list-group-alt list-group-lg"> 
                            	<li class="list-group-item" id="comment1-1"> 
                     				<div id="gallery" class="gallery gridalicious row">  
										<div class="item inline pull-left m-r m-l" style="height:150px; width:150px;"><img src="images/shop1.jpg" style="height:150px;" width="150px;">
                                             <div class="desc" style="height:150px;" width="100px;">
                                                	<p>Shop Name</p>
                                                	<div class="click" id="feed-click-1"><a href="#" class="btn btn-xs bg-white" style="color:black;">click</a> 200 clicks</div>
                                                </div>
												</div>
                                    <a href="#" class="clear"> 
                                        <a href="modals/shop_demo.html" data-toggle="ajaxModal"><strong style="color:#0000FF;">Shop Name</strong></a><br> 
                                    	<small class="text-muted">3 minuts ago</small><br> 
                                        <span>This is a sample comment <br><br></span> 
                                    </a> 
                               	</li>
                            </ul> 
                        </section> 
                    </section>
                </aside>
            	<aside class="bg-light lter b-l aside-md" id="email-list"> 
                	<section class="vbox"> 
                    	<header class="bg-light dk header wrapper"><span class="h4">Recent Clicks</span>
                        </header> 
                        <section class="scrollable hover"> 
                        	<ul class="list-group no-radius m-b-none m-t-n-xxs list-group-alt list-group-lg"> 
                            <% for(int i=0;i<5;i++){%>
                            	<li class="list-group-item" id="comment1-1"> 
                                    <a href="#" class="clear"> 
                                        <a href="modals/shop_demo.html" data-toggle="ajaxModal"><strong  style="color:#0000FF;">Shop Name</strong></a><br> 
                                    	<small class="text-muted">3 minuts ago</small><br> 
                                    </a> 
                               	</li>
                            <%}%>
                            </ul> 
                        </section> 
                    </section>
                </aside>
</section></section>
</section></section></section></section>
<script src="js/clickbuff.js"></script>
</body>
</html>