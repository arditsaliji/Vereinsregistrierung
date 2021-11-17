package test;
import DataAccess.VereinDataAccess;
import model.Verein;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TestConnection {

	public static void main(String[] args) {
		System.out.println(getVereine().get(0).getName());
		VereinDataAccess vereinDataAccess = new VereinDataAccess();
		//System.out.println(vereinDataAccess.getVereine().size());
	}

	public static List<Verein> getVereine() {
		System.out.println("I am in");
		List<Verein> vereine = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try (Connection connection = DriverManager.
				getConnection("jdbc:mysql://s76.goserver.host:3306/web122_db9?useSSL=false", "web122_9", "service2021");
			 Statement statement = connection.createStatement()) {

			ResultSet resultSet = statement.executeQuery("SELECT * from verein");
			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String zweck = resultSet.getString("zweck");
				String adresse = resultSet.getString("adresse");
				String email = resultSet.getString("email");
				String kategorie = resultSet.getString("kategorie");
				String stadt = resultSet.getString("stadt");

				Verein verein = new Verein(id, name, zweck, adresse, email, kategorie, stadt);
				System.out.println(verein.getName());
				vereine.add(verein);
			}
			return vereine;
		} catch (Exception e) {
			System.out.println(e.getMessage() + "Es ist ein Fehler passiert!!!");
			return new ArrayList<>();
		}
	}
}
