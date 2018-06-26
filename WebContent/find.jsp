<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css">
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


  
</head>

<body>

<c:choose>
		<c:when test="${not empty result}">
		<script>
		alert(${result});
		</script>
		</c:when>
		</c:choose>

  <div class="py-5" >
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h1 class="display-4">비밀번호 찾기</h1>
          <form class="findPw">
            <div class="form-group">
              <label>Email address</label>
              <input type="email" class="form-control" placeholder="Enter email">
              <small class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
              <label>ID</label>
              <input type="text" class="form-control" placeholder="Enter ID"> </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
        <div class="col-md-6">
          <h1 class="display-4">아이디 찾기</h1>
          <form action="idFind.mem" method="post">
            <div class="form-group">
              <label>Email address</label>
              <input type="email" name="email" class="form-control" required class= "id" placeholder="Enter email">
              <small class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
              <label>Name</label>
              <input type="text" name="name" class="form-control" required class= "id" placeholder="Enter Name"> </div>
            <button type="submit" id="findId" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  
</body>

</html>