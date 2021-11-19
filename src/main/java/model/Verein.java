package model;

import java.io.Serializable;

public class Verein implements Serializable {
	public Verein() {
	}

	private static final long serialVersionUID = -8775754595661794167L;

	private int id;
	private String name;
	private String zweck;
	private String adresse;
	private String email;
	private String kategorie;
	private String stadt;

	public Verein(int id, String name, String zweck, String adresse, String email, String kategorie, String stadt) {
		super();
		this.id = id;
		this.name = name;
		this.zweck = zweck;
		this.adresse = adresse;
		this.email = email;
		this.kategorie = kategorie;
		this.stadt = stadt;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZweck() {
		return zweck;
	}
	public void setZweck(String zweck) {
		this.zweck = zweck;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getKategorie() {
		return kategorie;
	}
	public void setKategorie(String kategorie) {
		this.kategorie = kategorie;
	}
	public String getStadt() {
		return stadt;
	}
	public void setStadt(String stadt) {
		this.stadt = stadt;
	}

	public String addToCsv(){
		return id + "," + name + "," + zweck + "," + adresse + "," + email + "," + kategorie + "," + stadt+ ",";
	}
}

