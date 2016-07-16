<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
     <ul class="nav navbar-nav">
      <li class="active"><a href="">HOME</a></li>
      <li> <div class="dropdown">
    		<button class="btn btn-default dropdown-toggle"  id="menu1" data-toggle="dropdown">BLOG
   			 <span class="caret"></span></button>
    		 <ul class="dropdown-menu" role="menu">
      			<li role="presentation"><a role="menuitem" tabindex="-1" href="writeBlog">Write Blog</a></li>
      			<li role="presentation"><a role="menuitem" tabindex="-1" href="readBlog">Read Blog</a></li>
    		</ul>
 		   </div></li>
      <li><a href="profile">PROFILE</a></li>
      <li><a href="friends">FRIENDS</a></li>
      <li><a href="logout">LOGOUT</a></li>
       
    </ul>
  </div>
</nav>

</body>

</html>