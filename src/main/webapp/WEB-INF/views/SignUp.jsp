<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	.error{
		color:red;font-weight:bold;}
</style><link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

</head>
<body bgcolor="black">

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <!-- <li data-target="#myCarousel" data-slide-to="3"></li> -->
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/shah.jpg" alt="shah rukh" style=width:60% style=height:40%/>
        <div class="carousel-caption">
              </div>
      </div>

      <div class="item">
        <img src="resources/images/akshay.jpg" alt="akshay" style=width:60% style=height:40%/>
        <div class="carousel-caption">
           </div>
      </div>
    
      <div class="item">
        <img src="resources/images/kohli.jpg" alt="Virat Kohli" style=width:60% style=height:20%/>
        
      <div class="carousel-caption">
             </div>
      </div>
     </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br/><br/>
<table align="center" height="30%" width="50%" border="0" bordercolor="#456732">
<caption><font size=5px color="#231442"><u>Join your Favorite Celeb</u></font></caption>
<br/>
<tr><td>
	<form:form method="POST" action="SignUp" commandName="addMem">
   		<table>
    		<tr>
       			<%-- <td><form:label path="name">Your Name</form:label></td>
        		<td><form:input path="name" /></td>
    		 --%>
    		 <td><b>Your Name</b></td>
                    <td><form:input path="name"></form:input>
                    <td><form:errors path="name" cssClass="error"/></td>
    		 </tr>
    		<tr>
        		<td><form:label path="age">How old</form:label></td>
        		<td><form:input path="age" /></td>
    		</tr>
    		<tr>
    		 <td><b>Email Id</b></td>
                    <td><form:input path="email"></form:input>
                    <td><form:errors path="email" cssClass="error"/></td>
        		</tr>
    		<tr>
        		
        		 <td><b>Hey ! Your Secret code</b></td>
        		 <td><form:input path="password"></form:input></td>
        		<td><form:errors path="password" type="password" cssClass="error"/></td>
        		
    		</tr>
    		<tr>
        		<td><form:label path="location">You Live !</form:label></td>
        		<td><form:input path="location" /></td>
    		</tr>
    		<tr>
        		<td><form:label path="BasicInfo">About Yourself !</form:label></td>
        		<td><form:input path="BasicInfo" /></td>
    		</tr>
    		<tr>
        		<td colspan="2">
            		<input type="submit" value="Submit"/>
        		</td>
    		</tr>
	</table>  
  </form:form></td>
</tr>
</table>
</body>
</html>