<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
    String id = session.getId();
    out.println(id);  //信息写入响应网页，out是内置的输出信息到网页的对象  
    //通过session在服务端关联保存信息
    if(session.getAttribute("name")==null){ //说明该键值未设置
      session.setAttribute("name","fanghong" ); //在session数据存储集合中，设置键名为name的值
    }
  %>
  <%=session.getAttribute("name") %>

</body>
</html>