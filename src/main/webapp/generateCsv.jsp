<%@ page import="model.CsvGenerator" %><%--
  Created by IntelliJ IDEA.
  User: arditsaliji
  Date: 19.11.21
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        CsvGenerator generator = new CsvGenerator();
        generator.generateCsv();
        response.sendRedirect("viewVereine.jsp");
    %>

</body>
</html>
