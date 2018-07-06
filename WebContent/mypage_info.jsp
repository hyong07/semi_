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

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

/* 전체적인 틀 css 끝*/
/* div{ */
/* 	border : 1px solid black; */
/* } */
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

#allwrapper {
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
	height: auto;
	width: 80%;
	margin: 0px auto;
}

#content {
	height: 100%;
	width: 100%;
	margin-bottom: 40px;
}

#bottomwrapper {
	height: 15%;
	width: 100%;
}

#footer {
	height: 100%;
	width: 100%;
}

/* 전체적인 틀 css 끝*/

/* Mypage css*/
#cardcontainer {
	width: 80%;
}

.card-group>.card+.card {
	border-left: 1px solid rgba(0, 0, 0, 0.125);
}

#morebutton {
	margin-top: 10px;
}

#buttondiv {
	text-align: right;
}

#cardbody{ 
	margin-left:200px;
}

#mypage_bt{
	margin-left:100px;
}
.card-header{
	background-color:#4f70ce;
	color : white;
}
/* Mypage css 끝*/
</style>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://unpkg.com/ionicons@4.2.0/dist/ionicons.js"></script>
<script>
	$(document).ready(function(){
		$("#modify_bt").click(function(){
			location.href = "mypage_modify.mem";
		})
		
		$("#changepw_bt").click(function(){
			location.href = "mypage_changepw.jsp";
		})
	})
</script>
</head>
<body>
 	<c:choose> 
            <c:when test="${result == 1}"> 
            		<script> 
            		alert("수정이 완료되었습니다.");
            		</script> 
           </c:when>
     </c:choose> 

	<div id="topnavicontainer">
		<nav class="navbar navbar-expand-md navbar-dark bg-secondary"
			id="topnavbar">
		<div id="logocontainer">
			<a class="navbar-brand" href="#">Auction GO!</a>
		</div>


		<div class="collapse navbar-collapse text-center justify-content-end"
			id="menucontainer">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#"> <i
						class="fa fa-user fa-fw"></i> Login
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

		</div>
		<div id="centerwrapper">
			<div id="content">
				<div class="container">
					<div class="input-group">
						<div class="input-group-prepend">
							<span><p class="lead mr-3">
									<ion-icon name="person"></ion-icon>
									${sessionScope.loginid} 님
								</p></span>
						</div>
						<p class="lead">
							보유금액 :
							<ion-icon name="logo-usd"></ion-icon>
							1000
						</p>
					</div>
					<div class="row h-100">
						<div class="col-md-2">
							<ul class="nav nav-pills flex-column">
								<li class="nav-item"><a href="mypage.jsp"
									class="nav-link text-secondary"> <i
										class="fa fa-home fa-home"></i>&nbsp;MyPage
								</a></li>
								<li class="nav-item"><a href="mypage_purchase.jsp"
									class="nav-link text-secondary">구매신청내역</a></li>
								<li class="nav-item"><a href="mypage_auction.jsp"
									class="nav-link text-secondary">경매신청내역</a></li>
								<li class="nav-item"><a class="nav-link text-secondary"
									href="mypage_sale.jsp">판매등록내역</a></li>
								<li class="nav-item"><a class="active nav-link btn-secondary"
									href="mypage_info.mem">내 정보</a></li>
								<li class="nav-item"><a
									class="nav-link text-secondary" href="mypage_pwcheck2.jsp">회원탈퇴</a></li>
							</ul>
						</div>
						<div id="cardcontainer">
							<div class="card">
								<div class="card-header">내정보</div>
								<div class="card-body" id="cardbody">
									<div class="form-row">
										<div class="form-group col-md-8">
											<label for="inputEmail4">Id</label> <input type="text"
												class="form-control" placeholder="${dto.id }" readonly>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-8">
											<label for="inputEmail4">Name</label> <input type="text"
												class="form-control" placeholder="${dto.name }" readonly>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-8">
											<label for="inputEmail4">Email</label> <input type="text"
												class="form-control" placeholder="${dto.email }" readonly>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-8">
											<label for="inputEmail4">Phone</label> <input type="text"
												class="form-control" placeholder="${dto.phone }" readonly>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-8">
											<label for="inputAddress">Address</label> <input type="text"
											class="form-control" placeholder="${dto.address }" readonly>
										</div>
									</div>
									<div class="form-row">
										<div class="col-md-12" id="mypage_bt">
											<button type="button" id="changepw_bt" class="btn btn-danger">비밀번호 변경</button>
											<button type="button" id="modify_bt" class="btn btn-secondary">내정보수정</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>


		<div id="bottomwrapper">
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