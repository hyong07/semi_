<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Untitled Page</title>
    <style>
 .big-box {
  width: 100%;
  background-color: gray;
  height: 100vh;
  border-top: 1px solid black;
}

body { 
  margin: 0px;
  padding: 0px;
}
</style>
     <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script>
    var page = 2;

    $(window).scroll(function() {
        if ($(window).scrollTop() == $(document).height() - $(window).height()) {
          console.log(++page);
          $("body").append('<div class="big-box"><h1>Page ' + page + '</h1></div>');
          
        }
    });

    </script>


</head>
<body>    
 <div class="big-box"><h1>Page 1</h1></div>
<div class="big-box"><h1>Page 2</h1></div>
</body>
</html>
