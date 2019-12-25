package model;
import java.sql.*;


public class employee {
	 private String empname;
	 private int idemp;
	 private int ephone;
	 private String position;
	

	public employee(){
	
	
	}

	// Name
	public void setEmpname(String empname){
	    this.empname = empname;
	  
	} 

	public String getEmpname(){
	  return empname;
	}

	// Id
	public void setIdemp(int idemp){
	  this.idemp = idemp;
	}

	public int getIdemp(){
	 return idemp;
	}

	// Phone
	public void setEphone(int ephone){
		   this.ephone = ephone;
	 
	}

	public int getEphone(){
	 return ephone;
	}

	// Position
	public void setPosition(String position){
	  this.position = position;
	}

	public String getPosition(){
	 return position;
	}

}	