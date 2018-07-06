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

#link{
   text-decoration : none;
   color : black;
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
/*    margin: 0px auto; */   
    margin-left: 250px;     
    margin-right: 8px; 
 
}


#footer {
   background : #7B68EE;  
   width: 100%;
}
/* 광고  */
.floating {
   border: 1px solid black;
   position: fixed;
   right: 50%;
   top: auto;
   margin-right: -720px;
   text-align: center;
   width: 120px;
}

#title{
      margin-top: 5px; 
       margin-left: 70px; 
       margin-right: 70px; 
       display: block; 
       font-size: 1.10rem; 
       height: 45px; 
       overflow: hidden; 

}

/* ------------------------------------------------------------------------------------------- */
</style>

<script>

$(document).ready(function(){
   console.log("qq");
})

</script>
</head>
<body>
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
               <div class="py-5">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-12">
                           <form class="form-inline">
                              <div class="input-group" id="search">
                                 <input type="search" class="form-control"
                                    placeholder="search">
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






            <div id="headerright"></div>
         </div>



        

         <div id="centernavbar">
            <nav class="nav nav-pills nav-justified">
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
      

  <div id="allwrapper">
  
     <br>
     
    

  <div id="centerwrapper">

   

             
                  <div class="row">
                     <div class="col-md-12">
                        <div class="row">
                           <div class="w-25 h-100 col-md-4 col-lg-2">
                              <div id=category_board>
                                 <div>
                                       <h1 class=" text-primary text-center " >Category</h1>
                                 </div>
                                    <ul id="menu">

                                     
                                       <div class="py-5 ">
                                     <div class="container">
                                       <div class="row">
                                         <div class="col-md-12">
                                           <ul class="nav nav-pills flex-column">   
                                            <li class="nav-item bg-light">              
                                              <a href="" class="active nav-link" contenteditable="true" >
                                                 <i class="fa fa-black-tie"></i>&nbsp;&nbsp;패션</a>
                                             </li>
                                               <li class="nav-item">
                                               <a href="board.bo?ca1=패션&ca2=남성의류" class="nav-link">&nbsp;남성의류</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=패션&ca2=여성의류" class="nav-link">&nbsp;여성의류</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=패션&ca2=아동의류" class="nav-link">&nbsp;아동의류</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=패션&ca2=잡화" class="nav-link">&nbsp;잡화</a>
                                             </li>
                                           </ul>
                                           
                                           <ul class="nav nav-pills flex-column">
                                            <li class="nav-item bg-light">              
                                              <a href="" class="active nav-link" contenteditable="true" >
                                                 <i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;리빙</a>
                                             </li>                 
                                             <li class="nav-item" >
                                               <a class="nav-link" href="board.bo?ca1=리빙&ca2=주방">&nbsp;주방</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=리빙&ca2=생활" class="nav-link">&nbsp;생활</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=리빙&ca2=욕실" class="nav-link">&nbsp;욕실</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=리빙&ca2=기타" class="nav-link">&nbsp;기타</a>
                                             </li>
                                           </ul>
                                           
                                            <ul class="nav nav-pills flex-column">
                                            <li class="nav-item bg-light">              
                                              <a href="" class="active nav-link" contenteditable="true" >
                                                 <i class="fa fa-medium"></i>&nbsp;&nbsp;문화</a>
                                             </li>                 
                                             <li class="nav-item" >
                                               <a class="nav-link" href="board.bo?ca1=문화&ca2=스포츠">&nbsp;스포츠</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=문화&ca2=공연,전시" class="nav-link">&nbsp;공연,전시</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=문화&ca2=도서" class="nav-link">&nbsp;도서</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=문화&ca2=기타" class="nav-link">&nbsp;기타</a>
                                             </li>
                                           </ul>
                                           
                                            <ul class="nav nav-pills flex-column">
                                            <li class="nav-item bg-light">              
                                              <a href="" class="active nav-link" contenteditable="true" >
                                                 <i class="fa fa-shopping-bag "></i>&nbsp;&nbsp;뷰티</a>
                                             </li>                 
                                             <li class="nav-item" >
                                               <a class="nav-link" href="board.bo?ca1=뷰티&ca2=화장품">&nbsp;화장품</a>
                                             </li>
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=뷰티&ca2=향수" class="nav-link">&nbsp;향수</a>
                                            </li>                                        
                                             <li class="nav-item">
                                               <a href="board.bo?ca1=뷰티&ca2=기타" class="nav-link">&nbsp;기타</a>
                                             </li>
                                           </ul>
                                         </div>
                                       </div>
                                     </div>
                                   </div>
                                   
                                       

                                 </ul>


                           
                              </div>
                           </div>
                           <div class="col-md-4 w-75 col-lg-8">
                              <div class="row py-2">
                               <c:choose>
                              <c:when test="${ca2 ne null}">
                                 <div class="btn-group">
                                    <a href="board.bo?ca1=${ca1}&ca2=${ca2}" class="btn btn-secondary"><i class="fa fa-search "></i>&nbsp;&nbsp;All View</a> &nbsp;&nbsp;
                                    <a href="listview.bo?ca1=${ca1}&ca2=${ca2}" class="btn btn-secondary"><i class="fa fa-search "></i>&nbsp;&nbsp;Auction View</a> &nbsp;&nbsp;
                                    <a href="buyitnow.bo?ca1=${ca1}&ca2=${ca2}" class="btn btn-secondary"><i class="fa fa-search "></i>&nbsp;&nbsp;Second Hand View</a>
                                 </div>
                                 </c:when>
                                 <c:otherwise>
                                    <div class="btn-group">
                                    <a href="board.bo?ca1=${ca1}" class="btn btn-secondary"> <i class="fa fa-search "></i>&nbsp;&nbsp;All View</a> &nbsp;&nbsp;
                                    <a href="listview.bo?ca1=${ca1}" class="btn btn-secondary"><i class="fa fa-search "></i>&nbsp;&nbsp;Auction View</a> &nbsp;&nbsp;
                                    <a href="buyitnow.bo?ca1=${ca1}" class="btn btn-secondary"><i class="fa fa-search "></i>&nbsp;&nbsp;Second Hand View</a>
                                 </div>
                                 </c:otherwise>
                                 </c:choose>
                                 <div style="width: 400px"></div>

                           <div class="btn-group" >
                               <button class="btn btn-outline-secondary dropdown-toggle text-gray"  data-toggle="dropdown"> 정렬방식 </button>
                               <div class="dropdown-menu">
                                 <a class="dropdown-item" href="#">최신순</a>
                                 <div class="dropdown-divider"></div>
                                 <a class="dropdown-item" href="#">마감순</a>
                                 <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">조회순</a>
                                 <div class="dropdown-divider"></div>
                                 <a class="dropdown-item" href="#">인기순</a>
                               </div>
                            </div>
                              </div>
                              <div class="row px-8 mb-4">총251개의 게시물</div>
                     
      
      
      

            
     <c:forEach var="item" items="${boardlist}" varStatus="status"> 

      
       <div class="row"> 



        <div class="col-md-4 order-2 order-md-1 p-2" >
        
        <img class="card-img-top" src='${path[status.index]}'
                            alt="Card image cap"> <a href="ArticleCount.bo?seq=${item.board_seq}&type=${item.sell_type}&count=${item.viewcount}"
                            class="card-link text-left m-0 p-3 " id="link"><i class="fa fa-bookmark">&nbsp;&nbsp;${item.title}</i></a>
<%--           <img class="img-fluid d-block px-5 border" src='${path[status.index]}'> </div> --%>
<!--         <div class="col-md-6 order-1 order-md-2 p-2"> -->
<!--           <h5 class="text-primary"> -->
<!--           <i class="fa fa-bookmark">&nbsp;&nbsp; -->
<%--             <a href="saleView.bo?seq=${item.board_seq}&type=${item.sell_type}">${item.title}</a></i> --%>
          </h5>
          <i class="fa fa-calendar">&nbsp;${item.write_date}&nbsp;</i>
          <div>
            <br>
            <row>
              <div class="col-md-11 ">
                <table class="table">
                  <thead>
                    <tr>
                      
                      <td><i class="fa fa-user">&nbsp;&nbsp;${item.seller_id}</i></td>
                      
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><i class="fa fa-credit-card ">&nbsp;&nbsp;${pricelist[status.index]}</i></td>
                      <td><i class="fa fa-credit-card ">&nbsp;&nbsp;${pricelist[status.index]}</i></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>
                        <img src="saram.png" width="18px" height="18px">
                        <i>1 bid&nbsp;</i>
                      </td>
                      <td>
                        <img src="noon.png" width="20px" height="20px">
                        <i>31&nbsp;</i>
                      </td>
                      <td class="text-right">
                        <a class="btn btn-secondary" href="#">판매 중 </a>
                      </td>
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
        
        </c:forEach> 
        
              </div>
            </div>
           </div>
         </div>
      </div>


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