<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title></title>
  </head>
  <body>
  <form action="index.jsp" method="get">
    <input type="text" name ="name"/>
    <input type ="submit" value="Translate">

    <%!
      Map<String, String> dic = new HashMap<>();
    %>

    <%
      dic.put("hello", "Xin chào");
      dic.put("how", "Thế nào");
      dic.put("book", "Quyển vở");
      dic.put("computer", "Máy tính");

      String search = request.getParameter("name");

      String result = dic.get(search);
      if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
      } else {
        out.println("Not found");
      }

    %>
  </form>

  </body>
</html>
