package com.Cocarclasses;

public class Covoiturage {
		private String lieuDepart,carType,description,lieuArrivee, date, heureDepart;
		private int id,nbPlace,CIN;
		private double prix;
		public Covoiturage() {}
		public String getCarType() {
			return carType;
		}
		public void setCarType(String carType) {
			this.carType = carType;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public int getCIN() {
			return CIN;
		}
		public void setCIN(int cIN) {
			CIN = cIN;
		}
		public String getLieuDepart() {
			return lieuDepart;
		}
		public void setLieuDepart(String lieuDepart) {
			this.lieuDepart = lieuDepart;
		}
		public String getLieuArrivee() {
			return lieuArrivee;
		}
		public void setLieuArrivee(String lieuArrivee) {
			this.lieuArrivee = lieuArrivee;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		public int getNbPlace() {
			return nbPlace;
		}
		public void setNbPlace(int nbPlace) {
			this.nbPlace = nbPlace;
		}
		public double getPrix() {
			return prix;
		}
		public void setPrix(double prix) {
			this.prix = prix;
		}
		public String getHeureDepart() {
			return heureDepart;
		}
		public void setHeureDepart(String heureDepart) {
			this.heureDepart = heureDepart;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		
}
