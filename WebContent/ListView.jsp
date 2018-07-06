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
<script
   src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
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
   /*        position: fixed; */
   width: 100%;
   height: 40px;
   font-size: 20px;
   margin: 0px auto;
   opacity: 0.9;
}

#allwrapper {
   /*       opacity: 0.8; */
   width: 100%;
   height: 100%;
   margin: 0px auto;
}

#headerwrapper {
   height: 21%;
   width: 100%;
}

#header {
   height: 75%;
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
   width: 100%;
   height: 100%;
}

#headerright {
   float: left;
   height: 100%;
   width: 20%;
}

#centernavbar {
   height: 25%;
   width: 100%;
}

#menubtn {
   background: #FFF8DC;
   box-shadow: 0;
   border: 2px solid #7B68EE;
   outline: none;
}

#centerwrapper {
   border: 2px solid red;
   height: auto;
   width: 80%;
   padding-top: 0;
   margin: 0px auto;
}

#content {
   height: 100%;
   width: 100%;
}

#bottomwrapper {
   height: 15%;
   width: 100%;
}

#footer {
   height: 100%;
   width: 100%;
}

/* 광고  */
.
ing {
   border: 1px solid black;
   position: fixed;
   right: 50%;
   top: auto;
   margin-right: -720px;
   text-align: center;
   width: 120px;
}

.floating {
   border: 1px solid black;
   position: fixed;
   right: 50%;
   top: auto;
   margin-right: -720px;
   text-align: center;
   width: 120px;
}
</style>



<script>

$(document).ready(function(){
	console.log("qq");
})

</script>
</head>
<body>
   <div id="topnavicontainer">
      <nav class="navbar navbar-expand-md navbar-dark bg-secondary"
         id="topnavbar">
      <div id="logocontainer">
         <a class="navbar-brand" href="#">Auction GO!</a>
      </div>

      <div class="collapse navbar-collapse text-center justify-content-end"
         id="menucontainer">
         <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="login.jsp">
                  <i class="fa fa-user fa-fw"></i> Login
            </a></li>
            <li class="nav-item"><a class="nav-link" href="#"> <i
                  class="fa fa-user fa-fw"></i> Sing in
            </a></li>
         </ul>
         <a class="btn navbar-btn ml-2 btn-secondary text-white"> <i
            class="fa d-inline fa-lg fa-user-circle-o"></i> My Page
         </a>
      </div>
      </nav>
   </div>

   <div id="allwrapper">

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

      <div id="centerwrapper">

         <div id="content">
            <div class="py-5">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="row">
                           <div class="w-25 h-100 col-md-4 col-lg-2">
                              <div id=category_board>
                                 <div>
                                    <h1>Category</h1>
                                 </div>
                                 <ul id="menu">
                                    <li class="active"><a href="#"> 패션 <span
                                          class="fa arrow"></span></a>
                                       <ul>
                                          <li><a href="board.bo?ca1=패션&ca2=남성의류">남성의류</a></li>
                                          <li><a href="board.bo?ca1=패션&ca2=여성의류">여성의류</a></li>
                                          <li><a href="board.bo?ca1=패션&ca2=아동의류">아동의류</a></li>
                                          <li><a href="board.bo?ca1=패션&ca2=잡화">잡화</a></li>
                                       </ul></li>
                                    <li><a href="#">전자제품 <span class="glyphicon arrow"></span></a>
                                       <ul>
                                          <li><a href="board.bo?ca1=전자제품&ca2=가전">가전</a></li>
                                          <li><a href="board.bo?ca1=전자제품&ca2=노트북">노트북 </a></li>
     
                                          <li><a href="board.bo?ca1=전자제품&ca2=컴퓨터">컴퓨터</a></li>
                                          <li><a href="board.bo?ca1=전자제품&ca2=컴퓨터">기타</a></li>
                                       </ul></li>
                                    <li><a href="#">리빙 <span class="glyphicon arrow"></span></a>
                                       <ul>
                                          <li><a href="board.bo?ca1=리빙&ca2=주방">주방</a></li>
                                          <li><a href="board.bo?ca1=리빙&ca2=생활">생활</a></li>
                                          <li><a href="board.bo?ca1=리빙&ca2=욕실">욕실</a></li>
                                          <li><a href="board.bo?ca1=리빙&ca2=기타">기타</a></li>
                                       </ul></li>
                                    <li><a href="#">문화 <span class="glyphicon arrow"></span></a>
                                       <ul>
                                          <li><a href="board.bo?ca1=문화&ca2=스포츠">스포츠</a></li>
                                          <li><a href="board.bo?ca1=문화&ca2=공연,전시">공연,전시 </a></li>

                                          <li><a href="board.bo?ca1=문화&ca2=도서">도서</a></li>
                                          <li><a href="board.bo?ca1=문화&ca2=기타">기타</a></li>
                                       </ul></li>
                                    <li><a href="#">뷰티 <span class="glyphicon arrow"></span></a>
                                       <ul>
                                          <li><a href="board.bo?ca1=뷰티&ca2=화장품">화장품</a></li>
                                          <li><a href="board.bo?ca1=뷰티&ca2=향수">향수</a></li>

                                          <li><a href="board.bo?ca1=뷰티&ca2=기타">기타</a></li>

                                       </ul></li>

                                 </ul>


                              </div>
                           </div>
                           <div class="col-md-4 w-75 col-lg-9">
                              <div class="row mx-1 py-2">
                                 <div class="btn-group">
                                    <a href="board.bo?ca1=${ca1}" class="btn btn-secondary">All View</a> <a
                                       href="listview.bo?ca1=${ca1}" class="btn btn-secondary">Auction</a> <a
                                       href="buyitnow.bo?ca1=${ca1}" class="btn btn-secondary">Buy It Now</a>
                                 </div>
                                 <div style="width: 400px"></div>
                                 sort <select class="mx-2 text-muted">
                                    <option value="최신순">최신순</option>
                                    <option value="마감순">마감순</option>
                                    <option value="조회순">조회순</option>
                                    <option value="인기순">인기순</option>
                                 </select>
                              </div>
                              <div class="row px-4">251 result</div>
                              <div class="row px-4">.</div>
      
      
      

            
     <c:forEach var="item" items="${boardlist}" varStatus="status"> 

      
       <div class="row"> 



        <div class="col-md-5 order-2 order-md-1 p-2" >
          <img class="img-fluid d-block px-5 border" src="note.jpg"> </div>
        <div class="col-md-7 order-1 order-md-2 p-2">
          <h3 class="text-primary">
            <a href="">title: ${item.title}</a>
          </h3>
          <i>${item.write_date}&nbsp;</i>
          <div>
            <br>
            <row>
              <div class="col-md-11 ">
                <table class="table">
                  <thead>
                    <tr>
                      <td>price : ${pricelist[status.index]}</td>
                      <td>Id : ${item.seller_id}</td>
                       <td>SELL_type : ${item.sell_type}</td>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1,350,000 </td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>
                        <img src="saram.png" width="18px" height="18px">
                        <i>1 bid&nbsp;</i>
                        <br>
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

      <div id="bottomwrapper" class="bg-secondary">

         <div id="footer">

            <div class="text-white bg-secondary">
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
                              class="fa d-inline mr-3 text-secondary fa-phone"></i>+246 -
                              542 550 5462
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
                        <p class="text-center text-white">© Copyright 2017 Pingendo
                           - All rights reserved.</p>
                     </div>
                  </div>
               </div>
            </div>









         </div>

      </div>

   </div>


</body>
</html>