import myPackage.AnalyzedDataDTO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.List;
import java.util.ArrayList;

public class AnalyzedDataServlet extends HttpServlet 
{
	AnalyzedDataDAO analyzedDataDAO = new AnalyzedDataDAO();
	AnalyzedDataDTO analyzeddataDTO = new AnalyzedDataDTO();
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession();
		RequestDispatcher rd = null;
            try {
				//AboutusDO aboutusDO = new AboutusDO();
				String actionType = request.getParameter("actionType");
				System.out.println("action type="+actionType);
				
			 }catch (Exception ex) {
				System.out.println("Exception :"+ex.toString());
            }        
       
		}
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		try {
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			HttpSession session = request.getSession();
			String actionType = request.getParameter("actionType");
			System.out.println("actionType : " + actionType);
			String transformeId = request.getParameter("transformer_id");
			System.out.println("transformeId : " + transformeId);
			String consumerId = request.getParameter("consumer_id");
			System.out.println("consumerId : " + consumerId);
			boolean status;
			
			if(actionType == null) {
				actionType="VIEW";
			}
			if("VIEW".equalsIgnoreCase(actionType)) {
				System.out.println("List Users");
				analyzeddataDTO.setTransformerId(transformeId);
				System.out.println("transformeId : " + analyzeddataDTO.getTransformerId());
				analyzeddataDTO.setConsumerId(consumerId);
				System.out.println("consumerId : " + analyzeddataDTO.getConsumerId());
				
				List<AnalyzedDataDTO> userList = listUsers(request,response);
				System.out.println("Finish");
				//request.setAttribute("userlist",userList);
				session.setAttribute("actionType",actionType);
				session.setAttribute("about",userList);
				RequestDispatcher dispatcher = request.getRequestDispatcher("jsp\\viewdata.jsp");
				if (dispatcher != null) {
					dispatcher.forward(request, response);
				}  
			}
			
		}
		catch(Exception e) {
			System.out.println("Error in servlet : " + e.toString()+e.getMessage());
		}
	}
	
	private  List<AnalyzedDataDTO>  listUsers(HttpServletRequest request, HttpServletResponse response) {
		List<AnalyzedDataDTO>  userList = analyzedDataDAO.listUsers();
		return userList;
	}
}
	