<%@ page import="DataAccess.VereinDataAccess" %>
<%@ page import="model.Verein" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/styles.css" />
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1 class = "header">Vereinsregistrierung</h1>
    <div id="loginDiv">
        <label class="login" >
            Username: <input />
        </label>
        <br>
        <br>
        <label class="login">
            Passwort: <input type="password"/>
        </label>
        <br>
        <br>
        <input type="button" class="betterButtons" value="Login" onclick="location.href='viewVereine.jsp'">

    </div>
</body>
</html>
