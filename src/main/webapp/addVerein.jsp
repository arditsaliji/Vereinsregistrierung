<%@ page import="Service.VereinService" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.Random" %><%--
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
<jsp:useBean id="verein" class="model.Verein" />
<jsp:setProperty property="*" name="verein"/>

<%
    VereinService service = new VereinService();
    try{
        service.addVerein(Math.abs(new Random().nextInt()/2), verein.getName(), verein.getZweck(), verein.getAdresse(), verein.getEmail(), verein.getKategorie(), verein.getStadt());
    } catch (Exception e) {
        e.printStackTrace();
    }
    response.sendRedirect("viewVereine.jsp");
%>
</body>
</html>
