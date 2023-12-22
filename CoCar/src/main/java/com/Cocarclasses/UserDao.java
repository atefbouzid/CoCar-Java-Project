package com.Cocarclasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.sql.ResultSetMetaData;

public class UserDao {
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
	public static int save (User u) {
		int status=0;
		Connection conn;
		try {
			conn = getConnection();
			PreparedStatement ps = conn.prepareStatement("INSERT INTO user (CIN,email,password,noms,prenom,birthday,numTel,permis,gender,adresse)VALUES(?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, u.getCIN());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getNoms());
			ps.setString(5, u.getPrenom());
			ps.setString(6, u.getBirthday());
			ps.setInt(7, u.getNumTel());
			ps.setInt(8, u.getPermis());
			ps.setString(9, u.getGender());
			ps.setString(10, u.getAdresse());
			status=ps.executeUpdate();
		}catch(Exception e) {
			System.out.println("Error : "+e);
		}
		return status;
	}
	public static boolean login (User u) {
		boolean status= false;
		Connection conn ;
		try {
			conn = getConnection();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM user WHERE email=? AND password=?");
			ps.setString(1, u.getEmail());
			ps.setString(2,	u.getPassword());
			ResultSet rs =ps.executeQuery();
			status = rs.next();
		}catch(Exception e) {
			System.out.println("Error"+e);
		}
		return status;
	}  
	
	public static Map<String,Object> logininfo(User u) {
		Connection conn;
		Map<String, Object> row = new HashMap<String, Object>() ;
		try {
		conn = getConnection();
		PreparedStatement ps = conn.prepareStatement("SELECT * FROM user WHERE email=? AND password=?");
		ps.setString(1, u.getEmail());
		ps.setString(2,	u.getPassword());
		ResultSet rs = ps.executeQuery();
		ResultSetMetaData md = rs.getMetaData();
		int col = md.getColumnCount();
		while(rs.next()) {
			for (int i=1; i<=col;i++) {
				row.put(md.getColumnName(i), rs.getObject(i));
			}
		}
		}catch(Exception e) {
				System.out.println("Error"+e);
		}
		return row;
	}
	public static int changeInfos (User u) {
		Connection conn;
		int status=0;
		try {
			conn = getConnection();
			PreparedStatement ps = conn.prepareStatement("Update user SET noms=?,prenom=?,numTel=?,adresse=?,password=? WHERE CIN=?");
			ps.setString(1,u.getNoms());
			ps.setString(2, u.getPrenom());
			ps.setInt(3,u.getNumTel());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getPassword());
			ps.setInt(6, u.getCIN());
			status=ps.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	
	
	
	
	
	
}
