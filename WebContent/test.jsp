<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="sms.mem">
	<input type="hidden" name="action" value="go"> 발송타입
	<input type="text" id="phone" required class="id" class="fadeIn second"
		name="phone" style="width: 60%" placeholder="Input Your Phone">
	<button class="" id="confirm"
		style="width: 140px; height: 50px; background-color: #4f70ce; color: white; font-size: 13px; font-weight: 600;">
		번호 인증</button>
		</form>
</body>
</html>