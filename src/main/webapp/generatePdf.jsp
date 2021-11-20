<%@ page import="model.PdfGenerator" %>
<%@ page import="com.itextpdf.text.DocumentException" %><%--
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
        PdfGenerator generator = new PdfGenerator();
        try {
            generator.generatePdf();
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        response.sendRedirect("viewVereine.jsp");
    %>

</body>
</html>
