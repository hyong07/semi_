<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	var sel_files=[];
	
	$(document).ready(function(){
		$("#input_imgs").on("change", handleImgFileSelect);
	});
	
	function fileUploadAction() {
		console.log("fileUploadAction");
		$("#input_imgs").trigger('click');
	}
	
	function handleImgFileSelect(e) {
		sel_files = [];
		
		$(".imgs_wrap").empty();
		
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		var index=0;
		
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
		
		sel_files.push(f);
		
		var reader = new FileReader();
		reader.onload = function(e){
			var html ="<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' tilte='Click to remove'";
			$(".imgs_wrap").append(html);
			index++;
		}
		reader.readAsDataURL(f);
		
		});
	}
</script>
</head>
<body>
	<div>
		<h2><b>이미지 미리보기</b></h2>
		<div class="input_wrap">
			
			<input type="file" id="input_imgs" multiple/>
		</div>
	</div>
	
	<div>
		<div class="imgs_wrap">
			<img id="img" />
		</div>
	</div>
</body>
</html>