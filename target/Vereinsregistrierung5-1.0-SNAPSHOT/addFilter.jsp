<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DataAccess.VereinDataAccess" %>
<%@ page import="model.Verein" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DataAccess.filter.*" %>
<%@ page import="DataAccess.filter.Filter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gefilterte Ansicht</title>
</head>
<body>

<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/styles.css" />
<h1 class="header">Gefilterte Ansicht</h1>

<table class="tableStyling">
    <tr style="background-color: #c4c4c4!important;">
        <th>Name</th>
        <th>Zweck</th>
        <th>Adresse</th>
        <th>Entstehung</th>
        <th>Kategorie</th>
        <th>Obmann</th>
        <th>Bearbeiten</th>
        <th>Löschen</th>
    </tr>

    <%
        request.setCharacterEncoding("UTF-8");
        VereinColumns[] columns = {
                VereinColumns.NAME,
                VereinColumns.ZWECK,
                VereinColumns.ADRESSE,
                VereinColumns.KATEGORIE,
                VereinColumns.OBMANN
        };
        List<Filter> filters = new ArrayList<>();
        for (VereinColumns c : columns) {
            String tag = request.getParameter(c.name().toLowerCase(Locale.ROOT));
            if (tag != null && !tag.equals("")) {
                String selection = request.getParameter(c.name().toLowerCase(Locale.ROOT) + "Selection");
                if (selection.equals("Enthält")) filters.add(new ContainsFilter(c, tag, true));
                else if (selection.equals("Ist gleich")) filters.add(new EqualityFilter(c, tag, true));
                else if (selection.equals("Ist nicht gleich")) filters.add(new EqualityFilter(c, tag, false));
            }
        }
        filters.size();
        List<Verein> vereine = new VereinDataAccess().getVereine(new AndFilter(filters.toArray(new Filter[filters.size()])));
        pageContext.setAttribute("vereine", vereine);
    %>

    <c:forEach items="${vereine}" var="verein">
        <tr>
            <td>${verein.name}</td>
            <td>${verein.zweck}</td>
            <td>${verein.adresse}</td>
            <td>${verein.entstehung}</td>
            <td>${verein.kategorie}</td>
            <td>${verein.obmann}</td>
            <td><a href="editVereinForm.jsp?id=${verein.id}">Bearbeiten</a></td>
            <td><a href="deleteVerein.jsp?id=${verein.id}">Löschen</a></td>
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
    <br>
    <br>
    <input type="button" class="betterButtons" value="Filter zurücksetzen" onclick="location.href='viewVereine.jsp'">
</div>
</body>
</html>
