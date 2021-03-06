package model;
import java.sql.*;

public class customer {
	
	private String namecust;
	private String email;
	private String cphone;
	private String rType;
	private String duration;
	
	private static final String INSERT_CUST_SQL = "INSERT INTO users" +
	        "  (name, phone,email,rType,duration) VALUES " +
	        " (?, ?, ?);";
	private static final String DELETE_CUST_SQL = "delete from users where id = ?;";
	private static final String UPDATE_CUST_SQL = "update users set name = ? where id = ?;";
	
	public customer(){
		
		namecust = "unknown";
		email = "unknown";
		rType = "unknown";
		cphone = "unknown";
		duration = "unknown";
	}
	
	

	// customer name
	public void setnamecust(String namecust){
	    this.namecust = namecust;
	  }
	 

	public String getnamecust(){
	  return namecust;
	}
	
	// customer email
		public void setEmail(String email){
		    this.email = email;
		  }
		 

		public String getEmail(){
		  return email;
		}

	// customer phone no
	public void setcphone(String cphone){
	  this.cphone = cphone;
	 }
	

	public String getcphone(){
	 return cphone;
	}
	
	// customer room type
		public void setrType(String rType){
		    this.rType = rType;
		  }
		 

		public String getrType(){
		  return rType;
		}

		// customer duration
		public void setduration(String duration){
		    this.duration = duration;
		  }
		 

		public String getduration(){
		  return duration;
		}
		
	public boolean insertCustRecord(){
		 //System.out.println(INSERT_CUST_SQL);
		 
		 //Establishing a Connection
		 try{
			//Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?useTimezone=true&serverTimezone=UTC", "root", "Nurain_98");
			PreparedStatement statement = con.prepareStatement(INSERT_CUST_SQL);
			
			//Create a statement using connection object
			
			statement.setString(1,getnamecust());
			statement.setString(2,getEmail());
			statement.setString(3,getcphone());
			statement.setString(4,getrType());
			statement.setString(5,getduration());
			
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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?useTimezone=true&serverTimezone=UTC\", \"root\", \"Nurain_98");
			PreparedStatement statement = con.prepareStatement(DELETE_CUST_SQL);
			
			statement.setString(1, namecust);
			
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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?useTimezone=true&serverTimezone=UTC\\\", \\\"root\\\", \\\"Nurain_98");
			PreparedStatement statement = con.prepareStatement(UPDATE_CUST_SQL);
		
			statement.setString(1,getEmail());
			statement.setString(2,getcphone());
			statement.setString(3,getrType());
			statement.setString(4,getduration());
			
			
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


