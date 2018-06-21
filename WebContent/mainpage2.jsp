<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		border: 1px solid black;
        box-sizing: border-box;
	}
	
	#topnavicontainer{
		margin: 0px auto;
		width:80%;
	
	}
	
	#topnavbar{ 
/* 	    position: fixed; */
	 	width: 100%;
	    height: 40px;
	    font-size: 20px;   
	    margin: 0px auto;   
	}
	
	#allwrapper{

 		width:80%; 
		
		height:100%;
		margin: 0px auto;
		
	}


	#header{
 		height:15%; 
		
		width:100%;
	}

	#midnavbar{
 		height:5%; 
	
		width:100%;
	}
	
	#content{
 		height:60%; 
	
		width:100%;
		
	}
	#footer{
		height:20%;
		width:100%;
		
	}

</style>
</head>
<body>


	<div id="topnavicontainer">
	<nav class="navbar navbar-expand-md bg-primary navbar-dark" id="topnavbar" >
     <div id="logocontainer">
      <a class="navbar-brand" href="#">Auction GO!</a>  
     </div>
      
    
      <div class="collapse navbar-collapse text-center justify-content-end" id="menucontainer">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa d-inline fa-lg fa-bookmark-o"></i> Login</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa d-inline fa-lg fa-bookmark-o"></i> Sing in</a>
          </li> 
        </ul>
        
        <a class="btn navbar-btn btn-primary ml-2 text-white">
        <i class="fa d-inline fa-lg fa-user-circle-o"></i> My Page</a>
      
      </div>
  </nav>
  </div>
  
  
  
	<div id="allwrapper" >
	

		<div id="header"></div>

		<div id="midnavbar"></div>
	

		<div id="content"></div>
		
		

	
	

		<div id="footer"></div>
	
	
	</div>






</body>
</html>