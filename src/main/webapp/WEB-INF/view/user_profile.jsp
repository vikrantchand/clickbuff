<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
.dropdown-menu li a:hover{color:rgb(0,152,250);}
.dropdown-menu li .wrapper-sm{background-color:rgb(0,152,250);color:white;margin-top:-5px;margin-bottom:-10px;}
.file-input-wrapper{overflow: hidden;position: relative;cursor: pointer;z-index: 1;}
.file-input-wrapper input[type=file], .file-input-wrapper input[type=file]:focus, .file-input-wrapper input[type=file]:hover{position: absolute;top: 0;left: 0;cursor: pointer;opacity: 0;filter: alpha(opacity=0);z-index: 99;outline: 0;}.file-input-name{margin-left: 8px;}
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
<li class="active"> <a href="user_home.jsp" class="text-white">Welcome, <span class="font-bold"><i class="fa fa-user"></i> User</span> </a> </li> 
        </ul>
    	<ul class="nav navbar-nav navbar-right hidden-xs nav-user"> 
        	<li> <a href="user_home.jsp" class="text-white"><span class="font-bold"><i class="fa fa-home"></i> Home</span> </a> </li> 
        	<li> <a data-dismiss="modal" href="modals/setting.html" data-toggle="ajaxModal" class="text-white"><span class="font-bold"><i class="fa fa-cog"></i> Setting</span> </a> </li> 
        	<li> <a href="index.jsp" class="text-white"><span class="font-bold"><i class="fa fa-sign-out"></i> Logout</span> </a> </li> 
        </ul>
    </header> 
    <section id="content"> 
    	<section class="vbox"> 
        	<section> 
            	<section class="hbox stretch"> 
        	<aside class="aside">
                       	<section class="vbox"> 
                        <section class="scrollable"> 
        	<section class="panel panel-default">
            	<header class="header wrapper"><span class="h4">User Name</span></header>
            	<section class="panel-body">
                <div class="row">
                <div class="col-lg-4">
        		<img src="images/avatar.jpg" class="img-full thumbnail thumb-lg">
                 </div>
                <div class="col-lg-8">
    	            <p class="text-left h4">"This is a sample status for user profile."</p><br />
                    <form class="animated fadeInUp hide" id="statusForm">
                    	<textarea class="form-control m-b" placeholder="Write your status here..."></textarea>
                        <input type="submit" class="btn btn-primary" value="Sumbit">
                    </form>
                    <div class="line line-dashed"></div>
	               	<a class="file-input-wrapper btn btn btn-sm" style="background-color:rgb(0,152,250);color:white;"> Update pic <input type="file" title="Browse" class="btn btn-sm btn-info" style="left: -186px;top: 3.5px;" accept="image/jpeg" name="myfile" id="myfile"></a>
                    <a class="btn btn-sm inline" style="background-color:rgb(0,152,250);color:white;" data-toggle="class:show" data-target="#statusForm">Update Status</a>
                </div>
                </div>
                </section>
            </section> 
            </section>
            </section>
        </aside>
            	<aside class="bg-light lter b-l aside-md" id="email-list"> 
                	<section class="vbox"> 
                    	<header class="bg-light dk header wrapper"><span class="h4">Inbox(3)</span>
                        <span class="pull-right">
                        	<a class="btn btn-sm" style="background-color:rgb(0,152,250);color:white;" data-toggle="class:show" data-target="#newMessageForm"><i class="fa fa-plus"></i> Create</a>
                        </span>
                        </header> 
                        <section class="scrollable"> 
		                    <form class="animated fadeInDown hide wrapper" id="newMessageForm">
                            	<label>To</label>
                            	<input type="text" class="form-control input-sm m-b">
                            	<label>Message</label>
        		            	<textarea class="form-control m-b" placeholder="Write your ad here..."></textarea>
		                        <input type="submit" class="btn btn-primary" value="Sumbit">
		                    </form>
                        	<ul class="list-group no-radius m-b-none m-t-n-xxs list-group-alt list-group-lg"> 
                            	<li class="list-group-item" id="message-1"> 
                                	<a href="#" class="thumb-sm pull-left m-r-sm"> <img src="images/avatar.jpg" class="img-rounded"> </a> 
                                    <a href="#" class="clear"> 
                                    	<small class="pull-right text-muted m-l">
                                        	<a href="#" class="btn btn-xs btn-default" data-toggle="class:hide" data-target="#message-reply-1">Reply</a> 
                                            <a href="#" class="btn btn-xs btn-default" data-toggle="class:hide" data-target="#message-1">Delete</a>
                                        </small> 
                                        <strong><a href="public_user_profile.jsp" style="color:#0000FF;">User Name</a></strong><br> 
                                    	<small class="text-muted">3 minuts ago</small><br> 
                                        <span>This is a sample message</span> 
                                    </a> 
				                    <form class="animated fadeInDown wrapper hide" id="message-reply-1">
        				            	<textarea class="form-control m-b" placeholder="Write your message here..."></textarea>
		                		        <input type="submit" class="btn btn-primary" value="Update">
		                    		</form>
                               	</li>
                            </ul> 
                        </section> 
                    </section>
                </aside>
</section></section>
</section></section></section></section>

<script src="js/clickbuff.js"></script>
<script>
if (window.XMLHttpRequest){xmlhttp=new XMLHttpRequest();}else{xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");}
var sh=document.getElementById('ads_wall').offsetHeight+200,limit=5;status=0;
var buffsh=document.getElementById('buffmeter').offsetHeight-400;
var usersh=document.getElementById('user_scroll_box').offsetHeight-400;

function buttonClick(id){
	var btn=document.getElementById(id)
	if(btn.innerHTML=="Clicked")
	{
		btn.innerHTML='<img src="images/cursor.jpg" height="15"> Click</span>';
		btn.style.background='white';
		btn.style.color='black';		
	}
	else
	{
		btn.innerHTML="Clicked";
		btn.style.background="rgb(0,152,250)";
		btn.style.color='white';		
	}
}
</script>
</body>
</html>