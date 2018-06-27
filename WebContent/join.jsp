<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
    crossorigin="anonymous">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css">
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  
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

    div {
      border: 0px solid black;
      box-sizing: border-box;
    }

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
      height: 100%;
      margin: 0px auto;
    }

    #centerwrapper {
      height: 85%;
      width: 80%;
      margin: 0px auto;
      height: 100%;
      width: 100%;
      background: #F8F8FF;
    }

    #content {
      padding: 0;
      margin: 0;
    }

    @import url('https://fonts.googleapis.com/css?family=Poppins');
    /* BASIC */

    html {
      background-color: #56baed;
    }

    body {
      font-family: "Poppins", sans-serif;
      height: 100vh;
    }

    a {
      color: #92badd;
      display: inline-block;
      text-decoration: none;
      font-weight: 400;
    }

    h2 {
      text-align: center;
      font-size: 16px;
      font-weight: 600;
      text-transform: uppercase;
      display: inline-block;
      margin: 40px 8px 10px 8px;
      color: #cccccc;
    }
    /* STRUCTURE */

    .wrapper {
      display: flex;
      align-items: center;
      flex-direction: column;
      justify-content: center;
      width: 100%;
      min-height: 100%;
      padding: 20px;
    }

    #formContent {
      -webkit-border-radius: 10px 10px 10px 10px;
      border-radius: 10px 10px 10px 10px;
      background: #fff;
      padding: 30px;
      width: 100%;
      max-width: 450px;
      position: relative;
      padding: 0px;
      -webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
      box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
      text-align: center;
    }

    #formFooter {
      background-color: #f6f6f6;
      border-top: 1px solid #dce8f1;
      padding: 25px;
      text-align: center;
      -webkit-border-radius: 0 0 10px 10px;
      border-radius: 0 0 10px 10px;
    }
    /* TABS */

    h2.inactive {
      color: #cccccc;
    }

    h2.active {
      color: #0d0d0d;
      border-bottom: 2px solid #5fbae9;
    }
    /* FORM TYPOGRAPHY*/

    input[type=button],
    input[type=submit],
    input[type=reset] {
      background-color: #56baed;
      border: none;
      color: white;
      padding: 15px 80px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      text-transform: uppercase;
      font-size: 13px;
      -webkit-box-shadow: 0 10px 30px 0 rgba(95, 186, 233, 0.4);
      box-shadow: 0 10px 30px 0 rgba(95, 186, 233, 0.4);
      -webkit-border-radius: 5px 5px 5px 5px;
      border-radius: 5px 5px 5px 5px;
      margin: 5px 20px 40px 20px;
      -webkit-transition: all 0.3s ease-in-out;
      -moz-transition: all 0.3s ease-in-out;
      -ms-transition: all 0.3s ease-in-out;
      -o-transition: all 0.3s ease-in-out;
      transition: all 0.3s ease-in-out;
    }

    input[type=button]:hover,
    input[type=submit]:hover,
    input[type=reset]:hover {
      background-color: #39ace7;
    }

    input[type=button]:active,
    input[type=submit]:active,
    input[type=reset]:active {
      -moz-transform: scale(0.95);
      -webkit-transform: scale(0.95);
      -o-transform: scale(0.95);
      -ms-transform: scale(0.95);
      transform: scale(0.95);
    }

    input[type=text] {
      background-color: #f6f6f6;
      border: none;
      color: #0d0d0d;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 5px;
      width: 85%;
      border: 2px solid #f6f6f6;
      -webkit-transition: all 0.5s ease-in-out;
      -moz-transition: all 0.5s ease-in-out;
      -ms-transition: all 0.5s ease-in-out;
      -o-transition: all 0.5s ease-in-out;
      transition: all 0.5s ease-in-out;
      -webkit-border-radius: 5px 5px 5px 5px;
      border-radius: 5px 5px 5px 5px;
    }

    input[type=text]:focus {
      background-color: #fff;
      border-bottom: 2px solid #5fbae9;
    }

    input[type=text]:placeholder {
      color: #cccccc;
    }

    input[type=password] {
      background-color: #f6f6f6;
      border: none;
      color: #0d0d0d;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 5px;
      width: 85%;
      border: 2px solid #f6f6f6;
      -webkit-transition: all 0.5s ease-in-out;
      -moz-transition: all 0.5s ease-in-out;
      -ms-transition: all 0.5s ease-in-out;
      -o-transition: all 0.5s ease-in-out;
      transition: all 0.5s ease-in-out;
      -webkit-border-radius: 5px 5px 5px 5px;
      border-radius: 5px 5px 5px 5px;
    }

    input[type=password]:focus {
      background-color: #fff;
      border-bottom: 2px solid #5fbae9;
    }

    input[type=password]:placeholder {
      color: #cccccc;
    }
    /* ANIMATIONS */
    /* Simple CSS3 Fade-in-down Animation */

    .fadeInDown {
      -webkit-animation-name: fadeInDown;
      animation-name: fadeInDown;
      -webkit-animation-duration: 1s;
      animation-duration: 1s;
      -webkit-animation-fill-mode: both;
      animation-fill-mode: both;
    }

    @-webkit-keyframes fadeInDown {
      0% {
        opacity: 0;
        -webkit-transform: translate3d(0, -100%, 0);
        transform: translate3d(0, -100%, 0);
      }
      100% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
      }
    }

    @keyframes fadeInDown {
      0% {
        opacity: 0;
        -webkit-transform: translate3d(0, -100%, 0);
        transform: translate3d(0, -100%, 0);
      }
      100% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
      }
    }
    /* Simple CSS3 Fade-in Animation */

    @-webkit-keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    @-moz-keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    .fadeIn {
      opacity: 0;
      -webkit-animation: fadeIn ease-in 1;
      -moz-animation: fadeIn ease-in 1;
      animation: fadeIn ease-in 1;
      -webkit-animation-fill-mode: forwards;
      -moz-animation-fill-mode: forwards;
      animation-fill-mode: forwards;
      -webkit-animation-duration: 1s;
      -moz-animation-duration: 1s;
      animation-duration: 1s;
    }

    .fadeIn.first {
      -webkit-animation-delay: 0.4s;
      -moz-animation-delay: 0.4s;
      animation-delay: 0.4s;
    }

    .fadeIn.second {
      -webkit-animation-delay: 0.6s;
      -moz-animation-delay: 0.6s;
      animation-delay: 0.6s;
    }

    .fadeIn.third {
      -webkit-animation-delay: 0.8s;
      -moz-animation-delay: 0.8s;
      animation-delay: 0.8s;
    }

    .fadeIn.fourth {
      -webkit-animation-delay: 1s;
      -moz-animation-delay: 1s;
      animation-delay: 1s;
    }
    /* Simple CSS3 Fade-in Animation */

    .underlineHover:after {
      display: block;
      left: 0;
      bottom: -10px;
      width: 0;
      height: 2px;
      background-color: #56baed;
      content: "";
      transition: width 0.2s;
    }

    .underlineHover:hover {
      color: #0d0d0d;
    }

    .underlineHover:hover:after {
      width: 100%;
    }
    /* OTHERS */

    *:focus {
      outline: none;
    }

    #icon {
      width: 60%;
    }

    * {
      box-sizing: border-box;
    }

    #bottomwrapper {
      height: 15%;
      width: 100%;
    }

    #footer {
      height: 100%;
      width: 100%;
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
      height: 100%;
      margin: 0px auto;
    }

    #centerwrapper {
      height: 85%;
      width: 80%;
      margin: 0px auto;
      height: 100%;
      width: 100%;
      background: #F8F8FF;
    }

    #content {
      padding: 0;
      margin: 0;
    }

    @import url('https://fonts.googleapis.com/css?family=Poppins');
    /* BASIC */

    html {
      background-color: #56baed;
    }

    body {
      font-family: "Poppins", sans-serif;
      height: 100vh;
    }

    a {
      color: #92badd;
      display: inline-block;
      text-decoration: none;
      font-weight: 400;
    }

    h2 {
      text-align: center;
      font-size: 16px;
      font-weight: 600;
      text-transform: uppercase;
      display: inline-block;
      margin: 40px 8px 10px 8px;
      color: #cccccc;
    }
    /* STRUCTURE */

    .wrapper {
      display: flex;
      align-items: center;
      flex-direction: column;
      justify-content: center;
      width: 100%;
      min-height: 100%;
      padding: 20px;
    }

    #formContent {
      -webkit-border-radius: 10px 10px 10px 10px;
      border-radius: 10px 10px 10px 10px;
      background: #fff;
      padding: 30px;
      margin-bottom: 20px;
      width: 100%;
      max-width: 650px;
      position: relative;
      padding: 0px;
      -webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
      box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
      text-align: center;
    }

    #formFooter {
      background-color: #f6f6f6;
      border-top: 1px solid #dce8f1;
      padding: 25px;
      text-align: center;
      -webkit-border-radius: 0 0 10px 10px;
      border-radius: 0 0 10px 10px;
    }
    /* TABS */

    h2.inactive {
      color: #cccccc;
    }

    h2.active {
      color: #0d0d0d;
      border-bottom: 2px solid #5fbae9;
    }
    /* FORM TYPOGRAPHY*/

    input[type=button],
    input[type=submit],
    input[type=reset] {
      background-color: #4f70ce;
      border: none;
      color: white;
      padding: 15px 80px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      text-transform: uppercase;
      font-size: 13px;
      -webkit-box-shadow: 0 10px 30px 0 rgba(95, 186, 233, 0.4);
      box-shadow: 0 10px 30px 0 rgba(95, 186, 233, 0.4);
      -webkit-border-radius: 5px 5px 5px 5px;
      border-radius: 5px 5px 5px 5px;
      margin: 5px 20px 40px 20px;
      -webkit-transition: all 0.3s ease-in-out;
      -moz-transition: all 0.3s ease-in-out;
      -ms-transition: all 0.3s ease-in-out;
      -o-transition: all 0.3s ease-in-out;
      transition: all 0.3s ease-in-out;
    }

    input[type=button]:hover,
    input[type=submit]:hover,
    input[type=reset]:hover {
      background-color: #39ace7;
    }

    input[type=button]:active,
    input[type=submit]:active,
    input[type=reset]:active {
      -moz-transform: scale(0.95);
      -webkit-transform: scale(0.95);
      -o-transform: scale(0.95);
      -ms-transform: scale(0.95);
      transform: scale(0.95);
    }

    input[type=text] {
      background-color: #f6f6f6;
      border: none;
      color: #0d0d0d;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 5px;
      width: 85%;
      border: 2px solid #f6f6f6;
      -webkit-transition: all 0.5s ease-in-out;
      -moz-transition: all 0.5s ease-in-out;
      -ms-transition: all 0.5s ease-in-out;
      -o-transition: all 0.5s ease-in-out;
      transition: all 0.5s ease-in-out;
      -webkit-border-radius: 5px 5px 5px 5px;
      border-radius: 5px 5px 5px 5px;
    }

    input[type=text]:focus {
      background-color: #fff;
      border-bottom: 2px solid #5fbae9;
    }

    input[type=text]:placeholder {
      color: #cccccc;
    }

    input[type=password] {
      background-color: #f6f6f6;
      border: none;
      color: #0d0d0d;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 5px;
      width: 85%;
      border: 2px solid #f6f6f6;
      -webkit-transition: all 0.5s ease-in-out;
      -moz-transition: all 0.5s ease-in-out;
      -ms-transition: all 0.5s ease-in-out;
      -o-transition: all 0.5s ease-in-out;
      transition: all 0.5s ease-in-out;
      -webkit-border-radius: 5px 5px 5px 5px;
      border-radius: 5px 5px 5px 5px;
    }

    input[type=password]:focus {
      background-color: #fff;
      border-bottom: 2px solid #5fbae9;
    }

    input[type=password]:placeholder {
      color: #cccccc;
    }
    /* ANIMATIONS */
    /* Simple CSS3 Fade-in-down Animation */

    .fadeInDown {
      -webkit-animation-name: fadeInDown;
      animation-name: fadeInDown;
      -webkit-animation-duration: 1s;
      animation-duration: 1s;
      -webkit-animation-fill-mode: both;
      animation-fill-mode: both;
    }

    @-webkit-keyframes fadeInDown {
      0% {
        opacity: 0;
        -webkit-transform: translate3d(0, -100%, 0);
        transform: translate3d(0, -100%, 0);
      }
      100% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
      }
    }

    @keyframes fadeInDown {
      0% {
        opacity: 0;
        -webkit-transform: translate3d(0, -100%, 0);
        transform: translate3d(0, -100%, 0);
      }
      100% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
      }
    }
    /* Simple CSS3 Fade-in Animation */

    @-webkit-keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    @-moz-keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    .fadeIn {
      opacity: 0;
      -webkit-animation: fadeIn ease-in 1;
      -moz-animation: fadeIn ease-in 1;
      animation: fadeIn ease-in 1;
      -webkit-animation-fill-mode: forwards;
      -moz-animation-fill-mode: forwards;
      animation-fill-mode: forwards;
      -webkit-animation-duration: 1s;
      -moz-animation-duration: 1s;
      animation-duration: 1s;
    }

    .fadeIn.first {
      -webkit-animation-delay: 0.4s;
      -moz-animation-delay: 0.4s;
      animation-delay: 0.4s;
    }

    .fadeIn.second {
      -webkit-animation-delay: 0.6s;
      -moz-animation-delay: 0.6s;
      animation-delay: 0.6s;
    }

    .fadeIn.third {
      -webkit-animation-delay: 0.8s;
      -moz-animation-delay: 0.8s;
      animation-delay: 0.8s;
    }

    .fadeIn.fourth {
      -webkit-animation-delay: 1s;
      -moz-animation-delay: 1s;
      animation-delay: 1s;
    }
    /* Simple CSS3 Fade-in Animation */

    .underlineHover:after {
      display: block;
      left: 0;
      bottom: -10px;
      width: 0;
      height: 2px;
      background-color: #56baed;
      content: "";
      transition: width 0.2s;
    }

    .underlineHover:hover {
      color: #0d0d0d;
    }

    .underlineHover:hover:after {
      width: 100%;
    }
    /* OTHERS */

    *:focus {
      outline: none;
    }

    #icon {
      width: 60%;
    }

    * {
      box-sizing: border-box;
    }

    #bottomwrapper {
      height: 15%;
      width: 100%;
    }

    #footer {
      height: 100%;
      width: 100%;
    }

    #add {
      display: inline-block;
    }
  </style>
  </head>
  <body>

  <div id="topnavicontainer">
    <nav class="navbar navbar-expand-md navbar-dark bg-secondary" id="topnavbar">
      <div id="logocontainer">
        <a class="navbar-brand" href="#">Auction GO!</a>
      </div>
      <div class="collapse navbar-collapse text-center justify-content-end" id="menucontainer">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">
              <i class="fa fa-user fa-fw"></i> Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="join.jsp">
              <i class="fa fa-user fa-fw"></i> Sign Up</a>
          </li>
        </ul>
        <a class="btn navbar-btn ml-2 btn-secondary text-white">
          <i class="fa d-inline fa-lg fa-user-circle-o"></i> My Page</a>
      </div>
    </nav>
  </div>
  <div id="allwrapper">
    <div id="centerwrapper">
      <!--       <div id="content"> -->
      <div class="wrapper fadeInDown" >
        <h1 class="display-4">
          <b>Sign Up</b>
        </h1>
        <br>
        <form action="join.mem" method="post">
          <div id="formContent" class="">
            <!-- Tabs Titles -->
            <b>
            
              <script>
<!-- 유효성검사 시작 -->

var idCheck = 0;
var pwdCheck = 0;
//아이디 체크하여 가입버튼 비활성화,중복확인'
function checkId(){
	var inputed = $(".id").val();
	$.ajax({
		url:"idCheck.mem",
		type:"post",
		data:{
			checkId : inputed
			},
		success:function(data){
			if(inputed=="" && data==0){
				$("#signUpBtn").prop("disabled", true);
				$("#signUpBtn").css("background-color","#aaaaaa");
				$("#id").css("background-color", "#FFCECE");
				idCheck=0;
			}else if(data==1){
				$("#id").css("background-color", "#B0F6AC");
				idCheck=1;
				if(idCheck==1 && pwdCheck==1){
					$("#signUpBtn").prop("disabled", false);
					$("#signUpBtn").css("background-color","#4CAF50");
					signupCheck();
				}
			}else if(data==0){
				$("#signUpBtn").prop("disabled", true);
				$("#signUpBtn").css("background-color","#aaaaaa");
				$("#id").css("background-color", "#FFCECE");
				idCheck=0;
			}else if(inputed==""){
				$("#id").css("background-color","#fff");
			}		
		}
	});	
	
}
//재입력 비밀번호 체크하여 가입버튼 비활성화 또는 맞지않음 알림;
function checkPwd(){
	var inputed = $(".pass").val();
	var reinputed = $("#pw2").val();
	if(reinputed =="" && (inputed !=reinputed || inputed==reinputed)){
		$("#signUpBtn").prop("disabled",true);
		$("#signUpBtn").css("background-color","#aaaaaa");
		$("#pw2").css("background-color", "#FFCECE");
	}
	else if(inputed == reinputed){
		$("#pw2").css("background-color","#B0F6AC");
		pwdCheck =1;
		if(idCheck==1 && pwdCheck==1){
			$("#signUpBtn").prop("disabled",false);
			$("#signUpBtn").css("background-color","#4CAF50");
			signupCheck();
		}
	}else if(inputed!=reinputed){
		pwdCheck=0;
		$("#signUpBtn").prop("disabled",true);
		$("#signUpBtn").css("background-color","#aaaaaa");
		$("#pw2").css("background-color","#FFCECE");
	}
	if(inputed==""&& reinputed=="" ){
		$("#pw2").css("background-color","#fff");
	}	
}
//이름 이메일 폰 주소를 입력하지 않았을 경우 가입버튼 비활성화
function signupCheck(){
	var name = $("#name").val();
	var email = $("#email").val();
	var phone = $("#phone").val();
	var sample6_postcode = $("#sample6_postcode").val();
	var sample6_address = $("#sample6_address").val();
	var sample6_address2 = $("#sample6_address2").val();
	if(name=="" || email=="" || phone=="" || sample6_postcode=="" || sample6_address=="" || sample6_address2==""){
		$("#signUpBtn").prop("disabled",true);
		$("#signUpBtn").css("background-color","#aaaaaa");
	}else{
		
	}
}

// 이름 이메일 번호 레겕스
window.onload = function() {
	
	document.getElementById("name").oninput = function() {
		var text = document.getElementById("name").value;
		var regex = /[^가-힣]{2,}/;
		if (regex.test(text)) {
			var re = text.replace(regex, '');
			document.getElementById("name").value = re;
		}
	};
	

};


// cancel 버튼 눌렀을 시 회원정보 입력값들 초기화
$("document").ready(function(){
	
	
	$("#cancel").click(function(){
		$(".id").val(null);
		$(".pass").val(null);
		$("#signUpBtn").prop("disabled",true);
		$("#signUpBtn").css("background-color","#aaaaaa");
		$("#name").val(null);
		$("#sample6_postcode").val(null);
		$("#id").css("background-color","#fff");
		$("#pw2").css("background-color","#fff");
	});
	$("#id").keyup(function(){
		var id = $("#id").val();
		if(id==""){
			$("#id").css("background-color","#fff");
		}
		

		
		
	});
	
	 
	    $("#phone").on('keydown', function(e){
	       // 숫자만 입력받기
	        var trans_num = $(this).val().replace(/-/gi,'');
		var k = e.keyCode;
					
		if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k <= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
		{
	  	    e.preventDefault();
		}
	    }).on('blur', function(){ // 포커스를 잃었을때 실행합니다.
	        if($(this).val() == '') return;
	 
	        // 기존 번호에서 - 를 삭제합니다.
	        var trans_num = $(this).val().replace(/-/gi,'');
	      
	        // 입력값이 있을때만 실행합니다.
	        if(trans_num != null && trans_num != '')
	        {
	            // 총 핸드폰 자리수는 11글자이거나, 10자여야 합니다.
	            if(trans_num.length==11 || trans_num.length==10) 
	            {   
	                // 유효성 체크
	                var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
	                if(regExp_ctn.test(trans_num))
	                {
	                    // 유효성 체크에 성공하면 하이픈을 넣고 값을 바꿔줍니다.
	                    trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");                  
	                    $(this).val(trans_num);
	                }
	                else
	                {
	                    alert("유효하지 않은 전화번호 입니다.");
	                    $(this).val("");
	                    $(this).focus();
	                }
	            }
	            else 
	            {
	                alert("유효하지 않은 전화번호 입니다.");
	                $(this).val("");
	                $(this).focus();
	            }
	      }
	  });  
	
})


  </script>
              <!-- signup Form -->
              <img src="사람.png" height="20" width="20">
              <label>I D</label>
              <input type="text" id="id" name="id" required class="id" oninput="checkId()" class="fadeIn second filter-light" placeholder="Please enter your ID">
              <br>
              <img src="pw2.png" height="20" width="20">
              <label>PW</label>
              <input type="password" id="pw" name="password" required class="pass" oninput="checkPwd()" class="fadeIn third" placeholder="Input Your Password">
              <br>
              <img src="pw.png" height="20" width="20">
              <label>PW</label>
              <input type="password" id="pw2" name="password2" required class="pass" oninput="checkPwd()" class="fadeIn third" placeholder="Input Your Password Again"> </b>
          </div>
          <div id="formContent">
            <label>*NAME</label>
            <input type="text" class="fadeIn second" required class="id" id="name" name="name"  oninput="checkId()" placeholder="Input Your Name">
            <label>*EMAIL</label>
            <input type="text" id="email" required class="id" oninput="checkId()" class="fadeIn second" name="email" placeholder="Input Your Email">
            <br>
            <img src="전화.png" height="20" width="20">
            <label>PH</label>
            <input type="text" id="phone" required class="id"  class="fadeIn second" name="phone" placeholder="Input Your Phone">
            <br>
            <div id="add" class="w-100 text-left px-2">
              <img src="주소.png" height="20" width="20">
              <label>ADD</label>
              <input type="text" id="sample6_postcode" class="" required class="id" oninput="checkId()" name="addresspost" placeholder="Input Your Address" readonly="readonly" style="width:60%">
              <button class="" type="button" id="post"  style="width: 160px; height: 50px; background-color:#4f70ce; color:white;  font-size: 13px; font-weight: 600;" onclick="sample6_execDaumPostcode()"> 우편번호찾기 </button>
              <input type="text" id="sample6_address" required class="id" oninput="checkId()" class="" name="address" placeholder="Input Your Address" readonly="readonly" style="width: 85%; margin-left: 68px">
              <input type="text" id="sample6_address2" required class="id" oninput="checkId()" class="" name="address2" placeholder="Input Your Detailed Address"  style="width: 85%; margin-left: 68px; margin-bottom:20px;" draggable="true"> </div>
            <!-- 다음 API -->
            <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
            <script>
              function sample6_execDaumPostcode() {
                  new daum.Postcode({
                      oncomplete: function(data) {
          
                          var fullAddr = ''; 
                          var extraAddr = '';
          
                          if (data.userSelectedType === 'R') {
                              fullAddr = data.roadAddress;
          
                          } else {
                              fullAddr = data.jibunAddress;
                          }
                          if(data.userSelectedType === 'R'){
                              if(data.bname !== ''){
                                  extraAddr += data.bname;
                              }
                              if(data.buildingName !== ''){
                                  extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                              }
                              fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                          }
                          document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                          document.getElementById('sample6_address').value = fullAddr;
                          document.getElementById('sample6_address2').focus();
                      }
                  }).open();
              }
            </script>
          </div>
          <div style="text-align:center;">
            <input type="submit" id="signUpBtn" class="fadeIn fourth" value="Sign up">
            <input type="button"  id="cancel" class="fadeIn fourth" value="CANCEL"> </div>
        </form>
      </div>
      <!--   </div> -->
    </div>
    <b> </b>
  </div>
  <b> </b>
  <b>
    <div id="bottomwrapper" class="bg-secondary">
      <div id="footer">
        <div class="text-white bg-secondary">
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
    </div>
  </b>
  
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 10px;right:10px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:250px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;
    <img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"> </pingendo>
</body>

</html>