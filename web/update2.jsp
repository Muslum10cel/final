 
<%@page language="java" import="java.sql.*, java.io.*, java.util.*"%>
<jsp:useBean id="seaobj" scope="session" class="SQLPck.Search"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <form action="update3.jsp" method="post">
        <%  String updateACar = request.getParameter("updatecar");
            ResultSet rs = seaobj.getACarDetails(Integer.parseInt(updateACar));
                while (rs.next()) {
                    int t1 = rs.getInt("CarID");
                    String t2 = rs.getString("FirmName");
                    String t3 = rs.getString("CarModel");
                    String t4 = rs.getString("CarType");
                    String t5 = rs.getString("ProductYear");
                    int t6 = rs.getInt("Km");
                    String t7 = rs.getString("Color");
                    String t8 = rs.getString("EngineType");
                    double t9 = rs.getDouble("Price");
                    String t10 = rs.getString("ExtraInfomation");
        %>

        <BR><label>CarID:</label>
        <input type="text" id="CarIDtxt" name="CarIDtxt" value="<%=t1%>"></input>
        <BR><label>FirmName:</label>
        <input type="text" id="FirmNametxt" name="FirmNametxt" value="<%=t2%>"></input>
        <BR><label>CarModel:</label>
        <input type="text" id="CarModeltxt" name="CarModeltxt" value="<%=t3%>"></input>
        <BR><label>CarTypeD:</label>
        <input type="text" id="CarTypetxt" name="CarTypetxt" value="<%=t4%>"></input>
        <BR><label>ProductYear:</label>
        <input type="text" id="ProductYeartxt" name="ProductYeartxt" value="<%=t5%>"></input>
        <BR><label>Km:</label>
        <input type="text" id="Kmtxt" name="Kmtxt" value="<%=t6%>"></input>
        <BR><label>Color:</label>
        <input type="text" id="Colortxt" name="Colortxt" value="<%=t7%>"></input>
        <BR><label>EngineType:</label>
        <input type="text" id="EngineTypetxt" name="EngineTypetxt" value="<%=t8%>"></input>
        <BR><label>Price:</label>
        <input type="text" id="Pricetxt" name="Pricetxt" value="<%=t9%>"></input>
        <BR><label>ExtraInfomation:</label>
        <input type="text" id="ExtraInfomationtxt" name="ExtraInfomationtxt" value="<%=t10%>"></input>
        <BR>

        <%}%>  

        <input type="submit" id="update" name="update">
    </form>
</body>
</html>
