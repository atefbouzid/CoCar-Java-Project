package com.Cocarclasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LieuDao {
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
	public static int save(Lieu l) {
		int status=0;
		try {
		Connection conn = null;
		conn = getConnection();
		PreparedStatement ps = conn.prepareStatement("INSERT INTO lieu (nomVille,gouvernorat) values(?,?)");
		ps.setString(1, l.getNomVille());
		ps.setString(2, l.getGouvernorat());
		status = ps.executeUpdate();
		}catch(Exception e) {
				System.out.println(e);
		}
		return status;
	}
	public static boolean check(Lieu l) {
		boolean status = false;
		try {
			Connection conn = null;
			conn = getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from lieu where nomVille=?");
			ps.setString(1, l.getNomVille());
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
