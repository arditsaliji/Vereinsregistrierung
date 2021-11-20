<%@ page import="model.Verein" %><%--
  Created by IntelliJ IDEA.
  User: Markus Eisl
  Date: 19.11.2021
  Time: 16:11
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
    Verein verein = new Verein();
%>
<h1 class="header">Verein hinzufügen</h1>
<form action="addVerein.jsp" method="post" >
    <div class="flexbox">
    <input type="hidden" name="id" value=""/>
    <label>
        Name: <input name="name" value="<%=verein.getName() %>"/>
    </label>
    <label>
        Zweck: <input name="zweck" value="<%=verein.getZweck() %>"/>
    </label>
    <label>
        Adresse: <input name="adresse" value="<%=verein.getAdresse() %>"/>
    </label>
    <label>
        Email: <input name="email" value="<%=verein.getEmail() %>"/>
    </label>
    <label>
        Kategorie: <input name="kategorie" value="<%=verein.getKategorie() %>"/>
    </label>
    <label>
        Stadt: <input name="stadt" value="<%=verein.getStadt() %>"/>
    </label>

    <input type="submit" class="betterButtons"value="Verein hinzufügen" />
    </div>
</form>
</body>
</html>
