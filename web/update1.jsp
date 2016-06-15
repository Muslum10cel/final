<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*, java.io.*, java.util.*"%>
<jsp:useBean id="search" scope="session" class="SQLPck.Search"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>

        <form action="update2.jsp" method="post">

            <table border="1"> 
                <caption>TABLO BASLIĞIMIZ</caption>
                <tr bgcolor="#999988">
                    <th>
                        CarID
                    </th>
                    <th>
                        FirmName
                    </th>
                    <th>
                        CarModel
                    </th>
                    <th>
                        CarType
                    </th>
                    <th>
                        ProductYear
                    </th>
                    <th>
                        Km
                    </th>
                    <th>
                        Color
                    </th>
                    <th>
                        EngineType
                    </th>
                    <th>
                        Price-USD
                    </th>
                    <th>
                        ExtraInfomation
                    </th>
                </tr>
                <%
                    try {
                        ResultSet rs = search.SearchAllCars();
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

                <tr> 

                    <td><input type="radio" id="<%=t1%>" name="updatecar" value="<%=t1%>"><%=t1%></input></td>



                <td><%=t2%></td><td><%=t3%></td><td><%=t4%></td>
                <td><%=t5%></td><td><%=t6%></td><td><%=t7%></td><td><%=t8%></td><td><%=t9%></td>
                <td><%=t10%></td>
                </tr>

                <% } //CLOSE WHILE 
                    } catch (SQLException e) {
                        out.println("Your error is " + e);
                    }

                %>
            </table> 

            <input type="submit" id="update2" name="update2">    
        </form>

    </body>
</html>
