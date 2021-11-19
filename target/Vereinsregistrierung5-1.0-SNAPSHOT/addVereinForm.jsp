<%--
  Created by IntelliJ IDEA.
  User: Markus Eisl
  Date: 19.11.2021
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Verein hinzufügen</h1>
<form action="editVerein.jsp" method="post" >
    <input type="hidden" name="id" value=""/>
    <label>
        Name: <input value=""/>
    </label>
    <label>
        Zweck: <input value=""/>
    </label>
    <label>
        Adresse: <input value=""/>
    </label>
    <label>
        Email: <input value=""/>
    </label>
    <label>
        Kategorie: <input value=""/>
    </label>
    <label>
        Stadt: <input value=""/>
    </label>

    <input type="submit" value="Speichern" />
</form>
</body>
</html>
