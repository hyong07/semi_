<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
     <html>

    <head>
        <title>sms - jsp </title>
      
    </head>

    <body onload="loadJSON()">
    <form method="post" name="smsForm" action="smssend.jsp">
    	<input type="hidden" name"action" value="go">
        <textarea name="msg" cols="30" rows="10" style="width:455px" placehorder="내용"></textarea>
     	<br>
        <input type="text" name="rphone" value="" placeholder="받는 번호">
        <br>
        
        <br>번호 및 이름 삽입(보내는 내용에 이름포함)
        
        <input type="text" name="destination" value="" size=80> 
        <br>
        <input type="hidden" name="sphone1" value="010">
        <input type="hidden" name="sphone2" value="6302">
        <input type="hidden" name="sphone3" value="4563">
            <input type="submit" value="전송">
       
    </form>
    </body>

    </html>
            