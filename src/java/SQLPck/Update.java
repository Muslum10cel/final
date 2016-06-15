package SQLPck;

import java.sql.*;

public class Update {

    public Update() {
        new Access();
    }

    public void updateProducts(int CarID,
            String FirmName,
            String CarModel,
            String CarType,
            String ProductYear,
            int Km,
            String Color,
            String EngineType,
            double Price,
            String ExtraInfomation) {

        try {
            StringBuffer query = new StringBuffer("UPDATE onlinecarwebservice.car ");
            query.append(" SET FirmName = '");
            query.append(FirmName);
            query.append("', CarModel = '");
            query.append(CarModel);
            query.append("', CarType = '");
            query.append(CarType);
            query.append("', ProductYear = '");
            query.append(ProductYear);
            query.append("', Km = ");
            query.append(Km);
            query.append(", Color = '");
            query.append(Color);
            query.append("', EngineType = '");
            query.append(EngineType);
            query.append("', Price = ");
            query.append(Price);
            query.append(", ExtraInfomation = '");
            query.append(ExtraInfomation);
            query.append("' WHERE CarID=");
            query.append(CarID);
            query.append(";");
            Statement stmt = Access.con.createStatement();
            int rs = stmt.executeUpdate(query.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }

    } // end of updateSoldTable
    
//        public static void main(String[] args) {
//        Update obj = new Update();
//        obj.updateProducts(800, "BMW", "Z6", "SPORT","2008-5-6", 30000, "RED", "DIZEL", 55000, "extra");
//
//    }

}
