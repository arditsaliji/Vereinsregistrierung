
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>Alle Vereine</h1>

<%
   // VereinDataAccess dataAccess = new VereinDataAccess();
    //List<Verein> vereine = dataAccess.getVereine();
   // request.setAttribute("vereine",vereine);
   // request.setAttribute("name", dataAccess.getHello());

   // out.print(vereine.size());
%>

<table border="1" width="90%">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Zweck</th>
        <th>Adresse</th>
        <th>Email</th>
        <th>Kategorie</th>
        <th>Stadt</th>
    </tr>

    <c:forEach items="${dataAccess.vereine}" var="verein">
        <tr>
            <td>${verein.getId()}</td>
            <td>${verein.getName()}</td>
            <td>${verein.getZweck()}</td>
            <td>${verein.getAdresse()}</td>
            <td>${verein.getEmail()}</td>
            <td>${verein.getKategorie()}</td>
            <td>${verein.getStadt()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
