<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
  <%
    
    request.setCharacterEncoding("utf-8");//设置post方式提交参数的编码为utf-8
    
    String str = request.getParameter("echo"); //获取网页文本框名为echo的参数值
    if(str==null){  //判断参数是否存在
    	str="" ;
     } 
    String str2=str;   //将输入赋给回显文本
    if(str.equals("芝麻开门")){
    	str2="门开了";
        response.setContentType("text/html; charset=UTF-8");
        
    	//response.sendRedirect("index.html");// 网页跳转（重定向）到指定网页
    %>		
       <jsp:forward page="index.html"></jsp:forward>
       
 <%   }   
    
        
  %>
  
 
  
  <form action="echo.jsp" method="post">
    <input type="text" name="echo"  value="<%=str%>" >
    <input type="submit" value="呼喊"  />  
     
  
  </form>
  
  <%=str2 %>
  <br>
  <%=request.getRemoteAddr() %>
  <br>
  <%=request.getContextPath() %>

</center>


</body>
</html>