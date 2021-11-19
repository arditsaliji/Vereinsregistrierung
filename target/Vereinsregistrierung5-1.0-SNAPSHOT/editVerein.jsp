<%@ page import="Service.VereinService" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: arditsaliji
  Date: 18.11.21
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="verein" class="model.Verein"/>

    <%
        VereinService service = new VereinService();
        try {
            service.updateVerein(verein);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect("viewVereine.jsp");
    %>

</body>
</html>
