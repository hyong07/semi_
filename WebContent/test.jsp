<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css"> 
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>  -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	
@import 'bootstrap-4.0.0';
	
/*   primary: #12bbad, */
/*   secondary: #4f70ce, */
/*   light: #f3f3f3, */
/*   dark: #151515, */
/*   info: #ccc, */
/*   success: #28a745, */
/*   warning: #ffc107, */
/*   danger: #dc3545 */
/*   --blue: #007bff; */
/*   --indigo: #6610f2; */
/*   --purple: #6f42c1; */
/*   --pink: #e83e8c; */
/*   --red: #dc3545; */
/*   --orange: #fd7e14; */
/*   --yellow: #ffc107; */
/*   --green: #28a745; */
/*   --teal: #20c997; */
/*   --cyan: #17a2b8; */
/*   --white: #fff; */
/*   --gray: #6c757d; */
/*   --gray-dark: #343a40; */



	body{
		  
	}
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
/* 		opacity: 0.8; */
		width:100%;
		height:100%;
		margin: 0px auto;		
	}
	#headerwrapper{
		height:21%;	
		width:100%;
	}
	#header{
		height:75%;
		width:100%;
	}	
	#headerleft{
		float:left;
		height:100%;
		width:15%;
	}
	#headercenter{
		float:left;
		height:100%;
		width:65%;
	}	
	#search{
		
		width:100%;
		height:100%;
	}
	
	#headerright{
		float:left;
		height:100%;
		width:20%;
	}
	#centernavbar{
		height:25%;
		width:100%;	
	}
	
	#menubtn{
		background:#FFF8DC; 
		box-shadow: 0;
		border: 1px solid #12bbad;
		outline: none;
  
	}
	#centerwrapper{
/*  		height:64%;  */
 		height:auto; 
		width:80%;
		margin: 0px auto;
		
	
	}
	
	#content{
		height:100%;
		width:100%;	
		background: #f4f4f4;
		
	}
	
	#bottomwrapper{
		height:15%;
		width:100%;
	}
	#footer{
		height:100%;
		width:100%;
		
	}
	
	th{
		background :#F0FFFF;
	}
	
	 .bg-orange {
      background: #d8622b;
      color: #fff!important;
    }
	
	  img {
      width: 100%;
      max-height: 560px;
    }

    a {
      color: #696969;
    }
	
	.cover {
	min-height:100%;
  display:flex;
  align-items:center
}


.bg-gradient {
  overflow: hidden;
  color: color-yiq(map-get($theme-colors, 'primary'));
  background: linear-gradient(-30deg, theme-color("secondary") 0%, theme-color("primary") 50%, theme-color("primary") 100%);
}

.filter-dark {
  overflow: hidden;
  position: relative;
  color: color-yiq(map-get($theme-colors, 'dark'));
	&:before {
    position: absolute;
    top:0px;
    left:0px;
    width:100%;
    height: 100%;
    content: ' ';
    background: rgba(map-get($theme-colors, 'dark'), 0.75);
  }
}

.filter-light {
  overflow: hidden;
  position: relative;
  color: color-yiq(map-get($theme-colors, 'light'));
	&:before {
    position: absolute;
    top:0px;
    left:0px;
    width:100%;
    height: 100%;
    content: ' ';
    background: rgba(map-get($theme-colors, 'light'),0.75);
  }
}

.filter-color {
  overflow: hidden;
  position: relative;
  color: color-yiq(map-get($theme-colors, 'primary'));
	&:before {
    position: absolute;
    top:0px;
    left:0px;
    width:100%;
    height: 100%;
    content: ' ';
    background: rgba(map-get($theme-colors, 'primary'), 0.75);
  }
}

.filter-gradient {
  overflow: hidden;
  position: relative;
  color: color-yiq(map-get($theme-colors, 'primary'));
	&:before {
    position: absolute;
    top:0px;
    left:0px;
    width:100%;
    height: 100%;
    content: ' ';
    background: linear-gradient(-30deg, transparentize(theme-color("secondary"), 0.1) 0%, transparentize(theme-color("primary"), 0.1) 50%, transparentize(theme-color("primary"), 0.05) 100%);
  }
}

.filter-fade-in {
  overflow: hidden;
  position: relative;
  &:before {
    position: absolute;
    top:0px;
    left:0px;
    width:100%;
    height: 100%;
    content: ' ';
    background: linear-gradient($body-bg, transparentize($body-bg, 0.2),transparentize($body-bg, 0.9),transparentize($body-bg, 1));
	}
}
	
	
</style>



<script>



</script>
</head>
<body>
<%
response.setCharacterEncoding("utf8");
%>
	<div id="topnavicontainer">
		<nav class="navbar navbar-expand-md navbar-dark bg-info" id="topnavbar" >
	     	<div id="logocontainer">
	      	<a class="navbar-brand" href="mainpage.jsp">Auction GO!</a>  
	</div>
	   
	<div class="collapse navbar-collapse text-center justify-content-end" id="menucontainer">
	     <ul class="navbar-nav">
	       <li class="nav-item">
	         
	       
	    <c:choose>
		<c:when test="${sessionScope.loginid != null}">
		 <a class="nav-link" href="logout.mem">
	            <i class="fa fa-user fa-fw" ></i> Logout</a>
	              </c:when>
	              <c:otherwise>
	               <a class="nav-link" href="login.jsp">
	               <i class="fa fa-user fa-fw" ></i> Login</a>
	              </c:otherwise>
     </c:choose>
	       </li>
	       <li class="nav-item">
	           <a class="nav-link" href="join.jsp">
	            <i class="fa fa-user fa-fw" ></i> Sing up</a>
	       </li> 
	     </ul>  
	        <a class="btn navbar-btn ml-2 btn-info text-white">
	        <i class="fa d-inline fa-lg fa-user-circle-o"></i> My Page</a> 
     </div>
   
   </nav>
  </div>
  
	<div id="allwrapper" >
	
	<div id="headerwrapper">
		<div id="header">
			<div id="headerleft"></div>
		
		
		<div id="headercenter">
			<div class="py-5"  >  
			    <div class="container" >
			      <div class="row" > 
			         <div class="col-md-12"> 
			          <form class="form-inline" >
			            <div class="input-group" id="search">
			              <input type="search" class="form-control" placeholder="search">
			              <div class="input-group-append">
			                <button class="btn btn-info" type="button">Search</button>
			              </div>
			            </div>
			          </form>
			         </div> 
			       </div> 
			    </div>  
			   </div>  
		</div>
			
			
				
		<div id="headerright">
	
		</div>
	</div>

		
		
		<div id="centernavbar">
			<nav class="nav nav-pills nav-justified">
				<li class="nav-item">
					<a class="nav-link  text-info" id="menubtn" href="#">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
				</li> 
				
				
					 <li class="nav-item">
				    <a class="nav-link  text-info" id="menubtn" href="CommunityController.do">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
				</li> 
					 <li class="nav-item">
					<a class="nav-link  text-info" id="menubtn" href="#">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
				</li> 
					 <li class="nav-item">
					<a class="nav-link  text-info" id="menubtn" href="#">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
				</li> 
					 <li class="nav-item">
					<a class="nav-link  text-info" id="menubtn" href="#">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
				 </li> 
			</nav>
		</div>
	
	</div>	
	
	<div id="centerwrapper">
		
		<div id="content">
							

	
<!-- 			   <div class="row"> -->
<!--         <div class="p-3 align-self-center col-md-4" > -->
<!--           <div class="card"> -->
<!--             <div class="card-block p-5"> -->
<!--               <h1> -->
<!--                 <sup>$</sup> 25 </h1> -->
<!--               <h3>Standard</h3> -->
<!--               <hr> -->
<!--               <p>Perfect for small business and growing teams.&nbsp;</p> -->
<!--               <p> sd </p> -->
<!--               <p> sd </p> -->
<!--               <p> sd </p> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
        
<!--          <div class="p-3 align-self-center col-md-4" > -->
<!--           <div class="card"> -->
<!--             <div class="card-block p-5"> -->
<!--               <h1> -->
<!--                 <sup>$</sup> 25 </h1> -->
<!--               <h3>Standard</h3> -->
<!--               <hr> -->
<!--               <p>Perfect for small business and growing teams.&nbsp;</p> -->
<!--               <p> sd </p> -->
<!--               <p> sd </p> -->
<!--               <p> sd </p> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--          <div class="p-3 align-self-center col-md-4" > -->
<!--           <div class="card"> -->
<!--             <div class="card-block p-5"> -->
<!--               <h1> -->
<!--                 <sup>$</sup> 25 </h1> -->
<!--               <h3>Standard</h3> -->
<!--               <hr> -->
<!--               <p>Perfect for small business and growing teams.&nbsp;</p> -->
<!--               <p> sd </p> -->
<!--               <p> sd </p> -->
<!--               <p> sd </p> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--          <div class="p-3 align-self-center col-md-4" > -->
<!--           <div class="card"> -->
<!--             <div class="card-block p-5"> -->
<!--               <h1> -->
<!--                 <sup>$</sup> 25 </h1> -->
<!--               <h3>Standard</h3> -->
<!--               <hr> -->
<!--               <p>Perfect for small business and growing teams.&nbsp;</p> -->
<!--               <p> sd </p> -->
<!--               <p> sd </p> -->
<!--               <p> sd </p> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!-- 	</div> -->
	
	 <!-- 라이브리 시티 설치 코드 -->
<div id="lv-container" data-id="city" data-uid="MTAyMC8zNzY1My8xNDE4NA==">
	<script type="text/javascript">
   (function(d, s) {
       var j, e = d.getElementsByTagName(s)[0];

       if (typeof LivereTower === 'function') { return; }

        j = d.createElement(s);
       j.src = 'https://cdn-city.livere.com/js/embed.dist.js';
//        j.async = true;

       e.parentNode.insertBefore(j, e);
   })(document, 'script');
	</script>
<noscript> 라이브리 댓글 작성을 위해 JavaScript를 활성화 해주세요</noscript>
</div>
<!-- 시티 설치 코드 끝 -->
	
	
	
	
							
							
		
	</div>		
	</div>
	
	
	
	
	
	<div id="bottomwrapper" class="bg-info">
		
		<div id="footer">
		
<div class="text-white bg-primary">
    <div class="container">
      <div class="row">
        <div class="p-4 col-md-3">
          <h2 class="mb-4 text-white">Auctino GO!</h2>
          <p class="text-white">A company for whatever you may need, from website prototyping to publishing</p>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4 text-white">Mapsite</h2>
          <ul class="list-unstyled">
            <a href="#" class="text-white">Home</a>
            <br>
            <a href="#" class="text-white">About us</a>
            <br>
            <a href="#" class="text-white">Our services</a>
            <br>
            <a href="#" class="text-white">Stories</a>
          </ul>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4">Contact</h2>
          <p>
            <a href="tel:+246 - 542 550 5462" class="text-white">
              <i class="fa d-inline mr-3 text-secondary fa-phone"></i>+246 - 542 550 5462</a>
          </p>
          <p>
            <a href="mailto:info@pingendo.com" class="text-white">
              <i class="fa d-inline mr-3 text-secondary fa-envelope-o"></i>info@Auction Go.com</a>
          </p>
          <p>
            <a href="https://goo.gl/maps/AUq7b9W7yYJ2" class="text-white" target="_blank">
              <i class="fa d-inline mr-3 fa-map-marker text-secondary"></i>365 Park Street, NY</a>
          </p>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4 text-light">Subscribe</h2>
          <form>
            <fieldset class="form-group text-white">
              <label for="exampleInputEmail1">Get our newsletter</label>
              <input type="email" class="form-control" placeholder="Enter email"> </fieldset>
            <button type="submit" class="btn btn-outline-secondary">Submit</button>
          </form>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3">
          <p class="text-center text-white">© Copyright 2017 Pingendo - All rights reserved. </p>
        </div>
      </div>
    </div>
  </div>
		

		</div>
	
	</div>
	
</div>


</body>
</html>