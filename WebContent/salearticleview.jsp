<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

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
<script src="https://unpkg.com/ionicons@4.2.0/dist/ionicons.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

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

/* 여기까지 메인 */

#tfoot{
   background-color:rgba(0, 0, 0, 0.03);
}

</style>

<!-- 카카오 로그아웃  -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
$(document).ready(function(){
   $("#product").on('change', function (e) {
      var count = 0;
       var product_seq = $("option:selected", this).val();
      if($("#productlist tr").length){
         $("#productlist tr").each(function(i){
            var id = this.id;
            
            if(id == product_seq){
               alert("이미 존재하는 상품입니다.");
               count++;
               $("#product option:eq(0)").prop("selected",true);
               return;
            }         
          }); 
         
         if(count == 0){
            var product = $("option:selected",this).text();
             var product_name = product.split("-")[0];
             var product_price = product.split("-")[1].split("원")[0];
             $("#productlist").append("<tr id="+product_seq+"><td>"+ product_seq+ "<td>"+ product_name +"<td>"+ product_price+ "<td><button type='button' onclick='up(this);'>▲</button><i id='check'>1</i><button type='button' onclick='down(this);'>▼</button></td><td><ion-icon name='close' onclick='deleteLine(this);' style='cursor: pointer'></ion-icon></tr>");
         }         
      }
      else{
         var product = $("option:selected",this).text();
          var product_name = product.split("-")[0];
          var product_price = product.split("-")[1].split("원")[0];
          $("#productlist").append("<tr id="+product_seq+"><td>"+ product_seq+ "<td>"+ product_name +"<td>"+ product_price+ "<td><button type='button' onclick='up(this);'>▲</button><i id='check'>1</i><button type='button' onclick='down(this);'>▼</button></td><td><ion-icon name='close' onclick='deleteLine(this);' style='cursor: pointer'></ion-icon></tr>");
      }
      
      var currentPrice = $("#totalPrice").text();
      $.ajax({
         url:"totalPrice.buy",
         type:"get",
         data:{product_seq:product_seq,currentPrice:currentPrice},
         success:function(rep){
            console.log(rep);
            $("#totalPrice").text(rep);
         }
         
      })

   });
  
   $("#okButton").click(function(){
      var buyProduct = new Array();
       var productCount = new Array();
       var board_no = ${bdto.board_seq};
       var contact = $("#contact").val();
       $("#productlist tr").each(function(i){
            var id = this.id;
            buyProduct.push(id);
            console.log(buyProduct);   
       })
       
       $("#productlist tr i").each(function(i){
          productCount.push($(this).text());
       })
       
       jQuery.ajaxSettings.traditional = true;
       
      var check = confirm("구매 진행 하시겠습니까 ?");
      if(check==1){
         location.href = "buyComplete.buy?product_seq="+buyProduct+"&product_count="+productCount+"&board_no="+board_no+"&contact="+contact;   
      }      
   })
})



function buyStart(){
         var buyProduct = new Array();
         var productCount = new Array();
         var board_no = ${bdto.board_seq};
         
         $("#productlist tr").each(function(i){
              var id = this.id;
              buyProduct.push(id);
              console.log(buyProduct);
     
         })
         
         $("#productlist tr i").each(function(i){
            productCount.push($(this).text());
         })
         
         jQuery.ajaxSettings.traditional = true;

         $.ajax({
               url:"selectbuyproduct.buy",
               type:"get",
               data:{buyProduct:buyProduct,productCount:productCount,board_no:board_no},
               success:function(rep){         
                  for(var i=0; i<rep.length;i++){
                       $("#productCheckList").append("<tr><td>"+ rep[i].p_name +"<td>"+ rep[i].sell_price+ "<td>"+ productCount[i] +"</tr>");
                       $("#buyButton").attr("data-target","#myModal");
                  }
                 
               }
               
            })
           
      }
       
    
  function kakaoLogout() {
         Kakao.init('c75f8598dbbf710a4383c8032f913119');
         Kakao.Auth.logout();
         location.href = "logout.mem";
         }
         
  function down(e){
         var td = $(e).parent();
         var stat =$(td.find("#check")).text();
         var num = parseInt(stat,10);
         var product_seq = $(e).parent().parent().attr('id');
         num--;
      if(num<=0){
         alert('더이상 줄일수 없습니다.');
         num =1;
       }
      else{
         var current = $("#totalPrice").text();
         $.ajax({
            url:"totalMinus.buy",
            type:"get",
            data:{product_seq:product_seq,current:current},
            success:function(rep){
               console.log("플러스 버튼 됨");
               $("#totalPrice").text(rep);
            }
         }) 
      }
      $(td.find("#check")).text(num);
      
     
      
    }

  function up(e){
        var td = $(e).parent();
         var stat = $(td.find("#check")).text();
         var num = parseInt(stat,10);
         var product_seq = $(e).parent().parent().attr('id');
         $.ajax({
             url:"checkcount.bo",
             type:"get",
             data:{product_seq:product_seq},
             success:function(rep){ 
                var count = parseInt(rep.split("\"")[1],10);
               
                if(num>=count){
                    alert("수량초과로 더이상 늘릴수 없습니다.");
                 }else{
                    num++;
                   
                    var current = $("#totalPrice").text();
                     $.ajax({
                        url:"totalPlus.buy",
                        type:"get",
                        data:{product_seq:product_seq,current:current},
                        success:function(rep){
                           console.log("플러스 버튼 됨");
                           $("#totalPrice").text(rep);
                        }
                     })  
                 }
                
                $(td.find("#check")).text(num);
                
             }
          })
        
    }
  
  function deleteLine(e) {          
      var result = confirm("삭제하시겠습니까 ?");
      if (result == 1) {
         var tr = $(e).parent().parent();
         var stat =tr.find("#check").text();
         var num = parseInt(stat,10);
         console.log(num);
         var product_seq = $(e).parent().parent().attr('id');
         var current = $("#totalPrice").text();
         $.ajax({
            url:"productDelete.buy",
            type:"get",
            data:{product_seq:product_seq,num:num,current:current},
            success:function(rep){
               $("#totalPrice").text(rep);           
                console.log("삭제 완료");
            }
         })  
         tr.remove();
      }
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
                     <hr>
                     <!-- Author -->
                     <div class="row">
                        <div class="col-md-6">
                        <p class="lead">
                           by <a href="#">${bdto.seller_id}</a>
                        </p>
                        </div>
                     <!-- Date/Time -->
                        <div class="col-md-6">
                        <p>Posted on ${bdto.write_date}</p>
                        </div>
                     </div>
                     <hr>
                     <!-- Preview Image -->
                     <div .main class="row">
                        <div id='img_div' class="col-md-5">
                                    <img class="img-fluid rounded"
                              src="${mainfile}" alt="" id=product_img>
                        </div>
                        <div class="col-md-7" id="main_text">
                           <div>
                              <row>
                              <div class="col-md-11 ">
                                 <table class="table">
                                    <thead>
                                       <tr>
                                          <td>상품명 :</td>
                                          <td>${pdto.p_name}</td>   
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <tr>
                                          <td>상품 가격 :</td>
                                          <td>${pdto.sell_price }</td>
                                       </tr>
                                          <tr>
                                              <td colspan="2">
                                                 <select id="product">
                                                    <option>상품을 선택해주세요.</option>
                                                    <c:forEach var="item" items="${result}">
                                                    	<c:choose>
                                                    		<c:when test="${item.sell_count } == 0">
                                                    			<option value="${item.product_seq }" readonly>${item.p_name }-${item.sell_price }원    (수량 : ${item.sell_count })</option>
                                                    		</c:when>
                                                    		<c:otherwise>
                                                    			<option value="${item.product_seq }">${item.p_name }-${item.sell_price }원    (수량 : ${item.sell_count })</option>
                                                    		</c:otherwise>
                                                    	</c:choose>
                                                 </c:forEach>      
                                                 </select>
                                              </td>
                                          </tr>
                                    </tbody>
                                 </table>
                                 
                              </div>
                              </row>
                           </div>
                        </div>
                     </div>
                    
                    <div class="col-md-12">
                  <table class="table">
                     <thead id="tfoot">
                        <tr>
                           <th>제품번호</th>                              
                           <th>제품명</th>
                           <th>가격</th>
                           <th>수량</th>
                           <th>#</th>
                        </tr>
                     </thead>
                      <tbody id="productlist">
                     
                     </tbody>
                     <thead>
                         <th colspan="5" class="text-right" id="tfoot">총 구매 금액  : <span id="totalPrice"></span><button type="button" class="btn btn-secondary ml-4 mr-4" data-toggle="modal" id="buyButton"  onclick="buyStart()" value="구매 신청"></th>
                      </thead>
                   </table>
                   </div>
                                
                     <hr>
                     <!-- Post Content -->

                     <div id=files>
                        <c:forEach var="item" items="${path}">
                           <img class="img-fluid rounded"  alt="" id=product_img src='${item}'><br><br>
                        </c:forEach>
                     </div>
                 <hr>
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

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">구매확인</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" id="productModal">
           <table   class="table">
              <thead id="tfoot">
                 <th>제품명</th>
                 <th>가격</th>
                 <th>수량</th>
              </thead>
              <tbody id="productCheckList">
                 
              </tbody>
           </table>
           
           <p>입력하신 번호는 판매자에게 제공됩니다.(-제외하고 입력)</p>
           <input type="text" value="01033333333" id="contact">
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <input type="button" class="btn btn-secondary" id = "okButton" value="확인">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        </div>
        
      </div>
    </div>
  </div>

</body>
</html>