<%@ page import="Service.VereinService" %><%--
  Created by IntelliJ IDEA.
  User: arditsaliji
  Date: 19.11.21
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    VereinService service = new VereinService();
    try{
        service.deleteVerein(Integer.parseInt(id));
    } catch (Exception e) {
        e.printStackTrace();
    }
    response.sendRedirect("viewVereine.jsp");
%>
</body>
</html>
