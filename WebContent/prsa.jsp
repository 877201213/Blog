<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!  int cnt = 0; %>
<%
  int cnt = 1 ;

  request.setAttribute("req","来个大饼"); 
  application.setAttribute("app", "全局变量");
%>
<%=cnt++ %>
<%=request.getAttribute("req") %>
<%=application.getAttribute("app") %>
<jsp:forward page="error.jsp"></jsp:forward> 
 
 <a href="error.jsp">拿大饼</a>
</body>
</html>