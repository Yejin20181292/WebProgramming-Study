package com.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class paramServlet
 */
@WebServlet(description = "�α�����", urlPatterns = { "/paramServlet" })
public class paramServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paramServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html; charset=euc-kr");
		String name=request.getParameter("id");	
		String pwd=request.getParameter("pwd");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head></head>");
		out.print("<body> ����� �α����� �Է��Ͻÿ�. <br>");
		out.print("���̵�: " + name + "<br>");
		out.print("��й�ȣ: " + pwd + "<br>");
		out.print("<br> <a href='javascript:history.go(-1)'>�ٽ� ���ư���</a>");
		out.print("</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
