package model;
import java.sql.*;

public class customer {
	private String idcust;
	private String namecust;
	private String cphone;
	private static final String INSERT_CUST_SQL = "INSERT INTO users" +
	        "  (id, name, phone) VALUES " +
	        " (?, ?, ?);";
	private static final String DELETE_CUST_SQL = "delete from users where id = ?;";
	private static final String UPDATE_CUST_SQL = "update users set name = ? where id = ?;";
	
	public customer(){
		idcust = "unknown";
		namecust = "unknown";
		cphone = "unknown";
	}
	
	// customer id
		public void setidcust(String idcust){
		  this.idcust = idcust;
		}

		public String getidcust(){
		 return idcust;
		}

	// customer name
	public void setnamecust(String namecust){
	    this.namecust = namecust;
	  }
	 

	public String getnamecust(){
	  return namecust;
	}

	// customer phone no
	public void setcphone(String cphone){
	  if(cphone.length() <= 8){
	  this.cphone = cphone;
	 }
	}

	public String getcphone(){
	 return cphone;
	}

	public boolean insertCustRecord(){
		 //System.out.println(INSERT_CUST_SQL);
		 
		 //Establishing a Connection
		 try{
			//Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dev?autoReconnect=true&useSSL=false","DBlogin","DBpassword");
			PreparedStatement statement = con.prepareStatement(INSERT_CUST_SQL);
			
			//Create a statement using connection object
			statement.setString(1,getidcust());
			statement.setString(2,getnamecust());
			statement.setString(3,getcphone());
			
			//Execute the query or update query
			statement.executeUpdate();
			statement.close();
	        con.close();
			return true;
		 }catch (SQLException e) {
			 return false;
	        }
	 }
	
	private boolean deleteCustRecord() {
		
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dev?autoReconnect=true&useSSL=false","DBlogin","DBpassword");
			PreparedStatement statement = con.prepareStatement(DELETE_CUST_SQL);
			
			statement.setString(1, idcust);
			statement.executeUpdate();
			statement.close();
	        con.close();
			return true;
		}catch (SQLException e) {
			 return false;
        }
	}
	
	private boolean updateCustRecord() {
		
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dev?autoReconnect=true&useSSL=false","DBlogin","DBpassword");
			PreparedStatement statement = con.prepareStatement(UPDATE_CUST_SQL);
			
			statement.setString(1,getidcust());
			statement.setString(2,getnamecust());
			statement.setString(3,getcphone());
			
			//Execute the query or update query
			statement.executeUpdate();
			statement.close();
	        con.close();
			return true;
		} catch(Exception e)
        {
        	return false;
        }   
		
	}
	
}

