<%@ page import="Service.VereinService" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Markus Eisl
  Date: 19.11.2021
  Time: 16:10
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
    try{

        service.addVerein(50, "'x'", "'x'", "'x'", "'x'", "'x'", "'x'");
    } catch (Exception e) {
        e.printStackTrace();
    }
    response.sendRedirect("viewVereine.jsp");
%>
</body>
</html>
