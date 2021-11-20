
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="dataAccess" class="DataAccess.VereinDataAccess" scope="session"/>



<html>
<head>
    <title>Alle Vereine</title>
</head>
<body>
<%@ page import="model.Verein" %>
<%@ page import="DataAccess.VereinDataAccess" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.FileWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/styles.css" />


<h1 class="header">Alle Vereine</h1>

<table class="tableStyling">
    <tr style="background-color: #c4c4c4!important;">
        <th >Name</th>
        <th>Zweck</th>
        <th>Adresse</th>
        <th>Entstehung</th>
        <th>Kategorie</th>
        <th>Obmann</th>
        <th>Bearbeiten</th>
        <th>Löschen</th>
    </tr>

    <c:forEach items="${dataAccess.vereine}" var="verein">
        <tr>
            <td>${verein.getName()}</td>
            <td>${verein.getZweck()}</td>
            <td>${verein.getAdresse()}</td>
            <td>${verein.getEntstehung()}</td>
            <td>${verein.getKategorie()}</td>
            <td>${verein.getObmann()}</td>
            <td><a href="editVereinForm.jsp?id=${verein.getId()}">Bearbeiten</a></td>
            <td><a href="deleteVerein.jsp?id=${verein.getId()}">Löschen</a></td>
        </tr>
    </c:forEach>
</table>
<h1 class="header">Funktionen</h1>
<div id="funcions">
<input type="button" class="betterButtons" value="Neuen Verein hinzufügen" onclick="location.href='addVereinForm.jsp'">
<br>
<br>
<input type="button" class="betterButtons" value="Tabelle als PDF runterladen" onclick="location.href='generatePdf.jsp'">
<br>
<br>
<input type="button" class="betterButtons" value="Tabelle als CSV runterladen" onclick="location.href='generateCsv.jsp'">
</div>
</body>
</html>
