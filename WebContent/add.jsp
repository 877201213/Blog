<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  errorPage="error.jsp" %>
<%@ page import="java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@ include file="head.jsp" %>  

 <jsp:include page="head.jsp"  /> 
 
   
    <%
      int a=8;
      int b=10;
      long sum = a+b;
      System.out.println(sum);
      Date date = new Date();
    //  int div = 10/0 ;   //会产生异常
    //  throw new Exception();
     %>
     
     <%=sum%>
     <p>
                月:<%= date.getMonth()+1 %>
     </p>
   
<%=application.getAttribute("app") %>    
</body>
</html>