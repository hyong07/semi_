<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css"> 
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>


	div{
		border: 0px solid black;
        box-sizing: border-box;
	}
	
	#topnavicontainer{
		margin: 0px auto;

		width:100%;
	}
	
	#topnavbar{ 
/* 	    position: fixed; */
	 	width: 100%;
	    height: 40px;
	    font-size: 20px;   
	    margin: 0px auto;   
	    opacity: 0.9;
	}
	
	#allwrapper{

		
		opacity: 0.8;
		width:100%;
		height:100%;
		margin: 0px auto;
		
	}
	#headerwrapper{
		height:20%;	
		width:100%;
	}


	#header{

		height:75%;
		width:100%;
	}

	#centernavbar{

		height:25%;
		width:100%;
	}
	
	#menubtn{
	
		background: #fff;
		box-shadow: 0;
		border: 2px solid #3498db;
		outline: none;
  
		
		
		}
	#centerwrapper{
		height:65%;
		width:80%;
		margin: 0px auto;
		
	}
	
	#content{

		height:100%;
		width:100%;
		
	}
	
	#bottomwrapper{
		height:15%;
		width:100%;
	}
	#footer{
		height:100%;
		width:100%;
		
	}
	
	
	
	
</style>
</head>
<body>


	<div id="topnavicontainer">
	<nav class="navbar navbar-expand-md navbar-dark bg-secondary" id="topnavbar" >
     <div id="logocontainer">
      <a class="navbar-brand" href="#">Auction GO!</a>  
     </div>
      
    
      <div class="collapse navbar-collapse text-center justify-content-end" id="menucontainer">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa fa-user fa-fw" ></i> Login</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa fa-user fa-fw" ></i> Sing in</a>
          </li> 
        </ul>
        
        <a class="btn navbar-btn ml-2 btn-secondary text-white">
        <i class="fa d-inline fa-lg fa-user-circle-o"></i> My Page</a>
      
      </div>
  </nav>
  </div>
  
  
  
	<div id="allwrapper" >
	
	<div id="headerwrapper">
		<div id="header"></div>

		<div id="centernavbar">
	
	
	
	
	
<nav class="nav nav-pills nav-justified">
		 <li class="nav-item">
		            <a class="nav-link " id="menubtn" href="#">
		              <i class="fa d-inline fa-lg fa-bookmark-o"></i> Sing in</a>
		 </li> 
		 <li class="nav-item">
		            <a class="nav-link btn-success  text-muted" id="menubtn" href="#">
		              <i class="fa d-inline fa-lg fa-bookmark-o"></i> Sing in</a>
		 </li> 
		 <li class="nav-item">
		            <a class="nav-link btn-success text-muted" id="menubtn" href="#">
		              <i class="fa d-inline fa-lg fa-bookmark-o"></i> Sing in</a>
		 </li> 
		 <li class="nav-item">
		            <a class="nav-link btn-success text-muted" id="menubtn" href="#">
		              <i class="fa d-inline fa-lg fa-bookmark-o"></i> Sing in</a>
		 </li> 
		 <li class="nav-item">
		             <a class="nav-link btn-success text-muted" id="menubtn" href="#">
		              <i class="fa d-inline fa-lg fa-bookmark-o"></i> Sing in</a>
		 </li> 
</nav>
	
	
	
	
	
	
	
	
	
		</div>
	</div>	
	<div id="centerwrapper">
		<div id="content"></div>
		
		
	</div>
	
	
	<div id="bottomwrapper">
		<div id="footer"></div>
	</div>
	
	</div>




</body>
</html>