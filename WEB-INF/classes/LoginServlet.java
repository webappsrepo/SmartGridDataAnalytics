import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.List;
import java.util.ArrayList;

public class LoginServlet extends HttpServlet {
	private LoginDAO loginDAO = new LoginDAO();
	LoginDTO loginDTO = new LoginDTO();
	RequestDispatcher dispatcher = null;
   	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {     
		try
		{  
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String mode=request.getParameter("mode");
			if(mode != null) {
				String page = null;
				if(mode.equals("LOGIN")) {
					System.out.println("Login User : " + request.getParameter("username"));
					String userCategory = login(request,response );
					System.out.println("userCategory : " + userCategory);
					if("viewer".equals(userCategory)) {
						dispatcher = request.getRequestDispatcher("jsp\\cus_trans_search1.jsp");
						dispatcher.forward(request, response);
						} 
				}
				
				
			}
		}catch(Exception e)
		{
			System.out.println("Error : "+e.toString());
		}
		
	}

	private String login(HttpServletRequest request, HttpServletResponse response) {
		String username  = request.getParameter("username");
		String password = request.getParameter("password");
		LoginDTO loginDTO = new LoginDTO();
		loginDTO.setUserName(username);
		loginDTO.setPassword(password);
		String userCategory = loginDAO.login(loginDTO);
		return userCategory;
	}
}
