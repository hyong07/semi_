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
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
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
	/* 		height:64%; */
	height: 3000px;
	width: 80%;
	margin: 0px auto;
	position: absolute;
	top: 260px;
	left: 550px;
}

.col-md-6 {
	background: #FAEBD7;
}

#content {
	height: 100%;
	width: 100%;
	align: center;
}

#bottomwrapper {
	height: 15%;
	width: 100%;
}

#footer {
	height: 100%;
	width: 100%;
}
</style>



<script>
			window.onload = function() {
				var deletecount = 1;
			    document.getElementById("back").onclick = function() {
			 	   location.href = "CommunityMain.do";
				    }
			    
			    
			}
</script>
</head>
<body>
	<%
		response.setCharacterEncoding("utf8");
	%>

	<div id="topnavicontainer">
		<nav class="navbar navbar-expand-md navbar-dark bg-secondary"
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
					id="menubtn" href="CommunityController.do"> <i
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

				<div class="row">
					<div class="col-md-6">
						<hr />
						<div class="Compose-Message">
							<div class="panel panel-success">
								<!--               <div class="panel-heading"> -->
								<!--                 Input New Text -->
								<!--               </div> -->



								<div class="panel-body">

									<label>Title : </label> <input type="text"
										class="form-control w-100" name="title"
										placeholder=${dto.title } readonly> <label>Writer
										: </label>

									<!--            <input type="text" class="form-control W-25"/> -->


									<input type="text" class="form-control w-50"
										placeholder=${dto.writer } name="loginid" readonly>
									<!-- 				 <label>File : </label> -->
									<!-- 				<input type="text" class="form-control w-50" placeholder="File" > -->


									<!-- 				 <label>Count : </label> -->
									<!--                 <input type="text" class="form-control w-100"   name="viewcount"  placeholder=${dto.viewcount}  readonly> -->

								</div>

								<label>Enter Text : </label>
								<textarea rows="9" class="form-control" name="contents"
									placeholder=${dto.contents } readonly></textarea>
								<hr />

								<table border=1>
								</table>
								<form action="CommentWrite.co" method="get">
									<input type="text" class="form-control " id="comment_text"
										name="comment_text" placeholder="comment_text"> <input
										type="hidden" name="seq" value="${dto.seq}">
									<%--       		<input type="hidden" name="count" value="${dto.viewcount}"> --%>
									<input type="submit" class="btn btn-secondary"
										value="Enter Comment""><span
										class="glyphicon glyphicon-envelope text-light"></span>
								</form>




								<table border=1>



									<c:if test="${result.size() > 0}">



										<script>var num = 1;</script>


										<c:forEach var="item" items="${result}">

											<c:choose>





												<c:when test="${item.writer == sessionScope.loginid}">
													<tr>
														<td id=modbtn>${item.article_no}<script>
														 						
	$("#modbtn:last-child").after("<td><input type=text class=form-control  id=modify"+num+" name=comment_text2 readonly placeholder="+num+">");
						</script>
														<td>${item.comment_seq}
														<td>${item.writer}
														<td>${item.writedate}
														<td id="modbtn1"><script>

                  $("#modbtn1:last-child").after("<button id=commentmodify"+num+" name=commentmodify type=button>수정"+num+"</button>");
            
           </script>
           
           
           <td id="delbtn" style="width: 11%">
														
														<script>
                  $("#delbtn:last-child").after("<button type=button id="+num+" class='btn btn-secondary' value='${item.comment_seq}'>삭제"+num+"</button>");
                  </script>
  
           
           
           
           
           
           
           
           <script>
                  document.getElementById(num).onclick = function() { 
              		alert(${item.comment_seq});
                     location.href = "CommentDelete.co?comment_seq=${item.comment_seq}&seq=${item.article_no}";
                  }
                            
		</script>
                  
                  
                  
                  
                  <script>
                  
  				$("#commentmodify"+ num).click(
  					(function(e){
  						return function(){
  							$("#modify"+e).prop("readonly",false);
  	 					}
  					})(num)
  				);
  		
  			
			
// 		console.log(btn);
//  	var tr = btn.parent().parent(); 
//  	console.log(btn.html());
//  	console.log(btn.parent().html());

//        tr>input[name=comment_text2].prop('readonly', false);
//    }
      
      num++; 
  	</script> <!-- 					<input type="text" class="form-control"   name="article_no"  placeholder=${item.article_no}  readonly> -->


															<!-- 					<input type="text" class="form-control"   name="writer"  placeholder=${item.writer} readonly> -->
															<!-- 					<input type="text" class="form-control"   name="writedate"  placeholder=${item.writedate}  readonly> -->
														
													</tr>
												</c:when>








												<c:otherwise>
													<tr>
														<td>${item.article_no}
														<td>${item.comment_text}
														<td>${item.comment_seq}
														<td>${item.writer}
														<td>${item.writedate}
													</tr>

													<!-- 						<input type="text" class="form-control"   name="article_no"  placeholder=${item.article_no}  readonly> -->
													<!-- 						<input type="text" class="form-control"   name="comment_text"  placeholder=${item.comment_text}  readonly> -->
													<!-- 						<input type="text" class="form-control"   name="comment_seq"  placeholder=${item.comment_seq}  readonly> -->
													<!-- 						<input type="text" class="form-control"   name="writer"  placeholder=${item.writer} readonly> -->
													<!-- 						<input type="text" class="form-control"   name="writedate"  placeholder=${item.writedate}  readonly> -->
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</c:if>



								</table>




								<c:choose>
									<c:when test="${dto.writer.equals(sessionScope.loginid)}">


										<div class="col-md-12 text-right">
											<!--           <input type="submit"  href="CommunityController.do" class="btn btn-secondary" value="Enter Text" "><span class="glyphicon glyphicon-envelope text-light"></span> </a>  -->
											<input type="button" id=back class="btn btn-secondary"
												value="back"><span
												class="glyphicon glyphicon-tags text-light"></span> <input
												type="button" id=delete class="btn btn-secondary"
												value="delete"><span
												class="glyphicon glyphicon-tags text-light"></span> <input
												type="button" id=modify class="btn btn-secondary"
												value="modify "><span
												class="glyphicon glyphicon-tags text-light"></span>


										</div>
										<script>
              document.getElementById("delete").onclick = function() {
	        	   location.href = "CommunityDelete.do?seq=<%=request.getParameter("seq")%>";
	        			   
	           }
		    
		      document.getElementById("modify").onclick = function() {
	        	   location.href = "ComunityModify.do?seq=<%=request.getParameter("seq")%>";
			}
										</script>

									</c:when>
									<c:otherwise>
										<div class="col-md-12 text-right">
											<!--           <input type="submit"  href="CommunityController.do" class="btn btn-secondary" value="Enter Text" "><span class="glyphicon glyphicon-envelope text-light"></span> </a>  -->
											<input type="button" id=back class="btn btn-secondary"
												value="back"><span
												class="glyphicon glyphicon-tags text-light"></span>
										</div>
									</c:otherwise>
								</c:choose>

								<!--               </form> -->
								&nbsp;
								<div class="panel-footer text-muted">
									<strong>Note : </strong>Please note that we track all messages
									so don't send any spams.
								</div>
								&nbsp;
							</div>
						</div>
					</div>
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


</body>
</html>