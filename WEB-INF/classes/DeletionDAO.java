import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;

public class DeletionDAO 
{
	Connection conn = null;
    PreparedStatement pstmt = null;
	Statement stmt = null;
	// JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost/sgdanalyser";
	public DeletionDAO() {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL,"root",null);
		} catch(Exception e) {
			System.out.println("Error in DAO delete : "+e.toString());
		}
	}
		  
	public int delete(DeletionDTO deletionDTO)
	{
		int delete=0;
		try {
			System.out.println("consumer_id " + deletionDTO.getConsumerId());
			String Sqlslt = "delete from SGDA_POWER_ANALYZE_DATA where consumer_id=?";
			pstmt = conn.prepareStatement(Sqlslt);
			pstmt.setString(1, deletionDTO.getConsumerId());
			pstmt.executeUpdate();
			System.out.println("delete");
			delete=1;
		//System.out.println(pstmt.toString());
			
		} catch(Exception e) {
			System.out.println("Error in DAO delete : "+e.toString());
		}
		return delete;
	}
	
}
