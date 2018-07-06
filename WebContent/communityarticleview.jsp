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
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   
/*   primary: #12bbad, */
/*   secondary: #4f70ce, */
/*   light: #f3f3f3, */
/*   dark: #151515, */
/*   info: #ccc, */
/*   success: #28a745, */
/*   warning: #ffc107, */
/*   danger: #dc3545 */

   body{
       font-family: 'Roboto', sans-serif;
      font-size: 16px;
      line-height: 1.42; 
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

       width: 100%;
       height: 40px;
       font-size: 20px;   
       margin: 0px auto;   
       opacity: 0.9;
   }
   

   #headerwrapper{
      height:16%;   
      width:100%;
   }


   #header{
      height:70%;
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
      height:100%;
      width:100%;

   }
   
   #headerright{
      float:left;
      height:100%;
      width:20%;
   }
   #centernavbar{
	  height: 30%;
      width:100%;   
   }
   
   #menubtn{
      background:#FFF8DC; 
      box-shadow: 0;
      border: 1px solid #7B68EE;
      outline: none;
  
   }
   
      #allwrapper{

      width:100%;
      height:auto;
      margin: 0px auto;
      
   	}

   #centerwrapper{
      height:100%;  
      width:80%;
      margin: 0px auto;
    
      
   }
 
   #articlerow{
   		
    	height:100%; 
     	width:100%; 
   }
   
   #articlecol{
   	border-radius:10px;  
    border: 2px solid #4f70ce;
   	margin: auto;
   	height:85%; 
   	width:100%;
   }

   #footer{
	background:#7B68EE; 
      width:100%;
  
   }
   

/*  -----------------------------------------------------------------------------------------------------   */


 body {
      font-family: "Roboto", "Tahoma", "Arial", sans-serif;

    }

    .text-right {
      text-align: right;
    }

    .comments-app {
      margin: 50px auto;
      max-width: 680px;
      padding: 0 50px;
      width: 100%;
    }

    .comments-app h1 {
      color: #191919;
      margin-bottom: 1.5em;
      text-align: center;
      text-shadow: 0 0 2px rgba(152, 152, 152, 1);
    }

    .comment-form {}

    .comment-form .comment-avatar {}

    

    .comment-form .form .form-row {
      margin-bottom: 10px;
    }

    .comment-form .form .form-row:last-child {
      margin-bottom: 0;
    }

    .comment-form .form .input {
      background-color: #fcfcfc;
      border: none;
      border-radius: 4px;
      box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
      color: #555f77;
      font-family: inherit;
      font-size: 14px;
      padding: 5px 10px;
      outline: none;
      width: 100%;
      -webkit-transition: 350ms box-shadow;
      -moz-transition: 350ms box-shadow;
      -ms-transition: 350ms box-shadow;
      -o-transition: 350ms box-shadow;
      transition: 350ms box-shadow;
    }

    .comment-form .form textarea.input {
      height: 100px;
      width : 1000px;
      padding: 15px;
    }

    .comment-form .form label {
      color: #555f77;
      font-family: inherit;
      font-size: 14px;
    }

    .comment-form .form input[type=submit] {
      background-color: #555f77;
      border: none;
      border-radius: 4px;
      box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
      color: #fff;
      cursor: pointer;
      display: block;
      margin-left: auto;
      outline: none;
      padding: 6px 15px;
      -webkit-transition: 350ms box-shadow;
      -moz-transition: 350ms box-shadow;
      -ms-transition: 350ms box-shadow;
      -o-transition: 350ms box-shadow;
      transition: 350ms box-shadow;
    }

    .comment-form .form .input:focus,
    .comment-form .form input[type=submit]:focus,
    .comment-form .form input[type=submit]:hover {
      box-shadow: 0 2px 6px rgba(121, 137, 148, .55);
    }

    * {
      margin: 0;
      padding: 0;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
    }

    a {
      color: #03658c;
      text-decoration: none;
    }

    ul {
      list-style-type: none;
    }

    .comment-main-level {
      font-family: 'Roboto', Arial, Helvetica, Sans-serif, Verdana;
      background: #dee1e3;
    }

    .comments-container {
      margin: 60px auto 15px;
      width: 700px;
    }

    .comments-container h1 {
      font-size: 36px;
      color: #283035;
      font-weight: 400;
    }

    .comments-container h1 a {
      font-size: 18px;
      font-weight: 700;
    }

    .comments-list {
      margin-top: 30px;
      position: relative;
    }

    .comments-list:before {
      content: '';
      width: 2px;
      height: 100%;
      background: #c7cacb;
      position: absolute;
      left: 32px;
      top: 0;
    }

    .comments-list:after {
      content: '';
      position: absolute;
      background: #c7cacb;
      bottom: 0;
      left: 27px;
      width: 7px;
      height: 7px;
      border: 3px solid #dee1e3;
      -webkit-border-radius: 50%;
      -moz-border-radius: 50%;
      border-radius: 50%;
    }

    .comments-list li {
      margin-bottom: 15px;
      display: block;
      position: relative;
    }

    .comments-list li:after {
      content: '';
      display: block;
      clear: both;
      height: 0;
      width: 0;
    }

    width: 65px;
    height: 65px;
    position: relative;
    z-index: 99;
    float: left;
    border: 3px solid #FFF;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
    -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
    overflow: hidden;
  }
  .comments-list .comment-avatar img {
    width: 100%;
    height: 100%;
  }
  .reply-list .comment-avatar {
    width: 50px;
    height: 50px;
  }
  .comment-main-level:after {
    content: '';
    width: 0;
    height: 0;
    display: block;
    clear: both;
  }
  .comments-list .comment-box {
    width: 680px;
    float: right;
    position: relative;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.15);
    -moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.15);
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.15);
  }
  .comments-list .comment-box:before,
  .comments-list .comment-box:after {
    content: '';
    height: 0;
    width: 0;
    position: absolute;
    display: block;
    border-width: 10px 12px 10px 0;
    border-style: solid;
    border-color: transparent #FCFCFC;
    top: 8px;
    left: -11px;
  }
  .comments-list .comment-box:before {
    border-width: 11px 13px 11px 0;
    border-color: transparent rgba(0, 0, 0, 0.05);
    left: -12px;
  }
  .reply-list .comment-box {
    width: 610px;
  }
  .comment-box .comment-head {
    background: #FCFCFC;
    padding: 10px 12px;
    border-bottom: 1px solid #E5E5E5;
    overflow: hidden;
    -webkit-border-radius: 4px 4px 0 0;
    -moz-border-radius: 4px 4px 0 0;
    border-radius: 4px 4px 0 0;
  }
  .comment-box .comment-head i {
    float: right;
    margin-left: 14px;
    position: relative;
    top: 2px;
    color: #A6A6A6;
    cursor: pointer;
    -webkit-transition: color 0.3s ease;
    -o-transition: color 0.3s ease;
    transition: color 0.3s ease;
  }
  .comment-box .comment-head i:hover {
    color: #03658c;
  }
  .comment-box .comment-name {
    color: #283035;
    font-size: 14px;
    font-weight: 700;
    float: left;
    margin-right: 10px;
  }
  .comment-box .comment-name a {
    color: #283035;
  }
  .comment-box .comment-head span {
    float: left;
    color: #999;
    font-size: 13px;
    position: relative;
    top: 1px;
  }
  .comment-box .comment-content {
    background: #FFF;
    padding: 12px;
    font-size: 15px;
    color: #595959;
    -webkit-border-radius: 0 0 4px 4px;
    -moz-border-radius: 0 0 4px 4px;
    border-radius: 0 0 4px 4px;
  }
  .comment-box .comment-name.by-author,
  .comment-box .comment-name.by-author a {
    color: #03658c;
  }
  .comment-box .comment-name.by-author:after {
    content: 'autor';
    background: #03658c;
    color: #FFF;
    font-size: 12px;
    padding: 3px 5px;
    font-weight: 700;
    margin-left: 10px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
  }
  @media only screen and (max-width: 766px) {
    .comments-container {
      width: 480px;
    }

    .comments-list .comment-box {
      width: 390px;
    }

    .reply-list .comment-box {
      width: 320px;
    }
  }
  * {
    margin: 0;
    padding: 0;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }
  a {
    color: #03658c;
    text-decoration: none;
  }
  ul {
    list-style-type: none;
  }
  .comment-main-level {
    font-family: 'Roboto', Arial, Helvetica, Sans-serif, Verdana;
    background: #dee1e3;
  }
  .comments-container {
     margin: 60px auto 15px; 
     width: 700px; 
  }
  .comments-container h1 {
    font-size: 36px;
    color: #283035;
    font-weight: 400;
  }
  .comments-container h1 a {
    font-size: 18px;
    font-weight: 700;
  }
  .comments-list {
    margin-top: 30px;
    position: relative;
  }
  .comments-list:before {
    content: '';
    width: 2px;
    height: 100%;
    background: #c7cacb;
    position: absolute;
    left: 32px;
    top: 0;
  }
  .comments-list:after {
    content: '';
    position: absolute;
    background: #c7cacb;
    bottom: 0;
    left: 27px;
    width: 7px;
    height: 7px;
    border: 3px solid #dee1e3;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
  }
  .comments-list li {
    margin-bottom: 15px;
    display: block;
    position: relative;
  }
  .comments-list li:after {
    content: '';
    display: block;
    clear: both;
    height: 0;
    width: 0;
  }
  ---------------------------*/ .comments-list .comment-avatar {
    width: 65px;
    height: 65px;
    position: relative;
    z-index: 99;
    float: left;
    border: 3px solid #FFF;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
    -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
    overflow: hidden;
  }
  .comments-list .comment-avatar img {
    width: 100%;
    height: 100%;
  }
  .reply-list .comment-avatar {
    width: 50px;
    height: 50px;
  }
  .comment-main-level:after {
    content: '';
    width: 0;
    height: 0;
    display: block;
    clear: both;
  }
  .comments-list .comment-box {
    width: 680px;
    float: right;
    position: relative;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.15);
    -moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.15);
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.15);
  }
  .comments-list .comment-box:before,
  .comments-list .comment-box:after {
    content: '';
    height: 0;
    width: 0;
    position: absolute;
    display: block;
    border-width: 10px 12px 10px 0;
    border-style: solid;
    border-color: transparent #FCFCFC;
    top: 8px;
    left: -11px;
  }
  .comments-list .comment-box:before {
    border-width: 11px 13px 11px 0;
    border-color: transparent rgba(0, 0, 0, 0.05);
    left: -12px;
  }
  .reply-list .comment-box {
    width: 610px;
  }
  .comment-box .comment-head {
    background: #FCFCFC;
    padding: 10px 12px;
    border-bottom: 1px solid #E5E5E5;
    overflow: hidden;
    -webkit-border-radius: 4px 4px 0 0;
    -moz-border-radius: 4px 4px 0 0;
    border-radius: 4px 4px 0 0;
  }
  .comment-box .comment-head i {
    float: right;
    margin-left: 14px;
    position: relative;
    top: 2px;
    color: #A6A6A6;
    cursor: pointer;
    -webkit-transition: color 0.3s ease;
    -o-transition: color 0.3s ease;
    transition: color 0.3s ease;
  }
  .comment-box .comment-head i:hover {
    color: #03658c;
  }
  .comment-box .comment-name {
    color: #283035;
    font-size: 14px;
    font-weight: 700;
    float: left;
    margin-right: 10px;
  }
  .comment-box .comment-name a {
    color: #283035;
  }
  .comment-box .comment-head span {
    float: left;
    color: #999;
    font-size: 13px;
    position: relative;
    top: 1px;
  }
  .comment-box .comment-content {
    background: #FFF;
    padding: 12px;
    font-size: 15px;
    color: #595959;
    -webkit-border-radius: 0 0 4px 4px;
    -moz-border-radius: 0 0 4px 4px;
    border-radius: 0 0 4px 4px;
  }
  .comment-box .comment-name.by-author,
  .comment-box .comment-name.by-author a {
    color: #03658c;
  }
  .comment-box .comment-name.by-author:after {
    content: 'autor';
    background: #03658c;
    color: #FFF;
    font-size: 12px;
    padding: 3px 5px;
    font-weight: 700;
    margin-left: 10px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
  }
  @media only screen and (max-width: 766px) {
    .comments-container {
      width: 480px;
    }

    .comments-list .comment-box {
      width: 390px;
    }

    .reply-list .comment-box {
      width: 320px;
    }
  }




</style>



<script>
			window.onload = function() {
				var deletecount = 1;
			    document.getElementById("back").onclick = function() {
			 	   location.href = "CommunityMain.do";
				    }
			    
			    
			}


</script>
</head>
<body>
<%
response.setCharacterEncoding("utf8");
%>
   <div id="topnavicontainer">
      <nav class="navbar navbar-expand-md navbar-dark bg-primary" id="topnavbar" >
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
           <a class="btn navbar-btn ml-2 btn-primary text-white">
           <i class="fa d-inline fa-lg fa-user-circle-o"></i> My Page</a> 
            <span class="navbar-toggler-icon" ></span>
     </div>
   
   </nav>

  </div>
  
  
  
  
     <div id="headerwrapper">
      <div id="header">
         <div id="headerleft"></div>
      
      
      <div id="headercenter">
         <div class="py-5"  >  
             <div class="container"  >
               <div class="row" > 
                  <div class="col-md-12"> 
                   <form class="form-inline" >
                     <div class="input-group" id="search">
                       <input type="search" class="form-control" placeholder="search">
                       <div class="input-group-append">
                         <button class="btn btn-primary" type="button">Search</button>
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
               <a class="nav-link  text-secondary" id="menubtn" href="#">
               <i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
            </li> 
                <li class="nav-item">
                <a class="nav-link  text-secondary" id="menubtn" href="CommunityMain.do">
               <i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
            </li> 
                <li class="nav-item">
               <a class="nav-link  text-secondary" id="menubtn" href="#">
               <i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
            </li> 
                <li class="nav-item">
               <a class="nav-link  text-secondary" id="menubtn" href="#">
               <i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
            </li> 
                <li class="nav-item">
               <a class="nav-link  text-secondary" id="menubtn" href="#">
               <i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
             </li> 
             
         
         </nav>
      </div>
   
   </div>   
  
  
  
  
  
  
  
  
  
  
   <div id="allwrapper" >
   	
      <br>
   
   <div id="centerwrapper">
      

        		<div class="row " id="articlerow">
					<div class="col-md-6 bg-light " id="articlecol">
						<hr />
						
						
						
						<div class="Compose-Message">
							<div class="panel panel-success">
								<!--               <div class="panel-heading"> -->
								<!--                 Input New Text -->
								<!--               </div> -->



								<div class="panel-body">

									<label>Title : </label> <input type="text"
										class="form-control w-100 bg-white" name="title"
										placeholder=${dto.title } readonly> <label>Writer
										: </label>

									<!--            <input type="text" class="form-control W-25"/> -->


									<input type="text" class="form-control w-50 bg-white"
										placeholder=${dto.writer } name="loginid" readonly>
									<!-- 				 <label>File : </label> -->
									<!-- 				<input type="text" class="form-control w-50" placeholder="File" > -->


									<!-- 				 <label>Count : </label> -->
									<!--                 <input type="text" class="form-control w-100"   name="viewcount"  placeholder=${dto.viewcount}  readonly> -->

								</div>
					
								<label> Text : </label>
								<textarea rows="9" class="form-control bg-white" name="contents"
									placeholder=${dto.contents } readonly></textarea>
								<hr />

								
								
									
								<c:choose>
									<c:when test="${dto.writer.equals(sessionScope.loginid)}">


										<div class="col-md-12 text-right">
											<!--<input type="submit"  href="CommunityController.do" class="btn btn-secondary" value="Enter Text" "><span class="glyphicon glyphicon-envelope text-light"></span> </a>  -->
<!-- 										    <input type="button" id=back class="btn btn-primary" -->
<!-- 											value="back"><span -->
<!-- 											class="glyphicon glyphicon-tags text-light"></span>  -->
												<a class="btn text-light  btn btn-light" id=back
												 target="_blank"><i class="fa fa-fw fa-arrow-left fa-2x text-info"></i></a>
												<a class="btn text-light  btn btn-light" id=delete
												 target="_blank"><i class="fa fa-fw fa-trash fa-2x text-info"></i></a>
								 				<a class="btn text-light  btn btn-light" id=modify
								 				target="_blank"><i class="fa fa-fw fa-wrench fa-2x text-info"></i></a>
												
<!-- 											<input -->
<!-- 											type="button" id=delete class="btn btn-primary" -->
<!-- 											value="delete"><span -->
<!-- 											class="glyphicon glyphicon-tags text-light"></span> <input -->
<!-- 											type="button" id=modify class="btn btn-primary" -->
<!-- 											value="modify "><span -->
<!-- 											class="glyphicon glyphicon-tags text-light"></span> -->


										</div>
										<script>
					              document.getElementById("delete").onclick = function() {
						        	   location.href = "CommunityDelete.do?seq=<%=request.getParameter("seq")%>";
						        			   
						           }
							    
							      document.getElementById("modify").onclick = function() {
						        	   location.href = "ComunityModify.do?seq=<%=request.getParameter("seq")%>";
								}
										</script>

									</c:when>
									<c:otherwise>
										<div class="col-md-12 text-right">
											<!--           <input type="submit"  href="CommunityController.do" class="btn btn-secondary" value="Enter Text" "><span class="glyphicon glyphicon-envelope text-light"></span> </a>  -->
											<input type="button" id=back class="btn btn-primary"
												value="back"><span
												class="glyphicon glyphicon-tags text-light"></span>
										</div>
									</c:otherwise>
								</c:choose>
								

							</div>
						</div>
						
						
			<c:choose>


					<c:when test="${dto.writer == sessionScope.loginid}">			
					
					
					<div class="comments-container bg-light">
					    <div class="comment-form">
					      <!-- Comment Avatar -->
					      <form action="CommentWrite.co" method="get" class="form" btn btn-primary"" name="form" ng-submit="form.$valid &amp;&amp; cmntCtrl.addComment()" novalidate="">
					        <div class="form-row" >
					          <textarea class="input border border-primary " id="comment_text" name="comment_text" ng-model="cmntCtrl.comment.text" placeholder="Add comment..." required="" maxlength="30"></textarea>
					          <input type="hidden" name="seq" value="${dto.seq}">
					        </div>
					        <div class="form-row">
					          <input type="submit" value="Add Comment" class=""> </div>
					      </form>
					    </div>
					   </div> 
					    
					    	</c:when>
							<c:otherwise>
										
					<div class="comments-container bg-light">
					    <div class="comment-form">
					      <!-- Comment Avatar -->
					      <form class="form" name="form" ng-submit="form.$valid &amp;&amp; cmntCtrl.addComment()" novalidate="">
					        <div class="form-row" >
					          <textarea class="input border border-primary " ng-model="cmntCtrl.comment.text" placeholder="Please login..." required="" ></textarea>
					        </div>
					       
					      </form>
					    </div>
						  </div> 
						
						
						</c:otherwise>
					</c:choose>
					
					    
				<br>
				
		
		
		
		
		
		
		
		
		
		
		
				
		<c:if test="${result.size() > 0}">
			<script>var num = 1;</script>
					
						
				<c:forEach var="item" items="${result}">

				<c:choose>


				<c:when test="${dto.writer == sessionScope.loginid}">
				
					
					    <br>
					    <div class="comment-main-level">
					      <div class="comment-box">
					        <div class="comment-head bg-warning">
					          <h6 class="comment-name by-author">
					            <a>No.${item.comment_seq}</a>
					            <br><br>
					            <a>ID:${item.writer}</a>
					          </h6>
					         
					          <span> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					          &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					          Date:${item.writedate}
					          </span>
					              
					    	<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					    	&emsp;
					    	<span id="delbtn">
					          <script>
                  				$("#delbtn:last-child").after("<button class='btn btn-outline-info btn-sm ' id="+num+"  value='${item.comment_seq}'>삭제하기</button>")
					          </script>
					         </span>  
					       
					       
			
					    
					       
					       
					            
					         <script>
					                  document.getElementById(num).onclick = function() {
					              	
 					                     location.href = "CommentDelete.co?comment_seq=${item.comment_seq}&seq=${item.article_no}";}
                  
							</script> 
     
							 <span id="modifysubmit" > 
					          <script>
                  				$("#modifysubmit:last-child").after("<button class='btn btn-outline-info btn-sm' id=commentmodifysuccess"+num+" >수정완료</button> ")
					          </script></span>
					          
					          
					          
					       <script>
					 
					    	$("#commentmodifysuccess"+ num).click(
										(function(e){
											return function(){
												var modifytext = $("#modify"+e).val();
												location.href = "CommentModify.co?comment_seq=${item.comment_seq}&article_no=${item.article_no}&comment_text="+modifytext;
						 					}
										})(num)
									);
							
								
					    	</script>					      
					      
					       <span id="modifybtn1" >
					       <script>
					       $("#modifybtn1:last-child").after("<button class='btn btn-outline-info btn-sm' id=commentmodify"+num+" name=commentmodify type=button>수정하기</button>");
			            	  
					    	</script>
						</span>


				    </div>
			
				 
				    <div id=modinput>
						<script>   
					        $("#modinput:last-child").after("<input type=text class='form-control bg-white'   id=modify"+num+" name=comment_text2 readonly value=${item.comment_text}>");
					    </script>
					     
					     
					    <script>
			                  
			  				$("#commentmodify"+ num).click(
			  					(function(e){
			  						return function(){
			  							$("#modify"+e).prop("readonly",false);
			  	 					}
			  					})(num)
			  				);
  		   
			  				num++; 
			  			 </script>
					          
					

	
					      </div>
					      
					      
					     
				    </div>
				     
				</div>
				
					<br>
				
					
					</c:when>



				<c:otherwise>
					
		
	
					    <br>
					    <div class="comment-main-level">
					      <div class="comment-box">
					        <div class="comment-head bg-warning">
					          <h6 class="comment-name by-author">
					            <a>${item.comment_seq}</a>
					            <a>${item.writer}</a>
					          </h6>
					          <span>${item.writedate}</span>
					         
					         
					        </div>
					        <div class="comment-content bg-light bg-white">${item.comment_text}</div>
					      </div>
					    </div>
					     <br>  
			
					         
					      

					
			</c:otherwise>
		</c:choose>
	</c:forEach>
</c:if>
					
					
					
				
					
										
		</div>
									
	</div>
			
        
        
       
        
        
        

         
   </div>
 <br>

   
</div>





      
      <div id="footer">
      
<div class="text-white " >
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
   


</body>
</html>