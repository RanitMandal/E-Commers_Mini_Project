package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.UserBean;
import org.model.dao.LoginDao;

/**
 *Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("uemail");
		String pass=request.getParameter("upass");
		HttpSession session=request.getSession();
		UserBean ubean=new UserBean();
		ubean.setEmail(email);
		ubean.setPass(pass);
		
		LoginDao ld=new LoginDao();
		boolean status=ld.login(ubean);
		if(status)
		{	
			String uName = ld.userName();
			session.setAttribute("KEY", uName);
			//setting session to expiry in 30 mins
			session.setMaxInactiveInterval(1*60);
			response.sendRedirect("index.jsp");
			
			/** for jsp page
			 <%
//allow access only if session exists
String user = null;
if(session.getAttribute("user") == null){
	response.sendRedirect("login.html");
}else user = (String) session.getAttribute("user");
			 
			*/
		}
		else {
			response.sendRedirect("user_login.jsp?msg=invalid");
		}
	}

}
