<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
      int a = 10;
      int b = 20;
      //从网页、url请求提取出相应名称变量的值，值都是字符串
      String str = request.getParameter("a");
      if(str!=null){
       a = Integer.valueOf(str);  //将字符串转成数字
       System.out.println("a:"+a);
      }
      
      str = request.getParameter("b");
      if(str!=null){
       b = Integer.valueOf(str);  //将字符串转成数字
       System.out.println("b:"+b);
      }
      long m = a * b;
    
    
    %>
    <%= m%>
</body>
</html>