import myPackage.AnalyzedDataDTO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;
import java.text.DateFormat;  
import java.text.SimpleDateFormat;  

public class AnalyzedDataDAO
{
	
	Connection conn = null;
    PreparedStatement pstmt = null;
	Statement stmt = null;
	// JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost/sgdanalyser";
   	  
	  public AnalyzedDataDAO()
	  {
		  
		  try
		  {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL,"root",null);
		  }catch(Exception e)
		  {
			   System.out.println("Error in DAO : "+e.toString());
		  }
	  }
		 
		
 public List<AnalyzedDataDTO> listUsers()
  {
	  AnalyzedDataDTO analyzeddataDTO = new AnalyzedDataDTO();
	  List<AnalyzedDataDTO> userList = new ArrayList<AnalyzedDataDTO>();
	  
	   try
	  {
		  
	  System.out.println(" Select User Details DAO list ");
	  
	  stmt = conn.createStatement();
	  
	  String Sqlslt="SELECT * FROM SGDA_POWER_ANALYZE_DATA";
				pstmt = conn.prepareStatement(Sqlslt);
				ResultSet rs=pstmt.executeQuery();

      //STEP 5: Extract data from result set
      while(rs.next())
	  {
		  
		analyzeddataDTO.setConsumerId(rs.getString("consumer_id"));
		analyzeddataDTO.setTransformerId(rs.getString("transformer_id"));
	  java.sql.Time dbSqlTime1= rs.getTime("start_time");
	  DateFormat dateFormat1= new SimpleDateFormat(" hh:mm:ss");  
      String strDate1= dateFormat1.format(dbSqlTime1);  
	//System.out.println("Converted String: " + strDate1);  
	  analyzeddataDTO.setStartTime(strDate1);
	  java.sql.Time dbSqlTime2= rs.getTime("end_time");
	  DateFormat dateFormat2= new SimpleDateFormat(" hh:mm:ss");  
      String strDate2= dateFormat2.format(dbSqlTime2);  
    //System.out.println("Converted String: " + strDate2); 
	  analyzeddataDTO.setEndTime(strDate2);
	  analyzeddataDTO.setTotalPowerconsumed(rs.getString("total_power_cosumption"));
	  analyzeddataDTO.setTechnicalLoss(rs.getString("technical_loss"));
      analyzeddataDTO.setTotalPowergeneration(rs.getString("total_power_generation"));
	 
	   System.out.println(" CONSUMER_ID : "+analyzeddataDTO.getConsumerId());
		System.out.println(" TRANSFORMER_ID: "+analyzeddataDTO.getTransformerId());
	 	System.out.println(" START_TIME: "+analyzeddataDTO.getStartTime());
		System.out.println(" END_TIME : "+analyzeddataDTO.getEndTime());
		System.out.println(" TOTAL_POWER_CONSUMPTION : "+analyzeddataDTO.getTotalPowerconsumed());
		System.out.println(" TECHNICAL_LOSSES : "+analyzeddataDTO.getTechnicalLoss());
		System.out.println(" TOTAL_POWER_GENERATION : "+analyzeddataDTO.getTotalPowergeneration());
	  
	  userList.add(analyzeddataDTO);
	  
	  }       
	  
	  }catch(Exception e)
	  {
	      System.out.println("Error in DAO getUserDetails  : "+e.toString());
	  }
	  
	return   userList;
  }
}