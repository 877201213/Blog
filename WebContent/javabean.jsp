<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="edu.jmi.model.*" %>
<jsp:useBean id="usr" scope="page" class="edu.jmi.model.User"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

 // User usr = new User();
  usr.setName("马云");
  usr.setPassword("其实我是阿里爸爸");

%>
<%=usr.getName() %>
<%=usr.getPassword() %>

</body>
</html>