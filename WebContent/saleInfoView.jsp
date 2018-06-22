<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	/* 	    position: fixed; */
	width: 100%;
	height: 40px;
	font-size: 20px;
	margin: 0px auto;
	opacity: 0.9;
}

#allwrapper {
	/* 		opacity: 0.8; */
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
	height: 64%;
	width: 80%;
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

table td{
	width:300px;
}
</style>



<script>
	
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
				<div class="card">
					<div class="card-header">판매글 정보</div>
					<div class="card-body">

						<div class="container">
							<div class="row">
								<div class="form-row">
									<div class="col-md-5">
										<img class="img-fluid d-block"
											src="note.jpg">
									</div>
									<div class="col-md-7">
										<h3>
											판매 정보 :
											<!--main_category --><i>전자 제품 > <!--sub_category-->노트북</i>
											</i>
										</h3>
											<div class="container">
												<div class="row">
													<div class="col-md-12">
														<table class="table">
															<thead>
																<!-- <tr>
																	<th>#</th>
																	<th>First Name</th>
																	<th>Last Name</th>
																</tr> -->
															</thead>
															<tbody>
															<tr>
																<td> 물품명  </td>
																<td> LG전자 올뉴그램 14ZD980-GX30K <!-- 상품명 (product_name) --></td>
															</tr>
																<tr>																	
																	<td>가격  </td>
																	<td>1,200,000 원<!-- sell_price --></td>
																</tr>
																<tr>																	
																	<td>수량  </td>
																	<td> 3 E A<!-- sell_count --></td>
																</tr>
																<tr>																	
																	<td>현재 구매신청 수  </td>
																	<td> 4 건 <!-- Buyer count(*) --></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
									</div>
								</div>
								<div class="col-md-12 mb-2 text-center">
									<a href="#" class="btn btn-danger">구매 신청</a>									
								</div>
							</div>

						</div>


						<div class="card-footer text-right">
							<a href="mypage.jsp" class="btn btn-secondary">목록으로</a>
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