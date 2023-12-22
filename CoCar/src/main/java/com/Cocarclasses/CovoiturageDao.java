package com.Cocarclasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CovoiturageDao {
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
	public static int save(Covoiturage c) throws SQLException {
		int status = 0;
		Connection conn = getConnection();
		String lieuDepart = c.getLieuDepart();
		String lieuArrivee = c.getLieuArrivee();
		Lieu ld = new Lieu();
		ld.setNomVille(lieuDepart);
		Lieu la = new Lieu();
		la.setNomVille(lieuArrivee);
		if (LieuDao.check(la)==false) {
			LieuDao.save(la);
		}
		if(LieuDao.check(ld)==false) {
			LieuDao.save(ld);
		}
		try {
		PreparedStatement ps = conn.prepareStatement("INSERT INTO covoiturage (depart,arrivee,time,prix,carType,nbPlaces,description,CIN,heureDepart) VALUES(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, ld.getNomVille());
		ps.setString(2, la.getNomVille());
		ps.setString(3, c.getDate());
		ps.setDouble(4, c.getPrix());
		ps.setString(5, c.getCarType());
		ps.setInt(6, c.getNbPlace());
		ps.setString(7, c.getDescription());
		ps.setInt(8, c.getCIN());
		ps.setString(9, c.getHeureDepart());
		status = ps.executeUpdate();
		}catch(Exception e) {
			System.out.println("Error de création de covoiturage"+e);
		}
		return status;
	}
	public static List<Covoiturage> recherche (Covoiturage c) {
		ResultSet rs = null ;
		Connection conn;
		List<Covoiturage> l = new ArrayList<Covoiturage>();
		conn=getConnection();
		try {
		PreparedStatement ps = conn.prepareStatement("Select * from covoiturage where depart=? and arrivee=?");
		ps.setString(1, c.getLieuDepart());
		ps.setString(2, c.getLieuArrivee());
		rs = ps.executeQuery();
		while(rs.next()) {
			Covoiturage cov = new Covoiturage();
			cov.setCarType(rs.getString("carType"));
			cov.setCIN(rs.getInt("cin"));
			cov.setLieuArrivee(rs.getString(9));
			cov.setLieuDepart(rs.getString(8));
			cov.setPrix(rs.getDouble(4));
			cov.setId(rs.getInt(1));
			l.add(cov);
		}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return l;
		}
		
		
	}		
