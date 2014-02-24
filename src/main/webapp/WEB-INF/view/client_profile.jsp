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
<li> <a class="text-white" href="client_home.jsp">Welcome, <span class="font-bold"><img src="images/avatar.jpg" class="thumb-sm m-t-n m-b-n"> Client</span> </a> </li> 
        </ul>
    	<ul class="nav navbar-nav navbar-right hidden-xs nav-user"> 
        	<li> <a href="client_home.jsp" class="text-white"><span class="font-bold"><i class="fa fa-home"></i> Home</span> </a> </li> 
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
            	<header class="header wrapper"><span class="h4">Client Name</span></header>
            	<section class="panel-body">
                <div class="row">
                <div class="col-lg-4">
        		<a href="modals/image_viewer.jsp" data-toggle="ajaxModal"><img src="images/avatar.jpg" class="img-full thumbnail thumb-lg"></a>
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
        	<section class="panel panel-default">
            	<header class="header wrapper"><span class="h4">Shop Name</span></header>
            	<section class="panel-body">
                <div class="row">
                <div class="col-lg-4">
        		<img src="images/shop1.jpg" class="img-full thumbnail thumb-lg">
                 </div>
                <div class="col-lg-8">
    	            <p class="text-left">
                            Owner Name:<br>
                            Best known for:<br>
                            No. of co-workers: <br>
                            Since (year):<br>
                            Place:<br>
                            Full address:<br>
                            Email address:<br>
                            Website:<br>
                            Contact<br>
                            Products Selling:-<br>

                    </p>
                    <form class="animated fadeInUp hide" id="shopInfoForm">
                    	<input type="text" class="form-control m-b" placeholder="Owner Name">
                    	<input type="text" class="form-control m-b" placeholder="Best known for">
                    	<input type="text" class="form-control m-b" placeholder="No. of co-workers">
                    	<input type="text" class="form-control m-b" placeholder="Since (year)">
                    	<input type="text" class="form-control m-b" placeholder="Place">
                    	<textarea class="form-control m-b" placeholder="Full Address"></textarea>
                    	<input type="text" class="form-control m-b" placeholder="Email">
                    	<input type="text" class="form-control m-b" placeholder="Website">
                    	<input type="text" class="form-control m-b" placeholder="Contact">
                    	<textarea class="form-control m-b" placeholder="Products Selling"></textarea>
                    	<textarea class="form-control m-b" placeholder="Write your status here..."></textarea>
                        <input type="submit" class="btn btn-sm btn-primary" value="Sumbit">
                    </form>
                    <div class="line line-dashed"></div>
	               	<a class="file-input-wrapper btn btn btn-sm" style="background-color:rgb(0,152,250);color:white;"> Update pic <input type="file" title="Browse" class="btn btn-sm btn-info" style="left: -186px;top: 3.5px;" accept="image/jpeg" name="myfile" id="myfile"></a>
                    <a class="btn btn-sm inline" style="background-color:rgb(0,152,250);color:white;" data-toggle="class:show" data-target="#shopInfoForm">Update Status</a>
                </div>
                </div>
                </section>
            </section> 
            </section>
            </section>
        </aside>
            	<aside class="bg-light lter b-l aside-md" id="email-list">
                	<section class="bg-dark vbox" id="chatBox" style="display:none;"> 
                    	<header class="bg-light dk header wrapper">
                        <span class="pull-right">
                        	<a href="#" onclick="document.getElementById('chatBox').style.display='none';">&times;</a>
                        </span>
                        </header> 
                        <section class="scrollable">
                        	<ul class="list-group no-radius m-b-none m-t-n-xxs list-group-lg"> 
                            <% for(int i=1;i<15;i++){%>
                            	<li class="list-group-item m-t m-l" id="<%out.print("message-"+i);%>" style="width:80%; <%if(i%3==0) out.print("float:right;"); else out.print("float:left;");%>"> 
                                	<a href="#" class="thumb-sm pull-left m-r-sm"> <img src="images/avatar.jpg" class="img-rounded"> </a> 
                                    <span href="#" class="clear"> 
                                        <strong><a href="public_user_profile.jsp" style="color:#0000FF;">User Name</a></strong><br> 
                                    	<small class="text-muted">3 minuts ago</small><br> 
                                        <span style="color:black;">This is a sample message</span> 
                                    </span> 
				                    <form class="animated fadeInDown wrapper hide" id="message-reply-1">
        				            	<textarea class="form-control m-b" placeholder="Write your message here..."></textarea>
		                		        <input type="submit" class="btn btn-primary" value="Update">
		                    		</form>
                               	</li>
                            <% }%>
                            </ul>
                        </section>
                        <footer class="footer panel-footer wrapper">
		                    <form id="replyForm">
                            	<div class="input-group"> 
                                	<input type="text" class="form-control" placeholder="Write a reply here..."> 
                                    <span class="input-group-btn"> <button class="btn btn-default btn-primary" type="button">Send</button> </span> 
                                </div>
		                    </form>
                        </footer>
                    </section>

                	<section class="vbox"> 
                    	<header class="bg-light dk header wrapper"><span class="h4">Your Ads(5)</span>
                        <span class="pull-right">
                        	<a class="btn btn-sm" style="background-color:rgb(0,152,250);color:white;" data-toggle="class:show" data-target="#newAddForm"><i class="fa fa-plus"></i> New Ad</a>
                        </span>
                        </header> 
                        <section class="scrollable"> 
		                    <form class="animated fadeInDown hide wrapper" id="newAddForm">
                            	<label>New Ad</label>
        		            	<textarea class="form-control m-b" placeholder="Write your ad here..."></textarea>
		                        <input type="submit" class="btn btn-primary" value="Sumbit">
		                    </form>
                        	<ul class="list-group no-radius m-b-none m-t-n-xxs list-group-alt list-group-lg"> 
                            <% for(int i=1;i<5;i++){%>
                            	<li class="list-group-item" id="<%out.print("ad"+i);%>"> 
                                    <a href="#" class="clear" id="<%out.print("ad-body-"+i);%>"> 
                                    	<small class="pull-right text-muted m-l">
<a href="#" class="btn btn-xs btn-default" data-toggle="class:show" data-target="<%out.print("#editAdForm-"+i);%>">Edit</a> 
<a href="#" class="btn btn-xs btn-default" onclick="confirmBox('<%out.print("ad"+i);%>','ad')">Delete</a>
                                        </small> 
                                        <strong>Content of the Ad posted by client</strong> <br>
                                        <span>Feb 5, 2014</span> 
                                    </a> 
				                    <form class="animated fadeInDown wrapper hide" id="<%out.print("editAdForm-"+i);%>">
        				            	<textarea class="form-control m-b" placeholder="Write your ad here...">Content of the Ad posted by client</textarea>
		                		        <input type="submit" class="btn btn-primary" value="Update">
		                    		</form>
                               	</li>
                            <% }%>
                            </ul> 
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
                            <% for(int i=1;i<5;i++){%>
                            	<li class="list-group-item" id="<%out.print("message-"+i);%>"> 
                                	<a href="#" class="thumb-sm pull-left m-r-sm"> <img src="images/avatar.jpg" class="img-rounded"> </a> 
                                    <a href="#" class="clear"> 
                                    	<small class="pull-right text-muted m-l">
<a href="#" class="btn btn-xs btn-default" data-toggle="class:hide" data-target="<% out.print("#message-reply-"+i);%>">Reply</a>
<a href="#" class="btn btn-xs btn-default" onclick="confirmBox('<%out.print("message-"+i);%>','delete')">Delete</a>
                                        </small> 
                                        <strong><a href="public_user_profile.jsp" style="color:#0000FF;">User Name</a></strong><br> 
                                    	<small class="text-muted">3 minuts ago</small><br> 
                                        <span><a href="#" onclick="document.getElementById('chatBox').style.display='block';">This is a sample message</a></span> 
                                    </a> 
				                    <form class="animated fadeInDown wrapper hide" id="message-reply-1">
        				            	<textarea class="form-control m-b" placeholder="Write your message here..."></textarea>
		                		        <input type="submit" class="btn btn-primary" value="Update">
		                    		</form>
                               	</li>
                            <% }%>
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

function confirmBox(id,operation){
	var element=document.getElementById(id);
	var r=confirm('Do you really want to delete this?');
	if (r==true)
	  {
		  element.className+=' hide';
	  }
	else
	  {
	  }
}

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