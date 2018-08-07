package lti.hola.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lti.hola.bean.RegisterBean;


public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String referer = request.getHeader("referer");
		if (referer.contains("home.jsp"))
		{
			//Request coming from home for login authentication
			
			RegisterBean user = LoginController.authenticate(request);
			if(user !=null)
			{
				//Login successful
				response.sendRedirect("profile.jsp");
			}
			else {
				//login failed
				response.sendRedirect("home.jsp");
			}
		}
		else if (referer.contains("register.jsp"))
		{
			// Request coming for user registration
			if(RegisterController.registration(request))
			{
				response.sendRedirect("home.jsp");
			}
			else {
				response.sendRedirect("register.jsp");
			}
		}
		else if (referer.contains("forget.jsp"))
		{
			// Request coming for updating pasword
			if(LoginController.forgetPassword(request))
			{
				response.sendRedirect("change.jsp");
			}
			else
				response.sendRedirect("forget.jsp");
		}
		else
		{
			if(LoginController.changePassword(request))
				response.sendRedirect("home.jsp");
			else
				response.sendRedirect("change.jsp");
		}
	}
	

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//delegeating call to get method to perform common logic
		doGet(request, response);	// method chaining
		
	}

}
