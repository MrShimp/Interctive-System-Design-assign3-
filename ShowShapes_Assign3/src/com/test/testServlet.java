/**
 * By Pingyi Chen
*/
package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class testServlet
 */

public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String MSG="ABC";
	private String Shape="Oval";
	private String X="150";
	private String Y="150";
	private String BGColor="black";
	private String FGColor="green";
	private String FTStyle="REGULAR";
	private String FTSize="25";
	
	public static boolean isNum(String str){
		for (int i = 0; i < str.length(); i++){
			if (!Character.isDigit(str.charAt(i))){
				return false;
			}
		}
		return true;
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("reach the servlet");
    	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charest=UTF-8");
		PrintWriter out = response.getWriter();
		String shape = request.getParameter("Shape");
		String msg = request.getParameter("MSG");
		String x = request.getParameter("X");
		String y = request.getParameter("Y");
		String bgcolor=request.getParameter("BGColor");
		String fgcolor=request.getParameter("FGColor");
		String ftstyle=request.getParameter("FTStyle");
		String ftsize=request.getParameter("FTSize");
		//System.out.println(ftstyle);
		//System.out.println(fgcolor);
		//System.out.println(bgcolor);
		//System.out.println(test4);
		// 实际的逻辑是在这里
		if(!shape.isEmpty()) {
			Shape = shape;	
		}
		if(!msg.isEmpty()) {
			MSG = msg;
		}
		if(!x.isEmpty()&&isNum(x)) {
			
			X = x;
		}
		if(!y.isEmpty()&&isNum(Y)) {
			Y = y;
		}
		if(!bgcolor.isEmpty()) {
			BGColor = bgcolor;
			System.out.println("getin1");
		}
		if(!fgcolor.isEmpty()) {
			
			FGColor = fgcolor;
			System.out.println("getin2");
		}
		if(!ftstyle.isEmpty()) {
			FTStyle = ftstyle;
			System.out.println(FTStyle);
		}
		if(!ftsize.isEmpty()&&isNum(Y)) {
			FTSize = ftsize;
		}
	    
		System.out.println(FTStyle);
		System.out.println(FGColor);
				
	   request.setAttribute("Shape",Shape);
	   request.setAttribute("MSG",MSG);
	   request.setAttribute("X",X);
	   request.setAttribute("Y",Y);
	   request.setAttribute("BGColor",BGColor);
	   request.setAttribute("FGColor",FGColor);
	   request.setAttribute("FTSize",FTSize);
	   request.setAttribute("FTStyle",FTStyle);
	   
	   request.getRequestDispatcher("/index.jsp").forward(request,response);
	    
	   out.close();
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
