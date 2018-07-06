<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script>

</script>

<body>
<table border=1>
<c:choose>

      <c:when test="${not empty result}">
       <c:forEach var="item" items="${result}">
     <tr><td align="left">${item.getBidder_seq()}
     		<td> ${item.getBuyer_id() }
     <td> ${item.getBuyer_id() }
     <td> ${item.getBidprice() }
     <td> ${item.getBiddate()}
     <td> ${item.getState()}
     </tr>
    
       </c:forEach>
       
                 </c:when>
     </c:choose>
     </table>
<form action="bidder.bid" method=post>
<input name="board_seq" value="607">
<button type=submit>

</button>
</form>
</body>
</html>