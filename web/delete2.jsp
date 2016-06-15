<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*, java.io.*, java.util.*"%>
<jsp:useBean id="delobj" scope="session" class="SQLPck.Delete"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
        <%
        String[] delarray = request.getParameterValues("delCars");

        for (int i = 0; i < delarray.length; i++) {
            delobj.DeleteARowCar(Integer.parseInt(delarray[i]));

       }%>

    <h1>Your data is deleted!</h1>
    <a href="index.jsp">GO TO INDEX PAGE</a>
</body>
</html>
