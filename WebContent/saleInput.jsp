<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> 판매 글 등록 </title>
<style>
	
</style>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	$(document).ready(function(){
		$("#product_add").click(function(){
			$.ajax({
				url:"product.do",
				type:"get",
				success:function(response){					
					$("#product_add").attr(type,"hidden");
				}
			})
		})	
	})
	
</script>
</head>
<body>
	<fieldset>
        <legend> 판 매 글 등 록 </legend>
        제 목 :
        <input type="text" id="title" name="title" placeholder="제목을 입력해주세요."><br>
        <br> 내 용 :
        <input type="textarea" id="contents" name="contents" placeholder="내용을 입력해주세요"><br>
        <br> 
        <input type="url" name="page" placeholder="http://">

    </fieldset>
</body>
</html>