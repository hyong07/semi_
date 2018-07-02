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

body {
   
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
   width: 80%;
   margin: 0px auto;
}

#footer {
   background: #7B68EE;
   width: 100%;
}
</style>

<!-- 카카오 로그아웃  -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
         function kakaoLogout() {
         Kakao.init('c75f8598dbbf710a4383c8032f913119');
         Kakao.Auth.logout();
         location.href = "logout.mem";
         }
      </script>

</head>
<body>
   <% response.setCharacterEncoding("utf8"); %>

   <div id="topnavicontainer">
      <nav class="navbar navbar-expand-md navbar-dark bg-primary"
         id="topnavbar">
      <div id="logocontainer">
         <a class="navbar-brand" href="mainpage.jsp">Auction GO!</a>
      </div>

      <div class="collapse navbar-collapse text-center justify-content-end"
         id="menucontainer">
         <ul class="navbar-nav">
            <li class="nav-item"><c:choose>
                  <c:when test="${sessionScope.loginid != null}">
                     <a class="nav-link" href="javascript:kakaoLogout()"> <i
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

   <!--                  최상단 네이베기션    (위에코드)                -->

   <div id="headerwrapper">
      <div id="header">
         <div id="headerleft"></div>

         <div id="headercenter">
            <div class="py-5">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <form class="form-inline">
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
         <li class="nav-item"><a class="nav-link  text-secondary"
            id="menubtn" href="#"> <i
               class="fa d-inline fa-lg fa-bookmark-o"></i> category
         </a></li>
         <li class="nav-item"><a class="nav-link  text-secondary"
            id="menubtn" href="CommunityMain.do"> <i
               class="fa d-inline fa-lg fa-bookmark-o"></i> category
         </a></li>
         <li class="nav-item"><a class="nav-link  text-secondary"
            id="menubtn" href="#"> <i
               class="fa d-inline fa-lg fa-bookmark-o"></i> category
         </a></li>
         <li class="nav-item"><a class="nav-link  text-secondary"
            id="menubtn" href="#"> <i
               class="fa d-inline fa-lg fa-bookmark-o"></i> category
         </a></li>
         <li class="nav-item"><a class="nav-link  text-secondary"
            id="menubtn" href="#"> <i
               class="fa d-inline fa-lg fa-bookmark-o"></i> category
         </a></li>

         </nav>
      </div>

   </div>

   <!--         네비바 헤더   (위에코드)           -->

   <div id="allwrapper">

      <div id="centerwrapper">

         <div id="content">
            <div class="container">
               <div class="row">
                  <!-- Post Content Column -->
                  <div class="col-lg-8">
                     <!-- Title -->
                     <h1 class="mt-4">${bdto.title}</h1>
                     <!-- Author -->
                     <p class="lead">
                        by <a href="#">${bdto.seller_id}</a>
                     </p>
                     <hr>
                     <!-- Date/Time -->
                     <p>Posted on ${bdto.write_date}</p>
                     <hr>
                     <!-- Preview Image -->
                     <div .main>
                        <div id='img_div'>
                           <img class="img-fluid rounded"
                              src="http://placehold.it/900x300" alt="" id=product_img>
                        </div>
                        <div class="col-md-7 order-1 order-md-2 p-2" id="main_text">
                           <h3 class="text-primary">
                              <a href="">${pdto.p_name}</a>
                           </h3>
                           <i>9d 13h left (07/02, 4:34 AM)&nbsp;</i>
                           <div>
                              <br>
                              <row>
                              <div class="col-md-11 ">
                                 <table class="table">
                                    <thead>
                                       <tr>
                                          <td>상품명 :</td>
                                          <td>${pdto.sell_price}</td>

                                       </tr>
                                    </thead>
                                    <tbody>
                                       <tr>
                                          <td>상품 가격 :</td>
                                          <td><!-- db에 가져와서 사용 해야 함  --></td>
                                       </tr>
                                          <tr>
                                             <td><img src="saram.png" width="18px" height="18px">
                                                <i id="check">1</i>  <!-- 기본 수량 -->
                                                <a href="#" id="numUp">▲</a> 
                                                <a href="#" id="numDown">▼</a></td>
                                             <td class="text-right"><a class="btn btn-secondary"
                                                href="#">구매 신청 </a></td>
                                          </tr>
                                       <tr>
                                          <td></td>
                                          <td></td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </div>
                              </row>
                           </div>
                        </div>
                     </div>
                     
                     <script>
                                  $(function(){
                                     /* 수량 감소 코드 */
                                     $('#numDown').click(function(e){
                                        e.preventDefault();
                                        var stat = $('#check').text();
                                         var num = parseInt(stat,10);
                                        num--;
                                     if(num<=0){
                                        alert('더이상 줄일수 없습니다.');
                                        num =1;
                                      }
                                     $('#check').text(num);
                                      });
                                     
                                     /* 수량 증가 코드 */
                                     $('#numUp').click(function(e){
                                        e.preventDefault();
                                        var stat = $('#check').text();
                                        var num = parseInt(stat,10);
                                        num++;
                                     /* db에서 해당상품의 수량을 조회해서 변경해야 함  */
                                    if(num>5){
                                     alert('더이상 늘릴수 없습니다.');
                                      return;
                                     }
                                    $('#check').text(num);
                                        });
                                   });
                                </script>
                                
                     <hr>
                     <!-- Post Content -->
                     <p class="lead">${bdto.contents}</p>
                     <hr>
                     <!-- Comments Form -->
                     <div class="card my-4">
                        <h5 class="card-header">Leave a Comment:</h5>
                        <div class="card-body">
                           <form class="text-right"
                              action='comment.co?seq=${bdto.board_seq}' method=post>
                              <div class="form-group">
                                 <textarea class="form-control" rows="3" style="resize: none"
                                    name=contents></textarea>
                              </div>
                              <button type="submit" class="btn btn-primary">Submit</button>
                           </form>
                        </div>
                     </div>
                     <!-- Single Comment -->

                     <div class="media mb-4 text-center">
                        <div class="text-center py-0">
                           <img src="사람.png" height="20" width="20" class="my-3">
                        </div>
                        <div class="media-body mx-2 text-left px-2">
                           <div id=cotop>
                              <h5 class="mt-0 text-left p-0">Commenter</h5>
                              날짜
                           </div>
                           Comment contents Comment contentsComment contentsComment
                           contentsComment contentsComment contentsComment contents
                        </div>
                     </div>

                     <!-- Comment with nested comments -->
                     <div class="media mb-4">
                        <img class="d-flex mr-3 rounded-circle"
                           src="http://placehold.it/50x50" alt="">
                        <div class="media-body">
                           <h5 class="mt-0">Commenter Name</h5>
                           Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
                           scelerisque ante sollicitudin. Cras purus odio, vestibulum in
                           vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
                           nisi vulputate fringilla. Donec lacinia congue felis in
                           faucibus.
                           <div class="media mt-4">
                              <img class="d-flex mr-3 rounded-circle"
                                 src="http://placehold.it/50x50" alt="">
                              <div class="media-body">
                                 <h5 class="mt-0">Commenter Name</h5>
                                 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
                                 scelerisque ante sollicitudin. Cras purus odio, vestibulum in
                                 vulputate at, tempus viverra turpis. Fusce condimentum nunc
                                 ac nisi vulputate fringilla. Donec lacinia congue felis in
                                 faucibus.
                              </div>
                           </div>
                           <div class="media mt-4">
                              <img class="d-flex mr-3 rounded-circle"
                                 src="http://placehold.it/50x50" alt="">
                              <div class="media-body">
                                 <h5 class="mt-0">Commenter Name</h5>
                                 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
                                 scelerisque ante sollicitudin. Cras purus odio, vestibulum in
                                 vulputate at, tempus viverra turpis. Fusce condimentum nunc
                                 ac nisi vulputate fringilla. Donec lacinia congue felis in
                                 faucibus.
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- Sidebar Widgets Column -->
                  <div class="col-md-4">
                     <!-- Search Widget -->
                     <div class="card my-4">
                        <h5 class="card-header">Search</h5>
                        <div class="card-body">
                           <div class="input-group">
                              <input type="text" class="form-control"
                                 placeholder="Search for..."> <span
                                 class="input-group-btn">
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
                                    <li><a href="#">Web Design</a></li>
                                    <li><a href="#">HTML</a></li>
                                    <li><a href="#">Freebies</a></li>
                                 </ul>
                              </div>
                              <div class="col-lg-6">
                                 <ul class="list-unstyled mb-0">
                                    <li><a href="#">JavaScript</a></li>
                                    <li><a href="#">CSS</a></li>
                                    <li><a href="#">Tutorials</a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- Side Widget -->
                     <div class="card my-4">
                        <h5 class="card-header">Side Widget</h5>
                        <div class="card-body">You can put anything you want
                           inside of these side widgets. They are easy to use, and feature
                           the new Bootstrap 4 card containers!</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <div id="bottomwrapper" class="bg-secondary"></div>

   <!--      몸통               -->

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

   <!--      바닥             -->

</body>
</html>