<!DOCTYPE html>
<html lang="en" class="app">
<head> <meta charset="utf-8" /> 
<title>ClickBuff.com</title> 
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
<link rel="stylesheet" href="<% out.print("css/clickbuff.css");%>" type="text/css" /> 
<link rel="stylesheet" href="css/font.css" type="text/css" /> 
<!--[if lt IE 9]> 
	<script src="js/ie/html5shiv.js"></script> 
    <script src="js/ie/respond.min.js"></script> 
    <script src="js/ie/excanvas.js"></script> 
<![endif]-->
</head>

<body> 
<section class="bg-light" style="width:100%; height:100%; position:absolute;"> 
    <section class="vbox">
    <header id="header" class="header navbar navbar-fixed-top" style="background: linear-gradient(to top, rgb(0,153,250), rgb(0,153,250));"> 
    	<div class="navbar-header aside-md visible-xs"> 
            <a href="#" class="navbar-brand">ClickBuff</a> 
        </div>
    	<ul class="nav navbar-nav hidden-xs"> 
        	<li class="active"> <a data-dismiss="modal" href="#" class="text-white">Welcome, <span class="font-bold"><i class="fa fa-user"></i> Admin</span> </a> </li> 
        </ul>
    	<ul class="nav navbar-nav navbar-right hidden-xs nav-user"> 
        	<li> <a href="admin_home.jsp" class="text-white"><span class="font-bold"><i class="fa fa-user"></i> User Management</span> </a> </li> 
        	<li> <a href="admin_ads.jsp" class="text-white"><span class="font-bold"><i class="fa fa-file"></i> Ads Management</span> </a> </li> 
        	<li> <a href="index.jsp" class="text-white"><span class="font-bold"><i class="fa fa-sign-out"></i> Logout</span> </a> </li> 
        </ul>
    </header> 
    <section id="content" style="background-color:#C1E0FF;"> 
		<section class="vbox">
        	<section class="">
            	<section class="vbox flex">
<!-- sign up Form-->
<div class="text-center" id="broadcastMessageModal" style="width:100%; height:100%; background:rgba(51,51,51,0.6); z-index:1000; position:absolute; display:none;">
<section class="modal-dialog wrapper-md animated fadeInUp text-left" style="width:800px;"> 
    	<section class="panel panel-default bg-white m-t-lg"> 
        	<header class="panel-heading text-center" style="background:rgb(0,152,250); color:white;"> <strong>Broadcast Message</strong>
            <button type="button" class="close" onClick="document.getElementById('broadcastMessageModal').style.display='none';">&times;</button> 
            </header> 
	        <div class="modal-body">
            <div class="row">
            <div class="col-lg-8">
           	              	<section class="vbox" style="height:400px;"> 
                            <section class="scrollable"> 
            Message<hr>
            <form action="#" class="" data-validate="parsley"> 
            	<div class="form-group"> 
                    <input type="file">
                </div> 
            	<div class="form-group"> 
                	<label class="control-label">Message</label> 
                    <textarea placeholder="Write your message here..." class="form-control"></textarea> 
                </div> 
                <button type="submit" class="btn btn-primary parsley-validate">Send</button> 
            </form> 
            </section></section>
            </div>
            <div class="col-lg-4">
           	              	<section class="vbox" style="height:400px;"> 
                            <section class="scrollable wrapper"> 
            	Send to<hr>
                <select onChange="if(document.getElementById('sc').selected==true) document.getElementById('clients').style.display='block';">
                	<option selected value="All Clients"> All Clients</option>
                	<option value="Select Clients" id="sc">Select Clients</option>
                </select>
                <div id="clients" style="display:none;">
                	<%for(int i=1;i<10;i++){%>
                	<div class="checkbox"> <label> <input type="checkbox" value="" checked> Client Name <%out.print(i);%> </label> </div>
                	<%}%>
                </div>
                <br><br>
                <select onChange="if(document.getElementById('su').selected==true) document.getElementById('users').style.display='block';">
                	<option selected value="All Users"> All Users</option>
                	<option value="Select Users" id="su"> Select Users</option>
                </select>
                <div id="users" style="display:none;">
                	<%for(int i=1;i<10;i++){%>
                	<div class="checkbox"> <label> <input type="checkbox" value="" checked> User Name <%out.print(i);%> </label> </div>
                	<%}%>
                </div>
                	</section>
                </section>
            </div>
            </div>
        </div>
	</section>
</section>
</div>
<!-- /sign up Form-->

                <div id="confirmModalContainer"></div>                
                	<header class="header">
                    	<div class="row b-b">
                        	<div class="col-sm-4">
                            	<h3 class="m-t m-b-none">Users Management</h3>
                            </div>
                            <div class="col-sm-8">
                            	<div class="clearfix m-t-xs m-b-sm pull-right pull-none-xs">
                                	<div class="pull-left">
                                    	<div class="">
                                        <a href="#" class="btn btn-success" onClick="document.getElementById('broadcastMessageModal').style.display='block';">Broadcast Message</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <section class="scrollable">
                    	<section class="hbox stretch">
                        	<aside class="aside-lg bg-light b-r">
                            	<section class="vbox">
                                	<section class="scrollable">
                                    	<div class="wrapper">
                                        	<span class="h4 b-b">New Users</span>
                                            <ul class="list-group m-b-none m list-group-lg list-group-sp">
                                            	<% for(int i=1;i<5;i++){%>
                                                <li class="list-group-item" id="<%out.print("newUser-"+i);%>">
                                                	<a href="#" class="thumb-sm pull-left m-r-sm"><img src="images/avatar.jpg" class="img-rounded"></a>
                                                    <a href="#" class="clear"><small class="pull-right"></small></a>
                                                    <small class="pull-right">
<button class="btn btn-default btn-xs" id="<%out.print("newUserDisableBtn-"+i);%>" href="<%out.print("#newUserDisableBtn-"+i);%>" data-toggle="class:btn-success"> <span class="text">Disable</span> <span class="text-active">Enable</span> </button>
<a class="btn btn-xs btn-default" onclick="confirmBox('<%out.print("newUser-"+i);%>','delete')">Delete</a>
                                                    </small>
                                                    <strong class="block"><a href="#">User Name</a></strong>
                                                    <small>joined: 5 minutes ago</small>
                                                </li>
                                                <%}%>
                                            </ul>
                                        </div>
                                    </section>
                                </section>
                            </aside>
                            <aside class="aside-lg bg-light b-r">
                            	<header class="header">
	       	                        <div class="wrapper bg-light pull-in b-b font-bold">
    			                    	<form class="form">
                			            	<div class="input-group">
                            		    	<input type="text" class="form-control" placeholder="Search User">
                                    		<span class="input-group-btn"><input type="submit" class="btn btn-success" value="Go!"></span>
			                                </div>
            			                </form>
                        			</div>
                                </header>
                            	<section class="vbox">
                                	<section class="scrollable">
                                    	<div class="wrapper">
                                        	<span class="h4 b-b">All Users</span>
                                            <div class="btn-group pull-right m-t-n-xs"> 
                                            	<button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown"> 
                                                	Select <span class="caret"></span> 
                                                </button> 
                                                <ul class="dropdown-menu"> 
                                                	<li><a href="#">Show only users</a></li> 
                                                    <li><a href="#">Show only clients</a></li> 
                                                </ul> 
                                            </div>
                                            <ul class="list-group m-b-none m list-group-lg list-group-sp">
												<% for(int i=1;i<5;i++){%>
                                                <li class="list-group-item" id="<%out.print("client-"+i);%>">
                                                	<a href="#" class="thumb-sm pull-left m-r-sm"><img src="images/avatar.jpg" class="img-rounded"></a>
                                                    <a href="#" class="clear"><small class="pull-right"></small></a>
                                                    <small class="pull-right">
<button class="btn btn-default btn-xs" id="<%out.print("userDisableBtn-"+i);%>" href="<%out.print("#userDisableBtn-"+i);%>" data-toggle="class:btn-success"> <span class="text">Disable</span> <span class="text-active">Enable</span> </button>
<a class="btn btn-xs btn-default" onclick="confirmBox('<%out.print("client-"+i);%>','delete')">Delete</a>
                                                    </small>
                                                    <strong class="block"><a href="#">Client Name</a></strong>
                                                    <small>Status: Client</small>
                                                </li>
                                                <%}%>
                                                <% for(int i=1;i<5;i++){%>
                                                <li class="list-group-item" id="<%out.print("user-"+i);%>">
                                                	<a href="#" class="thumb-sm pull-left m-r-sm"><img src="images/avatar.jpg" class="img-rounded"></a>
                                                    <a href="#" class="clear"><small class="pull-right"></small></a>
                                                    <small class="pull-right">
<a class="btn btn-xs btn-default" href="#">Disable</a>
<a class="btn btn-xs btn-default" onclick="confirmBox('<%out.print("user-"+i);%>','delete')">Delete</a>
                                                    </small>
                                                    <strong class="block"><a href="#">User Name</a></strong>
                                                    <small>Status: User</small>
                                                </li>
                                                <%}%>
                                            </ul>
                                        </div>
                                    </section>
                                </section>
                            </aside>
                            <aside class="aside-lg bg-light lter b-r">
                            	<section class="vbox">
                                	<section class="scrollable">
                                    	<div class="wrapper">
                                        	<span class="h4 b-b">Create New Client Profile</span><br>
                                            <form class="wrapper" action="#" method="post">
                                            	<div class="form-group">
                                                	<label>Client Name</label>
                                                    <input type="text" class="form-control" placeholder="Name">
                                                </div>
                                            	<div class="form-group">
                                                	<label>Email</label>
                                                    <input type="text" class="form-control" placeholder="Email">
                                                </div>
                                            	<div class="form-group">
                                                	<label>Password</label>
                                                    <input type="text" class="form-control" placeholder="Password">
                                                </div>
                                            	<div class="form-group">
                                                	<label>Shop Name</label>
                                                    <input type="text" class="form-control" placeholder="Shop Name">
                                                </div>
                                                <div class="row">
                                                	<div class="col-lg-4">Choose Category</div>
                                                	<div class="col-lg-8">
                                                		<div class="btn-group m-r"> 
                                                        	<button data-toggle="dropdown" class="btn btn-sm btn-default dropdown-toggle"> 
                                                            	<span class="dropdown-label">Mobile &amp; Accessories</span> <span class="caret"></span> 
                                                            </button> 
                                                            <ul class="dropdown-menu dropdown-select"> 
<li class="active"><a href="#"><input type="radio" name="d-s-r" checked="">Mobile &amp; Accessories</a></li> 
<li><a href="#"><input type="radio" name="d-s-r">Computer Hardware</a></li> 
<li><a href="#"><input type="radio" name="d-s-r">Electronics</a></li> 
                                                            </ul> 
                                                        </div>
                                                	</div>
                                                </div><br>
                                                <input type="submit" class="btn btn-success" value="Create Account">
                                            </form>
                                        </div>
                                    </section>
                                </section>
                            </aside>
                        </section>
                    </section>
             	</section>
            </section>
        </section>
    </section>
</section>
<script src="js/clickbuff.js"></script>
<script src="js/select2/select2.min.js"></script>
<script>
if (window.XMLHttpRequest){xmlhttp=new XMLHttpRequest();}else{xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");}
var sh=document.getElementById('ads_wall').offsetHeight+200,limit=5;status=0;

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

function scrollFunction() {
	if(document.getElementById('ads_wall').scrollTop>sh && status==0){
		document.getElementById('scrollspinner').style.display='block';
		xmlhttp.onreadystatechange=function(){
			if (xmlhttp.readyState==4 && xmlhttp.status==200){
				var response=xmlhttp.responseText;
				setTimeout(function(){document.getElementById("ads_wall").innerHTML+=response;document.getElementById('scrollspinner').style.display='none';},1500);
				if(response=='end') status=1;
				sh+=300;
				limit+=2;
			}
		}
		xmlhttp.open("GET","ads_stream.html",true);xmlhttp.send();
	}
}
</script>
</body>
</html>