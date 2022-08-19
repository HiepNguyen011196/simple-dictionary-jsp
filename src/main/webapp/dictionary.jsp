<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.io.PrintWriter" %><%--

  Created by IntelliJ IDEA.
  User: hiepn
  Date: 8/19/2022
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin Chao");
    dic.put("how", "The nao");
    dic.put("book", "Quyen sach");
    dic.put("computer", "May tinh");

    String search = request.getParameter("search");

    PrintWriter writer = response.getWriter();

    String result = dic.get(search);
    if (result != null) {
        writer.println("Word: " + search);
        writer.println("Result: " + result);
    } else {
        writer.println("Not found");
    }
%>
</body>
</html>
