package Service;

import model.Verein;

import java.sql.*;

public class VereinService {

    public void updateVerein(Verein verein) throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://s76.goserver.host:3306/web122_db9?useSSL=false", "web122_9", "service2021");
             Statement statement = connection.createStatement()) {

            statement.executeUpdate("Update verein SET name = '" + verein.getName() + "', zweck = '" + verein.getZweck()
                    + "', adresse = '" + verein.getAdresse() + "', entstehung = '" + verein.getEntstehung()
                    + "', kategorie = '" + verein.getKategorie() + "', obmann = '" + verein.getObmann()
                    + "' WHERE id = " + verein.getId());
        }
    }

    public void addVerein(int id, String name, String zweck, String adresse, String entstehung, String kategorie, String obmann) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://s76.goserver.host:3306/web122_db9?useSSL=false", "web122_9", "service2021");
             Statement statement = connection.createStatement()) {
            String query = "INSERT INTO verein " +
                    "VALUES (" + id + ",'" + name + "','" + zweck + "','" + adresse + "','" + entstehung + "','" + kategorie + "','" + obmann + "');";
            statement.executeUpdate(query);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void deleteVerein(int id) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://s76.goserver.host:3306/web122_db9?useSSL=false", "web122_9", "service2021");
             Statement statement = connection.createStatement()) {
            String query = "DELETE FROM verein where id = " + id;
            statement.executeUpdate(query);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
