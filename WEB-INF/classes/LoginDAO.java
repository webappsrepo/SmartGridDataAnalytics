import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;

public class LoginDAO 
{
	Connection conn = null;
    //PreparedStatement pstmt = null;
	Statement stmt = null;
	// JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost/sgdanalyser";
	public LoginDAO() {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL,"root",null);
		} catch(Exception e) {
			System.out.println("Error in DAO Registration : "+e.toString());
		}
	}
		  
	public String login(LoginDTO loginDTO)
	{
		String userCategory = null;
		
		try {
			System.out.println("Username:" + loginDTO.getUserName() +", Password:" + loginDTO.getPassword());
			String Sqlslt = "SELECT user_catagory FROM SGDA_USER_DETAILS WHERE user_name=? and user_password=?";
			PreparedStatement pstmt = conn.prepareStatement(Sqlslt);
			pstmt.setString(1,loginDTO.getUserName());
			pstmt.setString(2,loginDTO.getPassword());
		   System.out.println(pstmt.toString());
			ResultSet rs = pstmt.executeQuery();
			while(rs.next())
			{
				userCategory = rs.getString("user_catagory");
				System.out.println("User Catagory:  " + userCategory) ;
			}
		} catch(Exception e) {
			System.out.println("Error in DAO LOGIN : "+e.toString());
		}
		return userCategory;
	}
}

  