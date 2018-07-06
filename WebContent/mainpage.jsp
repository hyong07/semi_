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
	 
	   body{
	       background-color: rgba(0, 0, 0, 0.03);
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
	      border: 0px solid #7B68EE;
	      outline: none;
	   }
	   
	   #centernavbar li.nav-item {
       background:#FFF8DC; 
       } 
	   
	    #allwrapper{
	     width:100%;
         height: auto;
         margin: 0px auto; 
        }
	
	   #centerwrapper{
	     height:100%;  
	     width: 70%;
	     margin: 0px auto;  
	   }
	   .carousel-inner {
   		  width: 90%;
   		  margin-left: 80px;
   		}

	   .carousel-control-prev-icon {
   		  background-image: url("prev.png");
   		  width: 40px;
   		  height: 40px;
   		  margin-top: 350px;
   		 }

	   .carousel-control-next-icon {
   		  background-image: url("next.png");
   		  width: 40px;
   		  height: 40px;
   		  margin-top: 350px;
		 }

	   .card-group>.card+.card {
   		  border-left: 1px solid rgba(0, 0, 0, 0.125);
		 }

	   #test>li>a { 
   		  background-color:white; 
   		  color:black;
   		} 

	   #test>li>a:hover{
   		  border: 1px solid rgba(0, 0, 0, 0.125);
   		  background-color:rgba(0, 0, 0, 0.125);
   		  color:white;
   		  cusor:pointer;
		 }

	   #carousel{
   		  width:99%;
   		}

	   #footer{
	    background:#7B68EE; 
	    width:100%;
	    }
	   
	</style>
	
<!-- 	<script> -->
<!--  	$(document).ready(function() { -->
<!--  		location.href="main.bo"; -->
<!--  	}) -->
<!-- 	</script> -->
	
		<!-- 카카오 로그아웃  -->
		<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
			<script>
			function kakaoLogout() {
			Kakao.init('c75f8598dbbf710a4383c8032f913119');
			Kakao.Auth.logout();
			location.href = "logout.mem";
		   }
		   </script>
		 
		 <!-- 메인 센터 사진 -->
		<script>
			$(document).ready(function(){
   				$('.carousel').carousel({
        			interval: 3500
     	      })
  			 	function styleChange(){
      				$("div[name=test]").attr("style", "border:3px solid red");
      				$("div[name=test2]").attr("style", "border:3px solid blue");
      				$("#deadlinetext").attr("style", "color:red");
   			     }
   
   				function styleChange2(){
      				 $("div[name=test]").attr("style", "border:3px solid grey");
    				 $("div[name=test2]").attr("style", "border:3px solid grey");
     			     $("#deadlinetext").attr("style", "color:grey");
   			     	}
  				 	setInterval(styleChange,100);
   				 	setInterval(styleChange2,200);
                 })
	   	 </script>

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
					</a>
				 </li>  
				<li class="nav-item">
					<a class="nav-link  text-secondary" id="menubtn" href="board.bo?ca1=패션">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> 패션</a>
				</li> 
					 <li class="nav-item">
				    <a class="nav-link  text-secondary" id="menubtn" href="board.bo?ca1=전자제품">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> 전자제품</a>
				</li> 
					 <li class="nav-item">
					<a class="nav-link  text-secondary" id="menubtn" href="board.bo?ca1=리빙">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> 리빙</a>
				</li> 
					 <li class="nav-item">
					<a class="nav-link  text-secondary" id="menubtn" href="board.bo?ca1=문화">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> 문화</a>
				</li> 
					 <li class="nav-item">
					<a class="nav-link  text-secondary" id="menubtn" href="board.bo?ca1=뷰티">
					<i class="fa d-inline fa-lg fa-bookmark-o"></i> 뷰티</a>
				 </li> 
				 
			   
					 <li class="nav-item">
					<a class="nav-link  text-secondary" id="menubtn" href="#">
					</a>
				 </li>   
			    
					 <li class="nav-item">
					<a class="nav-link  text-secondary" id="menubtn" href="getboardseq.bo" >
					 상품등록</a> 
				 </li>   
			 
					 <li class="nav-item">
					<a class="nav-link  text-secondary" id="menubtn" href="CommunityMain.do">
					 커뮤니티</a>
				 </li> 
				  
					 <li class="nav-item">
					<a class="nav-link  text-secondary" id="menubtn" href="#">
					</a>
				 </li> 
			    
				  
               <!-- 요기까지 -->
                
         </nav>
      </div>
   
   </div>   

  <!--         네비바 헤더   (위에코드)           -->

      <div id="allwrapper" >
           <div id="centerwrapper">
                   <div class="card text-center mb-4" >
                  <div class="row">
                     <div class="col-2 ">
                        <ul class="nav flex-column" id="test">
                           <li class="nav-item"><a href="" class="nav-link" data-toggle="pill" data-target="#carouselExampleControls" data-slide-to="0">여름항공권 10만원대</a></li>
                           <li class="nav-item"><a href="" class="nav-link" data-toggle="pill" data-target="#carouselExampleControls" data-slide-to="1">피자헛 20%적립</a></li>
                           <li class="nav-item"><a href="" class="nav-link" data-toggle="pill" data-target="#carouselExampleControls" data-slide-to="2">미세먼지 대비 공기청정기</a></li>
                           <li class="nav-item"><a href="" class="nav-link" data-toggle="pill" data-target="#carouselExampleControls" data-slide-to="3">한여름 건강 간식</a></li>
                           <li class="nav-item"><a href="" class="nav-link" data-toggle="pill" data-target="#carouselExampleControls" data-slide-to="4">웅진플레이도시 워터파크 골드시즌</a></li>
                           <li class="nav-item"><a href="" class="nav-link" data-toggle="pill" data-target="#carouselExampleControls" data-slide-to="5">hp잉크 토너 구매시 상품권</a></li>
                        </ul>
                     </div>
                     <div class="col-10 px-0">
                        <div id="carouselExampleControls" class="carousel slide"
                           data-ride="carousel">
                           <ol class="carousel-indicators">
                               <li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
                               <li data-target="#carouselExampleControls" data-slide-to="1"></li>
                               <li data-target="#carouselExampleControls" data-slide-to="2"></li>
                               <li data-target="#carouselExampleControls" data-slide-to="3"></li>
                               <li data-target="#carouselExampleControls" data-slide-to="4"></li>
                               <li data-target="#carouselExampleControls" data-slide-to="5"></li>
                           </ol>
                           <div class="carousel-inner mx-0"  id="carousel">
                              <div class="carousel-item active">
                                 <img class="d-block w-100" src="imgFile/메인1.jpg">
                              </div>
                              <div class="carousel-item">
                                 <img class="d-block w-100" src="imgFile/메인2.jpg">
                              </div>
                              <div class="carousel-item">
                                 <img class="d-block w-100" src="imgFile/메인3.jpg">
                              </div>
                              <div class="carousel-item">
                                 <img class="d-block w-100" src="imgFile/메인4.jpg">
                              </div>
                              <div class="carousel-item">
                                 <img class="d-block w-100" src="imgFile/메인5.jpg">
                              </div>
                              <div class="carousel-item">
                                 <img class="d-block w-100" src="imgFile/메인6.jpg">
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>

         </div>
         <div class="card text-center mb-4" id="bestitem">
            <div class="card-body">
               <h3>BEST ITEM</h3>
               <div id="carouselExampleControl" class="carousel slide"
                  data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <div class="card-group mb-3">
                           <div class="card mr-3" cursor:pointer;="">
                              <img class="card-img-top" src="note.jpg" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xBC30;&#xD2B8;&#xB9E8;&#xBAA8;&#xC790;</h5>
                              </div>
                           </div>
                           <div class="card mr-3" id="card">
                              <img class="card-img-top" src="note.jpg" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xD479;&#xC2E0; &#xC1FC;&#xD30C;</h5>
                              </div>
                           </div>
                           <div class="card mr-3" id="card">
                              <img class="card-img-top" src="note.jpg"
                                 alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xB178;&#xD2B8;&#xBD81;</h5>
                              </div>
                           </div>
                           <div class="card" id="card">
                              <img class="card-img-top" src="note.jpg"
                                 alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xB178;&#xD2B8;&#xBD81;</h5>
                              </div>
                           </div>
                        </div>
                        <div class="card-group ">
                           <div class="card mr-3" cursor:pointer;="">
                              <img class="card-img-top" src="note.jpg" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xBC30;&#xD2B8;&#xB9E8;&#xBAA8;&#xC790;</h5>
                              </div>
                           </div>
                           <div class="card mr-3" id="card">
                              <img class="card-img-top" src="note.jpg" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xD479;&#xC2E0; &#xC1FC;&#xD30C;</h5>
                              </div>
                           </div>
                           <div class="card mr-3" id="card">
                              <img class="card-img-top" src="note.jpg"
                                 alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xB178;&#xD2B8;&#xBD81;</h5>
                              </div>
                           </div>
                           <div class="card" id="card">
                              <img class="card-img-top" src="note.jpg"
                                 alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xB178;&#xD2B8;&#xBD81;</h5>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="card-group ">
                           <div class="card mr-3" cursor:pointer;="">
                              <img class="card-img-top" src="note.jpg" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xBC30;&#xD2B8;&#xB9E8;&#xBAA8;&#xC790;</h5>
                              </div>
                           </div>
                           <div class="card mr-3" id="card">
                              <img class="card-img-top" src="note.jpg" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xD479;&#xC2E0; &#xC1FC;&#xD30C;</h5>
                              </div>
                           </div>
                           <div class="card mr-3" id="card">
                              <img class="card-img-top" src="note.jpg"
                                 alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xB178;&#xD2B8;&#xBD81;</h5>
                              </div>
                           </div>
                           <div class="card" id="card">
                              <img class="card-img-top" src="note.jpg"
                                 alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xB178;&#xD2B8;&#xBD81;</h5>
                              </div>
                           </div>
                        </div>
                        <div class="card-group ">
                           <div class="card mr-3" cursor:pointer;="">
                              <img class="card-img-top" src="note.jpg" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xBC30;&#xD2B8;&#xB9E8;&#xBAA8;&#xC790;</h5>
                              </div>
                           </div>
                           <div class="card mr-3" id="card">
                              <img class="card-img-top" src="note.jpg" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xD479;&#xC2E0; &#xC1FC;&#xD30C;</h5>
                              </div>
                           </div>
                           <div class="card mr-3" id="card">
                              <img class="card-img-top" src="note.jpg"
                                 alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xB178;&#xD2B8;&#xBD81;</h5>
                              </div>
                           </div>
                           <div class="card" id="card">
                              <img class="card-img-top" src="note.jpg"
                                 alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">&#xB178;&#xD2B8;&#xBD81;</h5>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <span class="carousel-control-prev-icon carousel-control-prev"
                     href="#carouselExampleControl" role="button" data-slide="prev"
                     aria-hidden="true"></span> <span
                     class="carousel-control-next-icon carousel-control-next"
                     aria-hidden="true" href="#carouselExampleControl" role="button"
                     data-slide="next"></span>
               </div>
            </div>
         </div>

         <div class="card text-center mb-4" id="bestitem">
        
         
            <div class="card-body">
               <h3 id="deadlinetext">Auction 마감 임박</h3>
               <div class="card-group">
               <c:forEach var="item" items="${mainp_name}" varStatus="status">
                  <div class="card mr-3" style="width: 18rem;" name="test">
                     <img class="card-img-top" src="note.jpg" alt="Card image cap">
                     <div class="card-body">
                        <h5 class="card-title">${item}</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : ${maincurrent[status.index]} WON</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
<!--                   <div class="card mr-3" style="width: 18rem;" name="test2"> -->
<!--                      <img class="card-img-top" src="note.jpg" alt="Card image cap"> -->
<!--                      <div class="card-body"> -->
<!--                         <h5 class="card-title">LG 그램 14인치</h5> -->
<!--                      </div> -->
<!--                      <ul class="list-group list-group-flush"> -->
<!--                         <li class="list-group-item">현재 입찰가 : 1,200,000</li> -->
<!--                         <li class="list-group-item">마감 : D-1</li> -->
<!--                      </ul> -->
<!--                      <div class="card-body"> -->
<!--                         <a href="#" class="card-link">입찰하기</a> -->
<!--                      </div> -->
<!--                   </div> -->
<!--                   <div class="card mr-3" style="width: 18rem;" name="test"> -->
<!--                      <img class="card-img-top" src="note.jpg" alt="Card image cap"> -->
<!--                      <div class="card-body"> -->
<!--                         <h5 class="card-title">LG 그램 14인치</h5> -->
<!--                      </div> -->
<!--                      <ul class="list-group list-group-flush"> -->
<!--                         <li class="list-group-item">현재 입찰가 : 1,200,000</li> -->
<!--                         <li class="list-group-item">마감 : D-1</li> -->
<!--                      </ul> -->
<!--                      <div class="card-body"> -->
<!--                         <a href="#" class="card-link">입찰하기</a> -->
<!--                      </div> -->
<!--                   </div> -->
<!--                   <div class="card mr-3" style="width: 18rem;" name="test2"> -->
<!--                      <img class="card-img-top" src="note.jpg" alt="Card image cap"> -->
<!--                      <div class="card-body"> -->
<!--                         <h5 class="card-title">LG 그램 14인치</h5> -->
<!--                      </div> -->
<!--                      <ul class="list-group list-group-flush"> -->
<!--                         <li class="list-group-item">현재 입찰가 : 1,200,000</li> -->
<!--                         <li class="list-group-item">마감 : D-1</li> -->
<!--                      </ul> -->
<!--                      <div class="card-body"> -->
<!--                         <a href="#" class="card-link">입찰하기</a> -->
<!--                      </div> -->
<!--                   </div> -->
<!--                   <div class="card" style="width: 18rem;" name="test"> -->
<!--                      <img class="card-img-top" src="note.jpg" alt="Card image cap"> -->
<!--                      <div class="card-body"> -->
<!--                         <h5 class="card-title">LG 그램 14인치e</h5> -->
<!--                      </div> -->
<!--                      <ul class="list-group list-group-flush"> -->
<!--                         <li class="list-group-item">현재 입찰가 : 1,200,000</li> -->
<!--                         <li class="list-group-item">마감 : D-1</li> -->
<!--                      </ul> -->
<!--                      <div class="card-body"> -->
<!--                         <a href="#" class="card-link">입찰하기</a> -->
<!--                      </div> -->
<!--                   </div> -->
 </c:forEach>
               </div>
            </div>
           
         </div>
         
         <div class="card text-center mb-4" id="bestitem">
            <div class="card-body">
               <h3>Best 게시판 글</h3>
               <div class="card-group mb-3">
                  <div class="card mr-3" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
                  <div class="card mr-3" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
                  <div class="card mr-3" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
                  <div class="card mr-3" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
                  <div class="card" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치e</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
               </div>
               <div class="card-group">
                  <div class="card mr-3" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
                  <div class="card mr-3" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
                  <div class="card mr-3" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
                  <div class="card mr-3" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
                  <div class="card" style="width: 18rem;">
                     <div class="card-body">
                        <h5 class="card-title">LG 그램 14인치e</h5>
                     </div>
                     <ul class="list-group list-group-flush">
                        <li class="list-group-item">현재 입찰가 : 1,200,000</li>
                        <li class="list-group-item">마감 : D-1</li>
                     </ul>
                     <div class="card-body">
                        <a href="#" class="card-link">입찰하기</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>

      </div>
      <br>

      <div id="bottomwrapper" class="bg-secondary">
                  
            </div>
      </div>

  <!--      몸통               -->

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
</body>
</html>
