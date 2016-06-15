package SQLPck;

import java.sql.*;

public class Search {

    Statement stmt;

    public Search() {
        new Access();
    }

    public ResultSet SearchAllCars() {
        ResultSet rs = null;
        try {
            stmt = Access.con.createStatement();
            rs = stmt.executeQuery("select * from car");

        } catch (SQLException e) {
        }
        return rs;
    }

    public ResultSet getACarDetails(int carid) {
        ResultSet rs = null;
        try {
            stmt = Access.con.createStatement();
            rs = stmt.executeQuery("select * from car where CarID=" + carid);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return rs;
    }

    public ResultSet SearchAllFirmNames() {
        ResultSet rs = null;
        try {

            stmt = Access.con.createStatement();
            rs = stmt.executeQuery("select distinct FirmName from car");
        } catch (SQLException e) {
            System.out.println(e);
        }
        return rs;
    }

    public static void main(String[] args) {
        Search search = new Search();
//        search.SearchAllCars();
//        search.getACarDetails(116);
        search.SearchAllFirmNames();
    }
}

//            while (rs.next()) {
//                System.out.println(rs.getInt("CarID"));
//                System.out.println(rs.getString("FirmName"));
//                System.out.println(rs.getString("CarModel"));
//                System.out.println(rs.getString("CarType"));
//                System.out.println(rs.getString("ProductYear"));
//                System.out.println(rs.getInt("Km"));
//                System.out.println(rs.getString("Color"));
//                System.out.println(rs.getString("EngineType"));
//                System.out.println(rs.getDouble("Price"));
//                System.out.println(rs.getString("ExtraInfomation"));
//            }
