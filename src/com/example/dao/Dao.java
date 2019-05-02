package com.example.dao;

import java.sql.*;
//import java.sql.DriverManager;
//import java.sql.*;

public class Dao {

	public static Connection getCon(){
		Connection con=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle://mynpdb.crws7ah1tadq.us-west-2.rds.amazonaws.com:1521/mynpdb","root","harshola1");
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
}
