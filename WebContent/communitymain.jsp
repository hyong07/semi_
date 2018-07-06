<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://v40.pingendo.com/assets/4.0.0/default/theme.css"
	type="text/css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>  -->
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
  	  -webkit-filter:blur(0.1px);
/*    background-color: #715555;  */
      
   	}

   #centerwrapper{
      height:100%;  
      width:60%;
      margin: 0px auto;
   }
   			
 	#pcard{ 
 	  overflow: hidden;  
 	  text-overflow: ellipsis; 
 	  white-space: nowrap;  

 	} 
   
	  #footer{
 		background : #7B68EE;  
	    width:100%;
  
   }

/*  -----------------------------------------------------------------------------------------------------   */
	   @import url('https://fonts.googleapis.com/css?family=Roboto'); 
      { 
      box-sizing: border-box; 
     } 

     .card { 
       position: relative; 
       float: left; 
       width: 500px; 
       height: 450px;
       overflow: hidden; 
       margin-top: 8px;     
       margin-left: 320px;     
       margin-right: 8px; 
       margin-bottom: 8px;     
/* 	   margin : auto;  */
/*     border-radius: 8px;  */
       box-shadow: 0 2px 2px rgba(11, 11, 11, 0.28); 
       opacity : 0.9; 
       
	
       
     } 
	
     #cardheader { 
       display: block; 
       width: 100%; 
       height: 25px; 
       overflow: hidden; 
 	   padding : 1px; 
/*     border: 2px solid #4f70ce;  */
/*     border-radius: 6px;  */
/*     background: rgba(11, 11, 11, 0.04);   */
       div-shadow: 0 2px 2px rgba(11, 11, 11, 0.28); 
      
      
        
     } 
		
 	 #carddiv{ 
/*   	   box-shadow: 1px 2px 3px #ccc, 1px 2px 25px #ddd;   */
/*   	   -webkit-transition-duration: 0.3s;   */
/*        transition-duration: 0.3s;   */
      	
 	 }	 
	
		
     .card__title { 
       margin-top: 5px; 
       margin-left: 70px; 
       margin-right: 70px; 
       display: block; 
       font-size: 1.10rem; 
       height: 45px; 
       overflow: hidden; 
   
  
	
     } 

    .card__content {       
      
        margin-left: 10px;  
        margin-right: 10px;  
        margin-bottom: 20px;  
/*      display: block;   */
        font-size: 1.0rem;  
        height: 260px;  
/*      overflow: hidden;   */
    
     } 
	 #contentcard{
	 	font-size: 1.0rem; 
	 	height: 250px; 
	 	
	 }	


     .card__meta { 
       list-style: none; 
       margin: 0; 
       padding: 8px; 
       display: flex; 
       flex-direction: row; 
       flex-wrap: no-wrap; 
       align-items: center; 
       justify-content: space-between; 
/*        background: rgba(11, 11, 11, 0.04);   */
       border-top: 1px solid rgba(11, 11, 11, 0.16); 
       color: rgba(11, 11, 11, 0.68); 
      
     } 
     .card__meta1 { 
       list-style: none; 
       position: relative; 
       margin: 0; 
       padding: 8px; 
       display: flex; 
       flex-direction: row; 
       flex-wrap: no-wrap; 
       align-items: center; 
       justify-content: space-between; 
/*        background: rgba(11, 11, 11, 0.04);  */
       border-top: 1px solid rgba(11, 11, 11, 0.16); 
       color: rgba(11, 11, 11, 0.68); 
       
     } 

     .card__meta>li.likes::after { 
       content: "\f004"; 
       font-family: FontAwesome; 
     } 

     .card__meta>li.views::after { 
       content: "\f06e"; 
       font-family: FontAwesome; 
     } 

     .more::after { 
       position: absolute; 
       display: block; 
       top: 8px; 
       right: 16px; 
       color: rgba(242, 242, 242, 1); 
     } 

     .more::after { 
       content: "\f142"; 
       font-family: FontAwesome; 
       font-size: 2rem; 
     } 


 

/*  -------------------------------------------------------------------------------------------------------------------------------------- */
	


 
    
	</style>

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
  

  
   <div  id="allwrapper"  >
   	
      <br>
      
   <div class="" id="centerwrapper" >
      
  
        					<!-- <body draggable="true" > -->
				<!-- 	<div class="py-5" > -->
				<!-- 		<div class="container" id="a"> -->
				<!-- 			<div class="row" id="row"> -->
				<!-- 				<div class="col-md-10" > -->
				<!-- 					<table class="table" > -->
				<!-- 						<thead> -->
				<!-- 							<tr> -->
				<!-- 								<th colspan="5"  width="400">자유게시판</th> -->
				<!-- 							</tr> -->
				<!-- 							<tr> -->
				<!-- 								<th >글번호</th> -->
				<!-- 								<th width="450" align=center width="400" align=center>제목</th> -->
				<!-- 								<th >작성자</th> -->
				<!-- 								<th >작성일</th> -->
				<!-- 								<th >조회</th> -->
				<!-- 							</tr> -->

				<!-- 						</thead> -->
				<!-- 						<tbody> -->
				<%-- 							<c:choose> --%>
				<%-- 								<c:when test="${result.isEmpty()}"> --%>
				<!-- 									<tr> -->
				<!-- 										<td colspan=4 height="300" align=center>표시할내용이없습니다..</td> -->
				<!-- 									</tr> -->

				<%-- 								</c:when> --%>
				<%-- 								<c:otherwise> --%>
				<%-- 									<c:forEach var="item" items="${result}"> --%>

				<!-- 										<tr> -->
				<%-- 											<td>${item.seq} --%>
				<%-- 											<td><a href="CommunityAticleView.do?seq=${item.seq}&count=${item.viewcount}">${item.title}</a> </td>   --%>

				<%-- 											<td>${item.writer} --%>
				<%-- 											<td>${item.writedate} --%>
				<%-- 											<td>${item.viewcount} --%>
				<!-- 										</tr> -->


				<%-- 									</c:forEach> --%>
				<%-- 								</c:otherwise> --%>
				<%-- 							</c:choose> --%>
				<!-- 						</tbody> -->
				<!-- 					</table> -->
				<!-- 					    &nbsp; -->
				<%-- 	<c:choose> --%>
				<%--       <c:when test="${sessionScope.loginid != null}"> --%>



				<!-- 					 <div class="col-md-12 text-right" > -->

				<!--          				<a class="btn text-center text-light btn-secondary" href="communitywrite.jsp">Writing</a> -->
				<!--         			</div> -->
				<%--          </c:when> --%>
				<%--                  <c:otherwise>         --%>

				<!--                  <div class="col-md-12 text-right" > -->


				<!--         			</div> -->

				<%--                 </c:otherwise> --%>
				<%--      </c:choose>			 --%>


				<!-- 				</div> -->
				<!-- 			</div> -->
				<!-- 		</div> -->
				<!-- 	</div> -->








		
			<div class="row" id="carddiv"> 
				<c:choose> 
						<c:when test="${result.isEmpty()}">
							<tr>
								<td colspan=4 height="300" align=center>표시할내용이없습니다..</td>
							</tr>

						</c:when>
						<c:otherwise>
							<c:forEach var="item" items="${result}">
					
					 <div class="card" >
					    <div id="cardheader" class="bg-white">
					      <h5 class="text-left bg-white">No.${item.seq}</h5>   
					        
					    </div>
					    <hr />
					    <span class="card__title bg-white text-center" id="pcard"><a
                                       href="ArticleCount.do?seq=${item.seq}&count=${item.viewcount}"><b>${item.title}</a> </b></span>
					    
					    <div class="card__content">
<%-- 					      <span class="card__content text-center" ><br>${item.contents}</span> --%>
							  
						<textarea rows="50"  cols="1000" class="form-control bg-white" name="contents" id="contentcard"
									placeholder=${item.contents }  readonly></textarea>	
					    </div>
					    <ul class="card__meta">
					      <li><b> ID : ${item.writer} </b></li>
					      <li class="views"> ${item.viewcount} </li>
					    </ul>
					    <ul class="card__meta1">
					      <li><b> Date : ${item.writedate} </b></li> 
					    </ul>
					   
					    
					  </div>


	
				
						</c:forEach>
					</c:otherwise>
				</c:choose>
					
			</div> 
			
			
			
			
 		 		
		

			
				
				
				
				
				
				
				&nbsp;
				<c:choose>
					<c:when test="${sessionScope.loginid != null}">



						<div class="col-md-12 text-right">
							<div align=center>${result1}</div>  
							<a class="btn text-center  btn btn-light"
								href="communitywrite.jsp" target="_blank"><i class="fa fa-fw fa-pencil fa-2x text-info"></i></a>
						</div>
					</c:when>
					<c:otherwise>

						<div class="col-md-12 text-center">
						<div align=center>${result1}</div>  
						</div>

					</c:otherwise>
				</c:choose>

        
        
       

        
	    
        
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