package Service;

import model.Verein;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

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

            statement.executeUpdate("Update Verein SET name = " + verein.getName() + ", zweck = " + verein.getZweck()
                                        + ", adresse = " + verein.getAdresse() + ", email = " + verein.getEmail()
                                        + ", kategorie = " + verein.getKategorie() + ", stadt = " + verein.getStadt()
                                        + " WHERE id = " + verein.getId());
        }
    }
}
