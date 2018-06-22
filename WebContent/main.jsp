<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css"> 
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
 

<title>Insert title here</title>
<style>
	div {
            border: 1px solid black;
            box-sizing: border-box;

        }
        
        #wrapper {
            width: 1200px;
            height: 1600px;
            margin: 0px auto;
        }

        #header {
            height: 5%;
            line-height: 7
        }
        
        #navi{
        	height:2%;
        }
        
        
        ul {

            overflow: hidden;
            padding: 0;
            background-color: white;
            margin-top: 2px;
            height:100%;
        }

        li {
            border: 1px solid black;
            float: left;
            list-style-type: none;
            width: 25%;
            box-sizing: border-box;
            text-align: center;
            height: 100%;
        }

        li:hover {
             background-color: white; 
        }

        li a {
            display: block;
            padding: 0;
            width: 100%;
            color: black;
            text-decoration: none;
        }
        
        
        

        #logo {
            width: 15%;
            height: 100%;
            float: left
        }

        #search {
            width: 50%;
            height: 100%;
            float: left;
        }

        #reserved {
            width: 35%;
            height: 100%;
            float: left;
        }
    

        #content {
            height: 83%;

        }


        #footer {
            height: 10%
        }

      





			
</style>
</head>
<body>
	<div id="wrapper">

	 <div id="header">
            <div id="logo" align=center>LOGO</div>
            <div id="search" align=center>Title</div> 
            <div id="reserved" align=center>
              <a class="navbar-brand" href="#">Login</a>    
               
         
            
            
    </div>
  </div>
	
	
	
	<div id="navi" align=center>

            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="">Board</a></li>
                <li><a href="">Contact</a></li>
            </ul>

        </div>
        
        	<div id="content">Contents</div>
        
        	<div id="footer">Footer</div>	

</div>
</body>
</html>