<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="newex10.country"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>country</title>
        
    </head>
    <body>
        <%
            country con = new country("USA", "Washington D.C.", "USD", 328200000);
            country con1 = new country("Canada", "Ottawa", "CAD", 38000000);
            country con2 = new country("Mexico", "Mexico City", "MXN", 130000000);
            ArrayList<country> obj = new ArrayList<country>();
            obj.add(con);
            obj.add(con1);
            obj.add(con2);
String s="name-capital-currency-population";
pageContext.setAttribute("s", s);
pageContext.setAttribute("obj", obj);
        %>
        <table border="2px">
  <thead>
    <tr>
      <th>Name</th>
      <th>Capital</th>
      <th>Currency</th>
      <th>Population</th>
    </tr>
  </thead>
    <tbody>
    <c:forEach items="${pageScope.obj}" var="i">
            <tr>
                <td><c:out value="${i.getName()}"></c:out></td>
                <td><c:out value="${i.getCapital()}"></c:out></td>
                <td><c:out value="${i.getCurrency()}"></c:out></td>
                <td style="color: red"><c:out value="${i.getPopulation()}"></c:out></td>
            </tr>
        </c:forEach>  
  </tbody>
</table>
          

    </body> 
</html>