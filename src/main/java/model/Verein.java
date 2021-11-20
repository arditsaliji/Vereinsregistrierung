package model;

import java.io.Serializable;

public class Verein implements Serializable {
	public Verein() {
		this.name = "";
		this.adresse = "";
		this.kategorie = "";
		this.zweck = "";
		this.obmann = "";
		this.entstehung = "";
	}

	private static final long serialVersionUID = -8775754595661794167L;

	private int id;
	private String name;
	private String zweck;
	private String adresse;
	private String entstehung;
	private String kategorie;
	private String obmann;

	public Verein(int id, String name, String zweck, String adresse, String entstehung, String kategorie, String obmann) {
		super();
		this.id = id;
		this.name = name;
		this.zweck = zweck;
		this.adresse = adresse;
		this.entstehung = entstehung;
		this.kategorie = kategorie;
		this.obmann = obmann;
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
	public String getEntstehung() {
		return entstehung;
	}
	public void setEntstehung(String entstehung) {
		this.entstehung = entstehung;
	}
	public String getKategorie() {
		return kategorie;
	}
	public void setKategorie(String kategorie) {
		this.kategorie = kategorie;
	}
	public String getObmann() {
		return obmann;
	}
	public void setObmann(String obmann) {
		this.obmann = obmann;
	}

	public String addToCsv(){
		return id + "," + name + "," + zweck + "," + adresse + "," + entstehung + "," + kategorie + "," + obmann + ",";
	}
}

