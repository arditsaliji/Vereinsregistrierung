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
    <%
        String filename = "c:\\myjdbcfile.csv";
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "user_register";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "root";
        Statement stmt;
        try
        {
            FileWriter fw = new FileWriter(filename);
            fw.append("Employee Code");
            fw.append(',');
            fw.append("First Name");
            fw.append(',');
            fw.append("Last Name");
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
            System.out.println("<b>You are Successfully Created Csv file.</b>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
