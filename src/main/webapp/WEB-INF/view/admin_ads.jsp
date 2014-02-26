<!DOCTYPE html>
<html lang="en" class="app">
<head> <meta charset="utf-8" /> 
<title>ClickBuff.com</title> 
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
<link rel="stylesheet" href="<%out.print("css/clickbuff.css");%>" type="text/css" /> 
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
         		
                <div id="confirmModalContainer"></div>                
                
                	<header class="header">
                    	<div class="row b-b">
                        	<div class="col-sm-4">
                            	<h3 class="m-t m-b-none">Ads Management</h3>
                            </div>
                            <div class="col-sm-8">
                            	<div class="clearfix m-t-xs m-b-sm pull-right pull-none-xs">
                                	<div class="pull-left">
                                    	<div class="pull-left m-r-xs">
                                        	<span class="block">Total Ads</span>
                                            <span class="h4">5000</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <section class="scrollable">
                    	<section class="hbox stretch">
                        	<aside class="aside-sm bg-light b-r" style="background-color:#C1E0FF;">
                            	<section class="vbox">
                                	<section class="scrollable">
                                    	<div class="wrapper">
                                        	<span class="h4 b-b">Categories</span>
<span class="btn btn-sm pull-right" data-toggle="class:show" data-target="#newCategoryForm" style="background:rgb(0,152,250); color:white;">Create</span>
                                            <form class="wrapper animated fadeInDown hide bg-white m-t" id="newCategoryForm" action="#" method="post">
                                            	<div class="form-group">
                                                	<label>Category Name</label>
                                                	<input type="text" placeholder="Name" class="form-control">
                                                </div>
                                                <input type="submit" class="btn btn-success" value="Submit">
                                            </form>
                                            <table class="table table-bordered table-striped bg-light m-t-lg">
	                                            <thead>
    		                                        <tr><th>#</th><th>Category Name</th><th>Operation</th></tr>
            	                                </thead>
                                                <tbody>
<%for(int i=1;i<10;i++){%>
<tr id="<%out.print("cat-"+i);%>">
	<td><%out.print(i);%></td>
    <td>
    	Category Name
    	<form class="animated fadeInUp hide m-b m-t" id="<%out.print("categoryEditForm-"+i);%>">
        	<input type="text" class="form-control m-b text-left" placeholder="Category Name" value="Category Name">
            <input type="submit" class="btn btn-primary btn-sm" value="Sumbit">
        </form>    
    </td>
	<td>
    	<a class="btn btn-xs btn-default" data-toggle="class:show" data-target="<%out.print("#categoryEditForm-"+i);%>">Edit</a> 
    	<a class="btn btn-xs btn-default" onclick="confirmBox('<%out.print("cat-"+i);%>','delete')">Delete</a>
    </td>
</tr>
<%}%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </section>
                                </section>
                            </aside>
                            <aside class="aside-lg bg-light b-r">
                            	<section class="vbox">
                                	<section class="scrollable">
                                    	<div class="wrapper">
                                        	<span class="h4 b-b">Ads</span>
<span class="btn btn-sm pull-right" data-toggle="class:show" data-target="#newAdForm" style="background:rgb(0,152,250); color:white;">Create</span>
                                            <form class="wrapper animated fadeInDown hide bg-white m-t" id="newAdForm" action="#" method="post">
                                            	<div class="form-group">
                                                	<label>Category</label>
                                                	<select class="form-control">
                                                    <option>Category Name 1</option>
                                                    <option>Category Name 2</option>
                                                    <option>Category Name 3</option>
                                                    <option>Category Name 4</option>
                                                    <option>Category Name 5</option>
                                                    </select>
                                                </div>
                                            	<div class="form-group">
                                                	<label>Shop Name</label>
                                                	<input type="text" placeholder="Shop Name" class="form-control">
                                                </div>
                                            	<div class="form-group">
                                                	<label>Ad Content</label>
                                                	<textarea placeholder="Write Ad content here..." class="form-control"></textarea>
                                                </div>
                                                <input type="submit" class="btn btn-success" value="Submit">
                                            </form>
                                            <table class="table table-bordered bg-white table-striped m-t-lg">
	                                            <thead>
    		                                        <tr><th>#</th><th>Shop</th><th>Content</th><th>Operation</th></tr>
            	                                </thead>
                                                <tbody>
<%for(int i=1;i<20;i++){%>
<tr id="<%out.print("post-"+i);%>">
	<td><%out.print(i);%></td>
    <td>Shop Name</td>
    <td>
    	This is the content of ad posted on shop page
    	<form class="animated fadeInUp hide m-b m-t" id="<%out.print("postEditForm-"+i);%>">
        	<textarea class="form-control m-b text-left" placeholder="Write your post here...">This is the content of ad posted on shop page</textarea>
            <input type="submit" class="btn btn-primary btn-sm" value="Sumbit">
        </form>
    </td>
	<td>
    <a class="btn btn-xs btn-default" data-toggle="class:show" data-target="<%out.print("#postEditForm-"+i);%>">Edit</a> 
    <button class="btn btn-default btn-xs" id="<%out.print("adsDisableBtn-"+i);%>" href="<%out.print("#adsDisableBtn-"+i);%>" data-toggle="class:btn-success"> <span class="text">Disable</span> <span class="text-active">Enable</span> </button>
<a class="btn btn-xs btn-default" onclick="confirmBox('<%out.print("post-"+i);%>','delete')">Delete</a>
    </td>
</tr>
<%}%>
                                                </tbody>
                                            </table>
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
<script src="js/select2.min.js"></script>
<script>
if (window.XMLHttpRequest){xmlhttp=new XMLHttpRequest();}else{xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");}
var sh=document.getElementById('ads_wall').offsetHeight+200,limit=5;status=0;

function hideConfirmDialog(){document.getElementById('confirmModalContainer').innerHTML="";}
function performAction(id){hideConfirmDialog();document.getElementById(id).className+='hide';}
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