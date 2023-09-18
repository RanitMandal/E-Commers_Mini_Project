package org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.UserBean;
import org.model.dao.SignupDao;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String name=request.getParameter("uname");
		String email=request.getParameter("uemail");
		String phno=request.getParameter("uphno");
		String pass=request.getParameter("upass");
		String ans=request.getParameter("uanswer");
		
		UserBean ubean=new UserBean();
		ubean.setName(name);
		ubean.setEmail(email);
		ubean.setPhno(phno);
		ubean.setPass(pass);
		ubean.setAns(ans);
		
		SignupDao sd=new SignupDao();
		int i=sd.insert(ubean);
		if(i!=0)
			//pw.println("Sucessfully Registered!");
			response.sendRedirect("user_login.jsp?msg=REGvalid");
		else
			//pw.println("Their is some Issue!");
			response.sendRedirect("user_login?msg=REGinvalid");
	}
	

}
