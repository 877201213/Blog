package edu.jmi.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Echo
 */
public class Echo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Echo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Echo post");
		request.setCharacterEncoding("utf-8");//设置post方法提交的form参数值的解码
		String str=request.getParameter("echo");//获取输入的字符串
		System.out.println(str);		
	    HttpSession session=request.getSession();//获取session对象
		session.setAttribute("echostr", str);//将浏览器端输入的数据存储到seesion中
		response.sendRedirect("echo2.jsp");//重定向到echo2.jsp
		
	}

}
