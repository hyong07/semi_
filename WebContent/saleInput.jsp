<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> �Ǹ� �� ��� </title>
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
        <legend> �� �� �� �� �� </legend>
        �� �� :
        <input type="text" id="title" name="title" placeholder="������ �Է����ּ���."><br>
        <br> �� �� :
        <input type="textarea" id="contents" name="contents" placeholder="������ �Է����ּ���"><br>
        <br> 
        <input type="url" name="page" placeholder="http://">

    </fieldset>
</body>
</html>