package model;
import java.sql.*;


	
	public class customer {
		 private String namecust;
		 private String idcust;
		 private String cphone;
		

		public customer(){
		
		}

		// customer name
		public void setnamecust(String namecust){
		    this.namecust = namecust;
		  }
		 

		public String getnamecust(){
		  return namecust;
		}

		// customer id
		public void setidcust(String idcust){
		  this.idcust = idcust;
		}

		public String getidcust(){
		 return idcust;
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

		
		
	}
		

