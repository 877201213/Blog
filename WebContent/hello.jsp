<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
  this is jsp page
  <!-- 在后台输出信息 -->
  <%
    System.out.println("hehehe");
    int cnt2 = 1;
  %>
  <br>
  <!-- 将内容写入网页 -->
  <%="<h2>hello explorer</h2>" %>
  <!-- 汉字写入网页，可能出现乱码 -->
  <%="难忘九一八" %>
  <!--  前端执行的js 脚本 -->
  <script type="text/javascript">
      alert("9.18");
  </script>
  <br>
  <%! int cnt = 1;   %>
  <%= cnt++ %>
  <br>
  <%= cnt2++ %>
  
  <%=session.getId() %>
  <%=session.getAttribute("name") %>
  
</body>
</html>