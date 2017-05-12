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
<p>

</p>
<% 
    String str = (String)session.getAttribute("echostr"); //获取session中的键值，第一次访问肯定为空
    if(str==null){  //判断回显值是否存在
    	str="" ;
    }

     %>
<form action="Echo" method="post">
    <input type="text" name="echo"  value="" >
    <input type="submit" value="呼喊"  />       
  
</form>
<p>
<%=str %>

</p>




</center>
</body>
</html>