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
             PreparedStatement pstmt = connection.prepareStatement("INSERT INTO verein (id, name, kategorie, zweck, entstehung, adresse, obmann) VALUES (?, ?, ?, ?, ?, ?, ?)")){
            pstmt.setInt(1, id);
            pstmt.setString(2, name);
            pstmt.setString(3, kategorie);
            pstmt.setString(4, zweck);
            pstmt.setString(5, entstehung);
            pstmt.setString(6, adresse);
            pstmt.setString(7, obmann);

            pstmt.executeUpdate();
        }catch (SQLException throwables) {
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
             PreparedStatement pstmt = connection.prepareStatement("DELETE FROM verein WHERE id=?")) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
