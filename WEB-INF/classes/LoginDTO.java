public class LoginDTO 
{
 private String userName;
 private String passWord;

 
 public void setUserName(String username)
 {
	 this.userName = username;
 }
 
 public void setPassword(String password)
 {
	 this.passWord = password;
 }
 
 
 public String getUserName()
 {
	 return this.userName;
 }
 public String getPassword()
 {
	 return this.passWord;
 }

 
}