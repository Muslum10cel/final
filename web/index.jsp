<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*, java.io.*, java.util.*"%>
<jsp:useBean id="search" scope="session" class="SQLPck.Search"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table> 
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

            <tr> <td><%=t1%></td><td><%=t2%></td><td><%=t3%></td><td><%=t4%></td>
                <td><%=t5%></td><td><%=t6%></td><td><%=t7%></td><td><%=t8%></td><td><%=t9%></td>
                <td><%=t10%></td>
            </tr>

            <% } //CLOSE WHILE 
                } catch (SQLException e) {
                    out.println("Your error is " + e);
                }

            %>
        </table> 
        <br><br>

        <select>
            <option selected>ANY</option>
            <%         try {
                    ResultSet rs = search.SearchAllFirmNames();
                    while (rs.next()) {
                        String t = rs.getString("FirmName");
            %>

            <option><%=t%></option>

            <%} //while loop closed here

                } catch (SQLException e) {
                    out.println("Your error is " + e);
                }

            %>
        </select>

        <br><br>
        <a href="insert1.jsp">GO TO INSERT PAGE<br><br>
            <a href="delete1.jsp">GO TO DELETE PAGE<br><br>
                <a href="update1.jsp">GO TO UPDATE PAGE<br><br>
                    </body>
                    </html>
