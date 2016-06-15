<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*, java.io.*, java.util.*"%>
<jsp:useBean id="insert" scope="session" class="SQLPck.Insert"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
       int CarID = Integer.parseInt(request.getParameter("CarIDtxt"));
        String FirmName = request.getParameter("FirmNametxt");
        String CarModel = request.getParameter("CarModeltxt");
        String CarType = request.getParameter("CarTypetxt");
        String ProductYear = request.getParameter("ProductYeartxt");
        int Km = Integer.parseInt(request.getParameter("Kmtxt"));
        String Color = request.getParameter("Colortxt");
        String EngineType = request.getParameter("EngineTypetxt");
        double Price = Double.parseDouble(request.getParameter("Pricetxt"));
        String ExtraInfomation = request.getParameter("ExtraInfomationtxt");
        
        insert.InsertARowCar(CarID, FirmName, CarModel, CarType, ProductYear, Km, Color, EngineType, Price, ExtraInfomation);
    %>
    
   
<br>
    <%=CarID%><br>
    <%=FirmName%> <br>
    <%=CarModel%> <br>
    <%=CarType%> <br>
    <%=ProductYear%> <br>
    <%=Km%> <br>
    <%=Color%> <br>
    <%=EngineType%><br>
    <%=Price%> <br>
    <%=ExtraInfomation%> <br>
    <h1> YOUR RECORD İS ADDED!</h1>
    <a href="index.jsp">GO TO INDEX</a> 
    
</body>
</html>
