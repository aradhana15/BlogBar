<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="Header.jsp" %>
<html>
	<head>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>Write your thoughts</title>
			<style type="text/css">
				.center
					{
						margin: auto;
 						width: 80%;
 					}
 				.cen
 				{
 					margin:auto;
 					width: 50%;
 				}	
			</style>
	</head>
	
	<script>
var app = angular.module("myApp", []);
app.controller("myCtrl", function($scope) {
	
	$scope.postData='';
	$scope.comData='';
	
	$scope.curUser='Vasudev';
	
    $scope.records = [
       {
    	   	"ID" : 1,
            "Post" : "ABCDEFG",
            "Like" : [{By:"aradhana"},{By:"vasu"},{By:"Anviksha"}],
            "Comment":[{By:"aradhana",Comment:"Comment 1"} , {By:"vasu",Comment:"Comment 2"}]
        },{
        	"ID" : 2,
        	"Post" : "Its good time to shop for your wedding",
        	 "Like" : [{By:"vasu"}],
             "Comment":[{By:"vasu",Comment:"God bless"}]

        },{
        	"ID" : 3,
        	"Post" : "Its good time to shop for your wedding",
        	 "Like" : [{By:"usha"}],
             "Comment":[{By:"usha",Comment:"God bless"}]
          }
    ]
    
    $scope.addCom = function(ID,data)
    {
    	jdata = {By:$scope.curUser,Comment: data};
    	
    	console.log(jdata);
    	
    	for( i = 0 ; i< $scope.records.length ; i++ )
    	{
    		if($scope.records[i].ID == ID)
    		{
    			console.log( $scope.records[i].Comment );
    			
    			$scope.records[i].Comment.push(jdata);
    			
    			console.log( $scope.records[i].Comment );
    		}
    	}
    }
    
    $scope.Likes = function(input)
    {
    	retval = "";
    	for( i = 0 ; i< input.length ; i++ )
    	{
    		//console.log( input[i] );
    		retval += input[i].By + ",";
    		
    	}	
    	retval = retval.substring(0, retval.length - 1 );
   	   return retval;
    }
    $scope.Comments=function(data)
    {
    	com="";
    	by="";
    	for(k=0;k<data.length ;k++)
    		{
    			com+=data[k].Comment+",";
    			by+=data[k].By+",";
    		}
    	by=by.substring(0,by.length-1);
    	com=com.substring(0,com.length-1);
    }
});
</script>
	
	<body bgcolor="black" ng-app="myApp">
	<div class="center">
		<div class="cen">
		Enter valuable Thoughts
		<table width="80px" border=0>
		<tr>
			<td>
				<form id="f1">
					<textarea rows="10" cols="100" ng-model="postData">	</textarea>	<br/>	
					<input type="submit" value="Post"> &nbsp; &nbsp;&nbsp; &nbsp;
					
					<span> {{postData}} </span>
				</form>
			</td>
		</tr>
		</table>
		</div>
		<div class="cen">
			<table width="80px" border=0 ng-controller="myCtrl">
				<tr ng-repeat="x in records">
					 <td>
      					<p>{{x.Post}}</p>
      						<input type="submit" value="Edit"> &nbsp; &nbsp;&nbsp; &nbsp;
							<font size=2><a href="#"><span class="glyphicon glyphicon-thumbs-up"></span></a>Like Count: {{x.Like.length}} ,  {{Likes(x.Like)}}</font>
      							<form>
      								<div ng-repeat="y in x.Comment">
								    	<label style="font-style: italic;color: #334455;size: 4">{{y.By}}</label> : 
								    	<br>
								    	<label style="font-style: bold;color: blue;size: 5">{{y.Comment}}</label>
									</div>
									<textarea cols="100" rows="10" placeholder="Add Comment" ng-model="comData" style="font-style: italic;color: blue;size: 4"></textarea>
									<input type="button" value="Send" ng-click="addCom(x.ID,comData)"/>
									<span>{{comData}}</span>
								</form>
					</td>
				</tr>
			</table>
		</div>
	</div>
 </body>
</html>
<%@include file="Footer.jsp"%>