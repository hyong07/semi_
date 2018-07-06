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
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link
   href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<script src="https://unpkg.com/ionicons@4.2.4/dist/ionicons.js"></script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>


body {
   font-family: 'Roboto', sans-serif; 
    font-size: 16px; 
    line-height: 1.42; 
}

div {
   border: 0px solid black;
   box-sizing: border-box;
}

#topnavicontainer {
   margin: 0px auto;
   width: 100%;
}

#topnavbar {
   width: 100%;
   height: 40px;
   font-size: 20px;
   margin: 0px auto;
   opacity: 0.9;
}

#headerwrapper {
   height: 16%;
   width: 100%;
}

#header {
   height: 70%;
   width: 100%;
}

#headerleft {
   float: left;
   height: 100%;
   width: 15%;
}

#headercenter {
   float: left;
   height: 100%;
   width: 65%;
}

#search {
   height: 100%;
   width: 100%;
}

#headerright {
   float: left;
   height: 100%;
   width: 20%;
}

#centernavbar {
   height: 30%;
   width: 100%;
}

#menubtn {
   background: #FFF8DC;
   box-shadow: 0;
   border: 1px solid #7B68EE;
   outline: none;
}

#allwrapper {
   width: 100%;
   height: auto;
   margin: 0px auto;
}

#centerwrapper {
   height: 100%;
   width: 100%; 
    margin-left: 250px;     
    margin-right: 8px; 
 
}

#footer {
   background : #7B68EE;  
   width: 100%;
}

/* 게시판  */
#maintable {
  width: 70%;
  padding: 15px;
  margin-top: 15px;
  margin-bottom :15px;
  margin-left : 40px;
  box-shadow: 1px 2px 3px #ccc, 1px 2px 25px #ddd;
  -webkit-transition-duration: 0.3s;
          transition-duration: 0.3s;
  border: 2px solid #4f70ce;        
}

.table {
  width: 100%;
}
.table th, .table td {
  padding: 0.5em;
}
.table thead th {
  border-bottom: 2px solid #abc;
}
.table td {
  border-bottom: 1px solid #abc;
}
.table tbody tr:last-of-type td {
  border-bottom-width: 2px;
}
.table .cart_item_img {
  width: 80px;
}

#link{
   text-decoration : none;
   color : black;
}

#tabletitle{
    
       height: 60px; 
       

}

/* ------------------------------------------------------------------------------------------- */


    

</style>

</head>


<body>


<%
      response.setCharacterEncoding("utf8");
%>
   <div id="topnavicontainer">
      <nav class="navbar navbar-expand-md navbar-dark bg-primary"
         id="topnavbar">
      <div id="logocontainer">
         <a class="navbar-brand" href="mainpage.jsp">Auction GO!</a>
      </div>

      <div class="collapse navbar-collapse text-center justify-content-end"
         id="menucontainer">
         <ul class="navbar-nav">
            
            <li class="nav-item">
            <c:choose>
                  <c:when test="${sessionScope.loginid != null}">
                     <a class="nav-link" href="logout.mem"> <i
                        class="fa fa-user fa-fw"></i> Logout
                     </a>
                  </c:when>
                  <c:otherwise>
                     <a class="nav-link" href="login.jsp"> <i
                        class="fa fa-user fa-fw"></i> Login
                     </a>
                  </c:otherwise>
               </c:choose></li>
            <li class="nav-item"><a class="nav-link" href="join.jsp"> <i
                  class="fa fa-user fa-fw"></i> Sing up
            </a></li>
         </ul>
         <a class="btn navbar-btn ml-2 btn-primary text-white"> <i
            class="fa d-inline fa-lg fa-user-circle-o"></i> My Page
         </a> <span class="navbar-toggler-icon"></span>
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





            <div id="headerright"></div>
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
  


   <div id="allwrapper">
  
     <br>
     
               <div id="centerwrapper">

               <div id="maintable">
                 <h2><ion-icon name="clipboard" class="mt-2"></ion-icon> 자유게시판</h2>
                 <div class="cart_content">
                   <table class="table">
                     <thead id="thead">
                       <th>글번호</th>
                       <th colspan="2"  width="600" class="text-center">제목</th>
                       <th>작성자</th>
                       <th>조회수</th>
                       <th>날짜</th>
                     </thead>
                     <tbody>
                        <c:choose>
                           <c:when test="${result.isEmpty()}">
                              <tr>
                                 <td colspan=4 height="300" align=center>표시할내용이없습니다..</td>
                              </tr>
         
                           </c:when>
                           <c:otherwise>
                              <c:forEach var="item" items="${result}">
                                 <tr>
                               <td class="cart_item_img">No.${item.seq}</td>
                               <td colspan="2" id="tabletitle"><a href="ArticleCount.do?seq=${item.seq}&count=${item.viewcount}" id="link">${item.title}</a></td>
                               <td>${item.writer}</td>
                               <td>${item.viewcount}</td>
                               <td>${item.writedate}</td>
                               
                             </tr>
                              
                           </c:forEach>
                        </c:otherwise>
                     </c:choose>
                     </tbody>
                     
                  <c:choose>
                           <c:when test="${sessionScope.loginid != null}">
                        
                           <tfoot >
                           
                                <tr>
                                 <td colspan="6" class="text-center mt-5">${result1}</td>
                                  <td colspan="6" class="text-light"><a class="btn text-center  btn btn-light"
                        href="communitywrite.jsp" target="_blank"><i class="fa fa-fw fa-pencil fa-2x text-info"></i></a>
                     </td>
                                </tr>
                              </tfoot>
                           </c:when>
                           <c:otherwise>
                           <br>
                           <tr>
                                 <td colspan="6" class="text-center mt-5">${result1}</td>
                            <tr>     
                           </c:otherwise>
                        </c:choose>
                   </table>
                 </div>
               </div>

             
                  
               </div>
              </div>  
               
         <br>   

    
  
   <div id="footer">

      <div class="text-white ">
         <div class="container">
            <div class="row">
               <div class="p-4 col-md-3">
                  <h2 class="mb-4 text-white">Auctino GO!</h2>
                  <p class="text-white">A company for whatever you may need,
                     from website prototyping to publishing</p>
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
                     <a href="tel:+246 - 542 550 5462" class="text-white"> <i
                        class="fa d-inline mr-3 text-secondary fa-phone"></i>+246 - 542
                        550 5462
                     </a>
                  </p>
                  <p>
                     <a href="mailto:info@pingendo.com" class="text-white"> <i
                        class="fa d-inline mr-3 text-secondary fa-envelope-o"></i>info@Auction
                        Go.com
                     </a>
                  </p>
                  <p>
                     <a href="https://goo.gl/maps/AUq7b9W7yYJ2" class="text-white"
                        target="_blank"> <i
                        class="fa d-inline mr-3 fa-map-marker text-secondary"></i>365
                        Park Street, NY
                     </a>
                  </p>
               </div>
               <div class="p-4 col-md-3">
                  <h2 class="mb-4 text-light">Subscribe</h2>
                  <form>
                     <fieldset class="form-group text-white">
                        <label for="exampleInputEmail1">Get our newsletter</label> <input
                           type="email" class="form-control" placeholder="Enter email">
                     </fieldset>
                     <button type="submit" class="btn btn-outline-secondary">Submit</button>
                  </form>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12 mt-3">
                  <p class="text-center text-white">© Copyright 2017 Pingendo -
                     All rights reserved.</p>
               </div>
            </div>
         </div>
      </div>


   </div>
    

</body>
</html>