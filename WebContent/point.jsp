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
      @import 'bootstrap-4.0.0';
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
        margin-top: 150px;
        margin-bottom: 300px  
      }
      
      #head{
         background : #EFF8FB; 
      }

      #footer{
       background:#7B68EE; 
       width:100%;
      }
      
   </style>
   
   </head>
<body>

      <% response.setCharacterEncoding("utf8"); %>

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
                   <a class="nav-link" href="javascript:kakaoLogout()">
                        <i class="fa fa-user fa-fw" ></i> Logout</a>
                             </c:when>
                          <c:otherwise>
                           <a class="nav-link" href="login.jsp">
                           <i class="fa fa-user fa-fw" ></i> Login</a>
                      </c:otherwise>
              </c:choose>
                </li>
                <li class="nav-item">
                     <a class="nav-link" href="terms_of_use.jsp">
                     <i class="fa fa-user fa-fw" ></i> Sing up</a>
                </li> 
              </ul>  
                 <a class="btn navbar-btn ml-2 btn-primary text-white">
                 <i class="fa d-inline fa-lg fa-user-circle-o"></i> My Page</a> 
                  <span class="navbar-toggler-icon" ></span>
            </div>
          </nav>
        </div>
  
<!--                  최상단 네이베기션    (위에코드)                -->

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

  <!--         네비바 헤더   (위에코드)           -->
<form action="pointCharge.bo">
      <div id="allwrapper" >
           <div id="centerwrapper">
  <div class="container">
    <div class="row">
      <div class="align-self-center col-md-6">
        <h1 class="text-center text-md-left display-3">Auction Point Recharge </h1>
        <p class="lead">Auction Go 홈페이지의 충전 페이지 입니다.</p>
      </div>
      <div class="col-md-6">
        <div class="card">
          <div class="card-body p-5" id="head">
            <h3 class="pb-3">Point 충전</h3>
              <label>※기본 충전 금액은 1,000원 이상 가능 합니다.</label>
              <br>
              <br>
              <div class="form-group">
                <label>충전 금액 :</label>
                <br>
                <input class="form-control" type="text" name="point" placeholder="충전하실 금액을 적어주세요"> </div>
              <br>
              <button type="submit" class="btn mt-2 btn-outline-dark">충전하기</button>
              <button type="button" id="cencle" class="btn mt-2 btn-outline-dark">취소하기</button>
           </div>
         </div>
       </div>
     </div>
   </div>
  </div>
</div>
</form>

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
   
  <!--      바닥             -->
   fileDAO . select * from 
   
   
  <script>
     document.getElementById("cencle").onclick = function() {
       alert("포인트 충전을 취소합니다");
       location.href = "mainpage.jsp";
     }
  </script>
   
   
</body>
</html>