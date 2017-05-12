package edu.jmi.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello
 */
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hello() {
        super();
        System.out.print("hello");
        // TODO Auto-generated constructor stub
    }

	@Override
	public void destroy() {//閿�瘉鏃惰璋冪敤锛屽tomcat鍋滄鏃讹紝涓�埇鍐欓噴鏀捐祫婧愮殑鏂规硶
		// TODO Auto-generated method stub
		super.destroy();
		System.out.println("hello destroy");
	}

	@Override
	public void init() throws ServletException {//瀵硅薄瀹炰緥new鍚庤璋冪敤锛屼竴鑸斁缃垵濮嬪寲浠ｇ爜
		// TODO Auto-generated method stub
		super.init();
		System.out.println("hello init");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet琚皟鐢�");
		response.setCharacterEncoding("utf-8");//璁剧疆鍝嶅簲澶达紝缂栫爜鏄疓BK,濡傛灉鏄痷tf-8锛屼細鍑虹幇涔辩爜
		PrintWriter out = response.getWriter();//鑾峰彇鑳藉悜缃戦〉閲屽啓淇℃伅鐨勫璞�
		out.print("<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'><title>Insert title here</title></head>"+
		"<body><p><font size='24px'>hello,浣犲ソ涓栫晫</font></p></body><html>");  //缃戦〉閲屽啓鍏ユ枃鏈�
		out.close();  //鍏抽棴杈撳嚭瀵硅薄
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost琚皟鐢�");
		doGet(request,response);
	}

}
