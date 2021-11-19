
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
<a href="addVereinForm.jsp">neuen verein hinzufügen</a>
<h1>Alle Vereine1</h1>

<table border="1" width="90%">
    <tr>
        <th>Name</th>
        <th>Zweck</th>
        <th>Adresse</th>
        <th>Email</th>
        <th>Kategorie</th>
        <th>Stadt</th>
        <th>Bearbeiten</th>
    </tr>

    <c:forEach items="${dataAccess.vereine}" var="verein">
        <tr>
            <td>${verein.getName()}</td>
            <td>${verein.getZweck()}</td>
            <td>${verein.getAdresse()}</td>
            <td>${verein.getEmail()}</td>
            <td>${verein.getKategorie()}</td>
            <td>${verein.getStadt()}</td>
            <td><a href="editVereinForm.jsp?id=${verein.getId()}">Bearbeiten</a></td>
            <td><a href="deleteVerein.jsp?id=${verein.getId()}">Löschen</a></td>
        </tr>
    </c:forEach>
</table>
<a href="downloadFile.jsp">download as csv</a>
<input type="button" value="Download as csv" onclick="">
</body>
</html>
