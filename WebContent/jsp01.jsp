<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String header        = "Hello World!!!";
	Date   today         = new Date();              // ctrl + shift + m
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY 년 MM월 dd일 HH시 mm분 ss초");
	String           now = sdf.format(today);
	
%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
 <h1><% out.print(header); %></h1>
 <p>서버시간<%= now %></p>
 <p>클라이언트시간:<span></span></p>
 
 <script>
	const spanEl = document.querySelector('span')
	spanEl.innerHTML = (new Date()).toLocaleString();
	
 </script>
 
</body>
</html>