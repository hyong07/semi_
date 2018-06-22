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
<script src="https://unpkg.com/ionicons@4.2.0/dist/ionicons.js"></script>
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

/* 전체적인 틀 css*/
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

/* 글작성 */
#plusicon {
	font-size: 30px;
	color: #151515;
}
</style>


<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script>
	$(document).ready(function(){ 
		$("#productbt").click(function(){
			var sub_category = $("#sub_category option:selected").val();
			var price = $("#productprice").val();
			var num = $("#productnum").val();
			if(sub_category == "" || price == "" || num == ""){
				alert("모두 입력해주세요.");
			}
			else{
				$("#sub_category option:selected").prop("selected", false);
				$("#productprice").val("");
				$("#productnum").val("");
				
				$("#productlist").append("<tr><td>" + sub_category + "<td>"+ price +"<td>"+ num +"<td><button onclick='deleteLine(this)'; class='btn btn-secondary' type='button'>삭제</button><tr>");
			}
		})

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
					<div class="card-header">판매글 작성</div>
					<div class="card-body">
						<div class="form-row mb-3">
							<div class="col-md-2">메인카테고리 :</div>
							<select id="main_category" class="col-md-3 ml-1">
								<option value="">선 택</option>
								<option value="패션">패션</option>
								<option value="전자제품">전자제품</option>
								<option value="리빙">리빙</option>
								<option value="문화">문화</option>
								<option value="뷰티">뷰티</option>
							</select>
						</div>
						<div class="form-row mb-3">
							<div class="col-md-2 ">판매 방법 :</div>
							<div class="btn-group btn-group-toggle col-md-4"
								data-toggle="buttons">
								<label class="btn btn-secondary active"> <input
									type="radio" name="options" id="option1" autocomplete="off"
									checked> 일반
								</label><label class="btn btn-secondary"> <input type="radio"
									name="options" id="option3" autocomplete="off"> 경매
								</label>
							</div>
						</div>
						<div class="form-row mb-3">
							<div class="col-md-2">제품 등록 :</div>
							<div class="col-md-10">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion" href="#plusproduct"> <i
												id="plusicon" class="fa fa-plus" aria-hidden="true"></i>
											</a><i
												class="indicator glyphicon glyphicon-chevron-up pull-right"></i>
										</h4>
									</div>
									<div id="plusproduct" class="panel-collapse collapse form-row">
										<div class="panel-body col-md-4">
											<div class="form-row mb-3">
												<div class="col-md-5">세부 카테고리 :</div>
												<select id="sub_category" class="col-md-5 ml-1">
													<option value="">선 택</option>
													<option value="패션">패션</option>
													<option value="전자제품">전자제품</option>
													<option value="리빙">리빙</option>
													<option value="문화">문화</option>
													<option value="뷰티">뷰티</option>
												</select>
											</div>
											<div class="form-row mb-3">
												<div class="col-md-5">가격 :</div>
												<input id="productprice" class="form-control col-md-5 ml-1"
													type="number" placeholder="" min=1>
											</div>
											<div class="form-row mb-3">
												<div class="col-md-5">수량 :</div>
												<input id="productnum" class="form-control col-md-5 ml-1"
													type="number" placeholder="" min=1 max=20>
											</div>
											<div class="form-row">
												<input id="productbt" type="button"
													class="btn btn-secondary" value="등록">
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>
						<div class="col-md-12">
							<table class="table">
								<thead>
									<tr>
										<th>세부카테고리</th>
										<th>가격</th>
										<th>수량</th>
										<th>#</th>
									</tr>
								</thead>
								<tbody id="productlist">

								</tbody>
							</table>
						</div>
						<div class="form-row mb-3">
							<div class="col-md-2">제목 :</div>
							<input type="text" class="form-control col-md-8 ml-1">
						</div>
						
						<div class="form-row mb-3">
							<div class="col-md-2">내용 :</div>
							<textarea id="textarea"class="form-control col-md-8 ml-1" rows="3"></textarea>
						</div>
					</div>
					<div class="card-footer text-right">
						<a href="#" class="btn btn-secondary">Go somewhere</a>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="accordion-toggle" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree"> Collapsible
								Group Item #3 </a><i
								class="indicator glyphicon glyphicon-chevron-up pull-right"></i>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse">
						<div class="panel-body">Anim pariatur cliche reprehenderit,
							enim eiusmod high life accusamus terry richardson ad squid. 3
							wolf moon officia aute, non cupidatat skateboard dolor brunch.
							Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
							tempor, sunt aliqua put a bird on it squid single-origin coffee
							nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica,
							craft beer labore wes anderson cred nesciunt sapiente ea
							proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
							craft beer farm-to-table, raw denim aesthetic synth nesciunt you
							probably haven't heard of them accusamus labore sustainable VHS.</div>
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

	</div>

	</div>
	<script>
	function toggleChevron(e) {
		$(e.target).prev('.panel-heading').find("i.indicator").toggleClass(
				'glyphicon-chevron-down glyphicon-chevron-up');
	}
	$('#accordion').on('hidden.bs.collapse', toggleChevron);
	$('#accordion').on('shown.bs.collapse', toggleChevron);
	
	function deleteLine(obj) {
		var result = confirm("삭제하시겠습니까 ?");
		if(result == 1){
   	    var tr = $(obj).parent().parent();
		    //라인 삭제
		    tr.remove();
		}
}
</script>

</body>
</html>