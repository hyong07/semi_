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
<!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script> -->
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
/*        position: fixed; */
       width: 100%;
       height: 40px;
       font-size: 20px;   
       margin: 0px auto;   
       opacity: 0.9;
   }
   
   #allwrapper{
/*       opacity: 0.8; */
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
        
   #centernavbar li.nav-item {
       background:#FFF8DC; 
   } 
       
   #menubtn{
      background:#FFF8DC; 
      box-shadow: 0;
      margin: 0 20px;
      outline: none;
  
   }
   #centerwrapper{
      height:auto;
/*       height:auto; */
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

   #img_div {
   float:left;
   display : inline-block; 
   border: 1px solid black ;
   width : 40%   ;
   height : 40% ;
         
   }             
     
   .col-lg-8 {
   border: 0.1px solid lightgray;
   margin: 3% 0;
   padding-top:0;
   }   
   
   .main {
   display:inline-block;
   }
     
   #main_text {
   margin-left: 1%;
   float:left;}

</style>

<script>



</script>
</head>
<body>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   <div id="topnavicontainer">
      <nav class="navbar navbar-expand-md navbar-dark bg-secondary" id="topnavbar" >
           <div id="logocontainer">
            <a class="navbar-brand" href="#">Auction GO!</a>  
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
           <a class="btn navbar-btn ml-2 btn-secondary text-white">
           <i class="fa d-inline fa-lg fa-user-circle-o"></i> My Page</a> 
            <span class="navbar-toggler-icon" ></span>
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
                         <button class="btn btn-secondary" type="button">Search</button>
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
               </a>
             </li>  
            <li class="nav-item">
               <a class="nav-link  text-secondary" id="menubtn" href="#">
               <i class="fa d-inline fa-lg fa-bookmark-o"></i> category</a>
            </li> 
                <li class="nav-item">
                <a class="nav-link  text-secondary" id="menubtn" href="CommunityController.do">
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
             
           
                <li class="nav-item">
               <a class="nav-link  text-secondary" id="menubtn" href="#">
               </a>
             </li>   
             
                <li class="nav-item">
               <a class="nav-link  text-secondary" id="menubtn" href="#" >
                상품등록</a> 
             </li>   
          
                <li class="nav-item">
               <a class="nav-link  text-secondary" id="menubtn" href="#">
                커뮤니티</a>
             </li> 
              
                <li class="nav-item">
               <a class="nav-link  text-secondary" id="menubtn" href="#">
               </a>
             </li> 
             
              
         </nav>
      </div>
   
   </div>   
   
   <div id="centerwrapper">
      
      <div id="content">
       <div class="container">
    <div class="row">
    <div id=wrapper>
      <!-- Post Content Column -->
      <div class="col-lg-8">
        <!-- Title -->
        <h1 class="mt-4">${bdto.title}</h1>
        <!-- Author -->
        <p class="lead"> by
          <a href="#">${bdto.seller_id}</a>
        </p>
        <hr>
        <!-- Date/Time -->
        <p>Posted on ${bdto.write_date}</p>
        <hr>       
        <!-- Preview Image -->
        <div .main> 
        <div id='img_div'> <img class="img-fluid rounded"  alt="" id=product_img src='${mainfile}'>
     </div>
        <div class="col-md-7 order-1 order-md-2 p-2" id="main_text">
                                    <h3 class="text-primary">
                                       <a href="">${pdto.p_name}</a>
                                    </h3>
                                    <i>${endhour} left (${sysdate})&nbsp;</i>
                                    <div>
                                       <br>
                                       <row>
                                       <div class="col-md-11 ">
                                       
                                     <form action='bidsubmit.bid' method="post">
                                          <table class="table">
                                          
                                              <c:choose>
                                                                <c:when test="${not empty currentprice}"> 
                                                    <thead>
                                                <tr>
                                                <td>start : </td>
                                                <td>${pdto.sell_price}</td>
                                                   
                                                </tr>
                              
                                             </thead>
                                             <tbody> 
                                                <tr>     
                                                <td>current : </td>
                                                 <td>${currentprice}
                                                 <img src="saram.png" width="18px" height="18px"> <i>  ${bdto.bidcnt} bid&nbsp;</i>
                                                 </td>
                                                </tr>
                                                    <tr>
                                                   <td> <input name = 'bidacount' id="bidacount" type="number" placeholder='${currentprice}' min='${currentprice}'  >
                                                   </td> 
                                                   <td class="text-right"><button>입찰신청</button></td>
                                                </tr>
                                                       </c:when>
                                              
                                              
                                             <c:otherwise>
                                             <thead>
                                                <tr>
                                                <td>start : </td>
                                                <td>${pdto.sell_price}</td>
                                            </tr>
                                          </thead>
                                             <tbody>
                                                <tr>       
                                                <td>current : </td>
                                                 <td>${pdto.sell_price}
                                                 <img src="saram.png" width="18px" height="18px"> <i>  ${bdto.bidcnt} bid&nbsp;</i>
                                                    
                                                 </td>
                                                </tr>
                                                    <tr>
                                                   <td> <input id="bidacount" type="number" placeholder='${pdto.sell_price}' min='${pdto.sell_price}' step='${bdto.bidunit}' >
                                                   </td> 
                                                   <td class="text-right"><button>입찰신청</button></td>
                                                </tr>
                                                </c:otherwise>
                                  
                                                       </c:choose>
                                            
                                                <tr>
                                                   <td></td>
                                                   <td></td>
                                                </tr>
                                             
                                             
                                            
                                             </tbody>
                                          </table>
                                          </form>
                                    
                                       </div>
                                       </row>
                                    </div>
                                 </div></div>
                                 <div id=files>
                                    <c:forEach var="item" items="${path}">
                                  <img class="img-fluid rounded"  alt="" id=product_img src='${item}'><br><br>
                                  </c:forEach>
                                 </div>
           <hr>
            <p class="lead">${bdto.contents}</p> <hr>
       
      
        </div>

        <div class="card my-4">
          <h5 class="card-header">Leave a Comment:</h5>
          <div class="card-body">
            <form class="text-right" action='comment.co?seq=${bdto.board_seq}&sell_type=${bdto.sell_type}' method=post>
              <div class="form-group"> 
                <textarea class="form-control" rows="3" style="resize:none" name=contents></textarea>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>
        <!-- Single Comment -->
        
        
        
      <div class="media mb-4 text-center">
    <div class="text-center py-0">
      <img src="사람.png" height="20" width="20" class="my-3"> </div>
    <div class="media-body mx-2 text-left px-2">
      <div id=cotop><h5 class="mt-0 text-left p-0" >Commenter</h5>
                날짜
      </div>
 Comment contents Comment contentsComment contentsComment contentsComment contentsComment contentsComment contents</div>
  </div>
  
  
  
  
        <!-- Comment with nested comments -->
<!--         <div class="media mb-4"> -->
<!--           <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt=""> -->
<!--           <div class="media-body"> -->
<!--             <h5 class="mt-0">Commenter Name</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia -->
<!--             congue felis in faucibus. -->
<!--             <div class="media mt-4"> -->
<!--               <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt=""> -->
<!--               <div class="media-body"> -->
<!--                 <h5 class="mt-0">Commenter Name</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec -->
<!--                 lacinia congue felis in faucibus. </div> -->
<!--             </div> -->
<!--             <div class="media mt-4"> -->
<!--               <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt=""> -->
<!--               <div class="media-body"> -->
<!--                 <h5 class="mt-0">Commenter Name</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec -->
<!--                 lacinia congue felis in faucibus. </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
        </div>
      </div>
      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">
        <!-- Search Widget -->
        <div class="card my-4">
          <h5 class="card-header">Search</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
            </div>
          </div>
        </div>
        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">Categories</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">Web Design</a>
                  </li>
                  <li>
                    <a href="#">HTML</a>
                  </li>
                  <li>
                    <a href="#">Freebies</a>
                  </li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">JavaScript</a>
                  </li>
                  <li>
                    <a href="#">CSS</a>
                  </li>
                  <li>
                    <a href="#">Tutorials</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">Side Widget</h5>
          <div class="card-body"> You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers! </div>
        </div>
      </div>
    </div>
      </div>
         
   </div>
   
   
   <div id="bottomwrapper" class="bg-secondary">
      
      <div id="footer">
      
<div class="text-white bg-secondary" >
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