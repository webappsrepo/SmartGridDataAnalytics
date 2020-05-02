import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.List;
import java.util.ArrayList;
import java.util.Date;
import java.util.List; 

public class Deletionservlet extends HttpServlet 
{
	private DeletionDAO deletionDAO = new DeletionDAO();
	DeletionDTO deletionDTO = new DeletionDTO();
   public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
   {     
	try
	{   
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String consumer_id = request.getParameter("user");
		 System.out.println(" CONSUMER_ID : "+request.getParameter("user"));
		 System.out.println(" CONSUMER_ID : "+consumer_id);
		 deletionDTO.setConsumerId(consumer_id);
		int delete = deletionDAO.delete(deletionDTO);
		RequestDispatcher dispatcher =null;
		if(delete==1) {
						dispatcher = request.getRequestDispatcher("jsp\\view.jsp");
					} 
				if (dispatcher != null) {
					dispatcher.forward(request, response);
				}  
				//RequestDispatcher dispatcher = request.getRequestDispatcher("jsp\\display.jsp");
			/*if(mode != null) {
				String page = null;
				if(mode.equals("Search")) {
					//System.out.println("Login User : " + request.getParameter("username"));
					String consumer_id1 = login(request,response );
					if(consumer_id1.equals(consumer_id)) {
						page = "display.jsp";
					} 
				}
				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp\\display.jsp");
				if (dispatcher != null) {
					dispatcher.forward(request, response);
				}  
			}*/
		}catch(Exception e)
		{
			System.out.println("Error : "+e.toString());
		}
	}
		/*private String login(HttpServletRequest request, HttpServletResponse response) {
		String consumer_id = request.getParameter("consumer_id");
		String transformer_id = request.getParameter("transformer_id");
	
		analyzeddataDTO.setConsumerId(consumer_id);
		analyzeddataDTO.setTransformerId(transformer_id);
		String consumer_id1 = analyzeddataDAO.login(analyzeddataDTO);
		return consumer_id1;
	}*/
}