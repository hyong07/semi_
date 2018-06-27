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
/*    border : 1px solid black; */
/* } */
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
	height: 1500px;
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
	padding-top: 2px;
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
/* 전체적인 틀 css 끝*/

/* 글작성 */
#plusicon {
	font-size: 30px;
	color: #151515;
}

.my_button {
	display: inline-block;
	line-height: normal;
	vertical-align: middle;
}

#input_imgs {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	/*    clip: rect(0, 0, 0, 0); */
	border: 0;
}
</style>


<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script>
   var sel_files = new Array();
   

   $(document).ready(function() {
	    
	   	$("#main_category").change(function(){
	   		var test = $("#main_category option:selected").val();
	   		$.ajax({
	   			url:"category.bo",
	   			type:"get",
	   			data:{test:test},
	   			success:function(rep){
	   				if(rep.length>0){
	   					$("#sub_category").empty();
	   					for(i=0; i<rep.length;i++){
	   						$("#sub_category").append("<option value="+rep[i]+">"+rep[i]+"</option>");
	   					}
	   				}
	   			} 
	   		})
	   	})	
	   	
	   		$("input[name=sell_type]").click(function(){	   			
	   			var test = $("#main_category option:selected").val();
	   			$.ajax({
	   				url:"category.bo",
	   				type:"get",
	   				data:{test:test},
	   				success:function(rep){
	   					if(rep.length>0){
		   					$("select[name=sub_category]").empty();
		   					for(i=0; i<rep.length;i++){
		   						$("select[name=sub_category]").append("<option value="+rep[i]+">"+rep[i]+"</option>");
		   					}
		   				}
	   				}
	   			})
	   			
	   			if(test != ""){
	   				var sell_type = $("input[name=sell_type]:checked").val();		   			
		   			$.ajax({
		   				url:"sell_type.bo",
		   				type:"get",
		   				data:{sell_type:sell_type},
		   				success:function(rep){
		   					$("input[name=sell_type]").attr("style","display:none");
		   					$("#test").text("");
		   					if(rep == "a"){  								   						
		   						$("#plusButton").attr("href","#auction_product");
		   						$("#type_check").attr("value","a");
		   						$("#type_check").text("경매");
		   					}
		   					else if(rep == "s"){		   						
		   						$("#plusButton").attr("href", "#plusproduct");
		   						$("#type_check").attr("value","s");
		   						$("#type_check").text("일반");
		   					}
		   					
		   					
		   				}
		   			})
	   			}else{
	   				alert("메인 카테고리를 선택해주세요.");
	   			}
	   			
	   		})        
	   		
	   		$("input[name=productButton]").click(function() {    
	   							 var category = $("#main_category").val();	   							 
                                 var sub_category = $("#sub_category").val();
                                 var product_name = $("#product_name").val();
                                 var sell_price = $("#productprice").val();
                                 var sell_count = $("#productnum").val();
                                 $.ajax({
                                	 url:"productInfo.bo",
                                	 type:"get",
                                	 data:{category:category,sub_category:sub_category,product_name:product_name,sell_price:sell_price,sell_count:sell_count},
                                 	 success:function(rep){
                                 		if (sub_category == ""|| sell_price == "" || sell_count == "") {
                                            alert("모두 입력해주세요.");
                                         } else {$("#sub_category option:selected").prop("selected", false);
                                         	$("#product_name").val("");
                                            $("#productprice").val("");
                                            $("#productnum").val("");
                                            $("#productlist").append("<tr><td>"+ sub_category+ "<td>"+ product_name +"<td>"+ sell_price+ "<td>"+ sell_count+ "<td><button name='deleteButton' onclick='deleteLine(this);' class='btn btn-secondary' type='button'>삭제</button><tr>");
                                         }
                                 	 }
                                 })                                 
                              })
                           $("#input_imgs").on("change", handleImgFileSelect);	   
               })

   function fileUploadAction() {
      console.log("fileUploadAction");
      $("#input_imgs").trigger('click');
		
   }
		
   function handleImgFileSelect(e) {
      var files = e.target.files;
      var send_files = [];
      var filesArr = Array.prototype.slice.call(files);
      var index = 0;
      filesArr.forEach(function(f) {
               if (!f.type.match("image.*")) {
                  alert("확장자는 이미지 확장자만 가능합니다.");
                  return;
               }
               sel_files.push(f);
           	var file1 = $("#input_imgs").get(0).files[0];
       		var file2 = $("#input_imgs").get(0).files[1];
       		console.log("1");
       		console.log(file1);
       		console.log(file2);
       		
               var reader = new FileReader();
               reader.onload = function(e) {            	  
            	   var html = "<div class=\"col-md-4\"  id=\"img_id"+ index + "\"><img src=\"" + e.target.result + "\"  width=\"100\" height=\"100\" data-file='"+f.name+"' class='selProductFile' tilte='Click to remove'><p align=\"center\">"
                        + f.name + "<button type=\"button\" class=\"btn btn-sm col-md-1\" onclick=\"deleteImageAction("+ index + ")\">X</button></p></div>";
                  $(".imgs_wrap").append(html);
                  index++;
               }
               reader.readAsDataURL(f);
               
               
            });  
      console.log(sel_files);
      $("#input_imgs").val(sel_files);
      
   }
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
			<form action="write.bo" method="post" enctype="multipart/form-data">
				<div class="card">
					<div class="card-header">판매글 작성</div>
					<div class="card-body">
						<div class="form-row mb-3">
							<div class="col-md-2">메인카테고리 :</div>
							<select id="main_category" name="category" class="col-md-3 ml-1">
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
							<div class="col-md-4" id="test">
								 <input	type="radio"  id="type_sell" name="sell_type"	value="s"> 일반
								<input type="radio" name="sell_type" id="type_auction"  value="a"> 경매								
							</div>
							<h id="type_check"><input type="text" name="sell_type" value=""></h>
						</div>
						<div class="form-row mb-3">
							<div class="col-md-2">제품 등록 :</div>
							<div class="col-md-10">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion" href="" id="plusButton"> <i
												id="plusicon" class="fa fa-plus" aria-hidden="true"></i>
											</a><i
												class="indicator glyphicon glyphicon-chevron-up pull-right"></i>
										</h4>
									</div>
									<div id="plusproduct" class="panel-collapse collapse form-row">
										<div class="panel-body col-md-4">
											<div class="form-row mb-3">
												<div class="col-md-5">세부 카테고리 :</div>
												<select id="sub_category" name="sub_category" class="col-md-5 ml-1">

												</select>
											</div>
											<div class="form-row mb-3">
												<div class="col-md-5">제품명 :</div>
												<input id="product_name" class="form-control col-md-5 ml-1"
													type="text" placeholder=""> 
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
												<input id="productbt" type="button" name="productButton"
													class="btn btn-secondary" value="등록">
											</div>
										</div>
									</div>
									<div id="auction_product" class="panel-collapse collapse form-row">
										<div class="panel-body col-md-4">
											<div class="form-row mb-3">
												<div class="col-md-5">세부 카테고리 :</div>
												<select id="sub_category" name="sub_category" class="col-md-5 ml-1">

												</select>
											</div>
											<div class="form-row mb-3">
												<div class="col-md-5">경매품명 :</div>
												<input id="product_name" class="form-control col-md-5 ml-1"
													type="text" placeholder=""> 
											</div>
											
											<div class="form-row mb-3">
												<div class="col-md-5">시작입찰가 :</div>
												<input id="productprice" class="form-control col-md-5 ml-1"
													type="number" placeholder="" min=1>
											</div>
											<div class="form-row mb-3">
												<div class="col-md-5">경매 기간 :</div>
												<input id="productnum" class="form-control col-md-5 ml-1"
													type="number" placeholder="" min=1 max=20>
											</div>
											<div class="form-row">
												<input id="productbt" type="button" name="productButton"
													class="btn btn-secondary" value="등록">
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
										<th>제품명</th>
										<th>가격</th>
										<th>수량</th>
										<th>#</th>
									</tr>
								</thead>
								<tbody id="productlist">

								</tbody>
							</table>
						</div>
						<div class="form-row mb-3 col-md-12">
							<div class="col-md-2">제목 :</div>
							<input type="text" name = "title" class="form-control col-md-8 ml-1">
						</div>

						<div class="form-row mb-3  col-md-12">
							<div class="col-md-2">내용 :</div>
							<textarea id="textarea" name="contents" class="form-control col-md-8 ml-1"
								rows="15" style="resize: none;"></textarea>
						</div>

						<div class="form-row mb-3  col-md-12">
							<div class="col-md-2">사진첨부 :</div>
							<div class="form-row col-md-10">
								<div class="input_wrap col-md-12">
									<button type="button" onclick="fileUploadAction();"
										class="my_button btn btn-secondary mb-3" id="uploadButton">파일 업로드</button>
									<input type="file" id="input_imgs" name=img_file[] multiple 
										accept="image/x-png,image/gif,image/jpeg" />	
										<div id="file_test">
										
										</div>																											
								</div>
								<div class="imgs_wrap form-row">
									<img id="img" />
								</div>
							</div>
						</div>

					</div>
					<div class="card-footer text-right">
						<input type="submit" value="등록" class="btn btn-secondary">
					</div>
				</div>
				</form>
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
          if (result == 1) {
             var tr = $(obj).parent().parent();
             var td = tr.children();             
             var tdArr = new Array();
             td.each(function(i){
            	 tdArr.push(td.eq(i).text());
             })
             var product_name = tdArr[1];
             $.ajax({
            	 url:"productInfoDelete.bo",
            	 type:"get",
            	 data:{product_name:product_name},
            	 success:function(){
            		 console.log("삭제 완료");
            	 }
             })
             
             console.log(tdArr[1]);
             
             //라인 삭제
             
             
             
          }
       }

      function deleteImageAction(index) {
         sel_files.splice(index, 1);

         console.log(sel_files);

         var img_id = "#img_id" + index;

         $(img_id).remove();

      }
   </script>

</body>
</html>