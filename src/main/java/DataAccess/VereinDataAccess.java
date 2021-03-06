package DataAccess;

import DataAccess.filter.Filter;
import model.Verein;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VereinDataAccess  implements Serializable {

    public List<Verein> getVereine() throws Exception {
        System.out.println("I am in");
        List<Verein> vereine = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://s76.goserver.host:3306/web122_db9?useSSL=false", "web122_9", "service2021");
             Statement statement = connection.createStatement()) {

            ResultSet resultSet = statement.executeQuery("SELECT * from verein");
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String zweck = resultSet.getString("zweck");
                String adresse = resultSet.getString("adresse");
                String entstehung = resultSet.getString("entstehung");
                String kategorie = resultSet.getString("kategorie");
                String obmann = resultSet.getString("obmann");

                Verein verein = new Verein(id, name, zweck, adresse, entstehung, kategorie, obmann);
                System.out.println(verein.getName());
                vereine.add(verein);
            }
            return vereine;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public Verein getVereinById(int id) throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://s76.goserver.host:3306/web122_db9?useSSL=false", "web122_9", "service2021");
             Statement statement = connection.createStatement()) {

            ResultSet resultSet = statement.executeQuery("SELECT * from verein where id = " + id);

            if (resultSet.next()) {
                String name = resultSet.getString("name");
                String zweck = resultSet.getString("zweck");
                String adresse = resultSet.getString("adresse");
                String entstehung = resultSet.getString("entstehung");
                String kategorie = resultSet.getString("kategorie");
                String obmann = resultSet.getString("obmann");

                return new Verein(id, name, zweck, adresse, entstehung, kategorie, obmann);
            }
        }
        return null;
    }

    public List<Verein> getVereine(Filter filter) throws Exception {
        System.out.println("I am in");
        List<Verein> vereine = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://s76.goserver.host:3306/web122_db9?useSSL=false", "web122_9", "service2021");
             Statement statement = connection.createStatement()) {

            String query = "SELECT * FROM verein";
            if (filter.getCondition() != null && !filter.getCondition().equals("")) {
                query += " WHERE " + filter.getCondition();
            }
            System.out.println(query);
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String zweck = resultSet.getString("zweck");
                String adresse = resultSet.getString("adresse");
                String entstehung = resultSet.getString("entstehung");
                String kategorie = resultSet.getString("kategorie");
                String obmann = resultSet.getString("obmann");

                Verein verein = new Verein(id, name, zweck, adresse, entstehung, kategorie, obmann);
                System.out.println(verein.getName());
                vereine.add(verein);
            }
            return vereine;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public boolean addVerein(int id, String name, String zweck, String adresse, String entstehung, String kategorie, String obmann) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://s76.goserver.host:3306/web122_db9?useSSL=false", "web122_9", "service2021");
             Statement statement = connection.createStatement()) {

            ResultSet resultSet = statement.executeQuery("INSERT INTO verein(id, name, zweck, adresse, entstehung, kategorie, obmann) " +
                    "VALUES (" + id + "," + name + "," + kategorie + "," + zweck + "," + entstehung + "," + adresse + "," + obmann + ")");
            System.out.println(resultSet.toString());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return true;
    }
}
