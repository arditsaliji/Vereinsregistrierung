<%@ page import="DataAccess.VereinDataAccess" %>
<%@ page import="model.Verein" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: arditsaliji
  Date: 18.11.21
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/styles.css" />

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String id = request.getParameter("id");
        VereinDataAccess dataAccess = new VereinDataAccess();
        Verein verein = null;
        try {
            verein = dataAccess.getVereinById(Integer.parseInt(id));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    %>

    <h1 class="header">Verein <%=verein.getName()%> bearbeiten</h1>
    <form id="form" action="editVerein.jsp" method="post" >
        <div style="margin-right: 25%;
    margin-left: 25%;
    border: solid black 1px;
    border-radius: 10px;
    padding-bottom: 1%;
    text-align: center;
    align-self: center;
    align-content: center;
    background-color: #c4c4c4;">
            <h2 style="border-bottom: solid #8f8f8f 1px;padding-bottom: 1%;">Datenblatt</h2>
        <label>
            Name: <input name="name" value="<%= verein.getName()%>"/>
        </label>
        <br>
            <br>
        <label>
            Zweck: <input name="zweck" value="<%= verein.getZweck()%>"/>
        </label>
        <br>
            <br>
        <label>
            Adresse: <input name="adresse" value="<%= verein.getAdresse()%>"/>
        </label >
        <br>
            <br>
        <label>
            Entstehung: <input name="entstehung" value="<%= verein.getEntstehung()%>"/>
        </label>
        <br>
            <br>
        <label>
            Kategorie: <input name="kategorie" value="<%= verein.getKategorie()%>"/>
        </label>
        <br>
            <br>
        <label >
            Obmann: <input name="obmann" value="<%= verein.getObmann()%>"/>
        </label>
        <br>
            <br>
            <div style="border-top: #9f9f9f solid 1px; margin-bottom: 1%"></div>
        <input type="submit" class="betterButtons"value="Speichern" /></div>
    </form>
</body>
</html>
