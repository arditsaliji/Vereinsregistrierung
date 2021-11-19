<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Markus Eisl
  Date: 19.11.2021
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>Helo world</p>
    <%
        System.out.println("<p> hello2</p>");
        String filename = "c:\\myjdbcfile.csv";
        String driver = "com.mysql.jdbc.Driver";
        Statement stmt;
        try
        {
            FileWriter fw = new FileWriter(filename);
            fw.append("ID");
            fw.append(';');
            fw.append("XX");
            fw.append(';');
            fw.append("XX");
            fw.append('\n');

            Class.forName(driver).newInstance();
            Connection connection = DriverManager
                    .getConnection("jdbc:mysql://s76.goserver.host:3306/web122_db9?useSSL=false", "web122_9", "service2021");

            String query = "select * from verein";
            stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);


            while(rs.next())
            {
                fw.append(rs.getString(1));
                fw.append(',');
                fw.append(rs.getString(2));
                fw.append(',');
                fw.append(rs.getString(3));
                fw.append('\n');
            }
            fw.flush();
            fw.close();
            connection.close();
            System.out.println("<b>You have successfully created Csv file.</b>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
