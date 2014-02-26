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
                <div id="confirmModalContainer"></div>                
        	<section> 
            	<section class="hbox stretch"> 
        	<aside class="aside">
                       	<section class="vbox"> 
                        <section class="scrollable"> 
        	<section class="panel panel-default">
            	<header class="header wrapper"><span class="h4">User Name</span>
                <a class="btn btn-sm pull-right" style="background:rgb(0,152,250); color:white; margin-top:-7px;" data-toggle="class:hide" data-target="#editProfileForm" href="#">Edit Profile</a>
                </header>
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

                    <form class="animated fadeInUp m-t hide" id="editProfileForm">
<div class="form-group"><label class="control-label">Full Name</label> <br><input type="text" class="form-control m-b" placeholder="Name"></div>
            	<div class="form-group"> 
                	<label class="control-label">DOB</label> <br>
                    <input type="text" class="combodate form-control parsley-validate" data-format="DD-MM-YYYY" data-template="D MMM YYYY" name="dob" value="01-01-2014" data-required="true">
                </div> 
<div class="form-group"><label class="control-label">Gender</label> <br>
<select><option selected="selected" value="Male"> Male</option><option value="Female"> Female</option></select>
</div>
<div class="form-group"><label class="control-label">Country</label> <br><input type="text" class="form-control m-b" placeholder="Country"></div>
<div class="form-group"><label class="control-label">Mobile</label> <br><input type="text" class="form-control m-b" placeholder="Mobile"></div>
<div class="form-group"><label class="control-label">Email</label> <br><input type="email" class="form-control m-b" placeholder="Email"></div>
<div class="form-group"><label class="control-label">City</label> <br><input type="text" class="form-control m-b" placeholder="City"></div>
<div class="form-group"><label class="control-label">Hobby</label> <br><input type="text" class="form-control m-b" placeholder="Hobby"></div>
<div class="form-group"><label class="control-label">My Time pass</label> <br><input type="text" class="form-control m-b" placeholder="My Time pass"></div>
<div class="form-group"><label class="control-label">Occupation</label> <br><input type="text" class="form-control m-b" placeholder="Occupation"></div>
<div class="form-group"><label class="control-label">About</label> <br><textarea class="form-control m-b" placeholder="About"></textarea></div>
<input type="submit" class="btn btn-success" value="Update">
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
<a href="#" class="btn btn-xs btn-default" onclick="document.getElementById('chatBox').style.display='block';">Reply</a>
<a href="#" class="btn btn-xs btn-default" onclick="confirmBox('<%out.print("message-"+i);%>','delete')">Delete</a>
                                        </small> 
                                        <strong><a href="public_user_profile.jsp" style="color:#0000FF;">User Name</a></strong><br> 
                                    	<small class="text-muted">3 minuts ago</small><br> 
                                        <span>This is a sample message</span> 
                                    </a> 
                               	</li>
                            <% }%>
                            </ul> 
                        </section> 
                    </section>
                </aside>
            	<aside class="bg-light lter b-l aside-md"> 
                	<section class="vbox" id="chatBox" style="display:none;"> 
                    	<header class="bg-light dk header wrapper">
                        <span class="pull-right">
                        	<a href="#" onclick="document.getElementById('chatBox').style.display='none';">&times;</a>
                        </span>
                        </header> 
                        <section class="scrollable" style="margin-bottom:70px;">
                        	<ul class="list-group no-radius m-t-n-xxs list-group-lg"> 
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
function hideConfirmDialog(){document.getElementById('confirmModalContainer').innerHTML="";}
function performAction(id){hideConfirmDialog();document.getElementById(id).style.display='none';}
function confirmBox(id,operation){
	var code='<div class="modal-dialog animated fadeIn" style="position:fixed; margin-left:40%; height:200px; width:400px; z-index:1000;" id="confirmModal">';
        code+='<div class="modal-content"> <div class="modal-body"> Do you really want to delete this? </div>';
        code+='<div class="modal-footer" style="padding:10px;"> ';
        code+='<a href="#" class="btn btn-default" onClick="hideConfirmDialog()">Cancel</a> ';
        code+='<a href="#" class="btn btn-primary" onClick="performAction('+"'"+id+"'"+')">Yes</a>';
        code+='</div></div></div>';
	
	document.getElementById('confirmModalContainer').innerHTML=code;
}

</script>
</body>
</html>