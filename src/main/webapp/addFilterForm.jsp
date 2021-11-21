
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="dataAccess" class="DataAccess.VereinDataAccess" scope="session"/>

<html>
<head>
    <title>Filter hinzufügen</title>
</head>
<body>
<%@ page import="model.Verein" %>
<%@ page import="DataAccess.VereinDataAccess" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.FileWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/styles.css" />


<h1 class="header">Filter hinzufügen</h1>
<form action="addFilter.jsp" method="post" accept-charset="UTF-8">
    <table class="tableStyling">
        <tr>
            <td>Name</td>
            <td>
                <select name="nameSelection">
                    <option>Enthält</option>
                    <option>Ist gleich</option>
                    <option>Ist nicht gleich</option>
                </select>
            </td>
            <td>
                <input name="name">
            </td>
        </tr>
        <tr>
            <td>Zweck</td>
            <td>
                <select name="zweckSelection">
                    <option>Enthält</option>
                    <option>Ist gleich</option>
                    <option>Ist nicht gleich</option>
                </select>
            </td>
            <td>
                <input name="zweck">
            </td>
        </tr>
        <tr>
            <td>Adresse</td>
            <td>
                <select name="adresseSelection">
                    <option>Enthält</option>
                    <option>Ist gleich</option>
                    <option>Ist nicht gleich</option>
                </select>
            </td>
            <td>
                <input name="adresse">
            </td>
        </tr>
        <tr>
            <td>Kategorie</td>
            <td>
                <select name="kategorieSelection">
                    <option>Enthält</option>
                    <option>Ist gleich</option>
                    <option>Ist nicht gleich</option>
                </select>
            </td>
            <td>
                <input name="kategorie">
            </td>
        </tr>
        <tr>
            <td>Obmann</td>
            <td>
                <select name="obmannSelection">
                    <option>Enthält</option>
                    <option>Ist gleich</option>
                    <option>Ist nicht gleich</option>
                </select>
            </td>
            <td>
                <input name="obmann">
            </td>
        </tr>
    </table>
    <br>
    <div id="funcions">
        <input type="submit" class="betterButtons" value="Filter anwenden" />
    </div>
</form>

</body>
</html>
