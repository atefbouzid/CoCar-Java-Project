package com.Cocarclasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Postuler {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cocar","root","");
			
		}catch(Exception e) {
			System.out.println("Error : "+e);
		}
		return conn;
	}
	public static int save (int cin , int id) {
		int status = 0;
		Connection conn;
		conn = getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement("INSERT INTO postuler (CIN,id) VALUES (?,?)");
			ps.setInt(1, cin);
			ps.setInt(2, id);
			status = ps.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
