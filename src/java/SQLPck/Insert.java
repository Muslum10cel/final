package SQLPck;

import java.sql.Statement;
import java.util.Calendar;

public class Insert {

    public Insert() {
        new Access();
    }

    public void InsertARowCar(int CarID,
            String FirmName,
            String CarModel,
            String CarType,
            String ProductYear,
            int Km,
            String Color,
            String EngineType,
            double Price,
            String ExtraInfomation) {
        String query = null;
        //INSERT INTO onlinecarwebservice.car(CarID,FirmName,CarModel,CarType,ProductYear,Km,Color,EngineType,Price,ExtraInfomation)
//VALUES (165,'VOLKSWAGEN','BEETLE','SALON','2005-11-02','800','RED','DIZEL',56000,'STEAL RIM');
        try {
            Statement stmt = Access.con.createStatement();
            query = "INSERT INTO car(CarID,FirmName,CarModel,CarType,ProductYear,Km,Color,EngineType,Price,ExtraInfomation)\n"
                    + "VALUES (" + CarID
                    + ",'" + FirmName.toUpperCase() + "'"
                    + ",'" + CarModel.toUpperCase() + "'"
                    + ",'" + CarType.toUpperCase() + "'"
                    + ",'" + getTodayDate() +"'"
                    + "," + Km
                    + ",'" + Color.toUpperCase() + "'"
                    + ",'" + EngineType.toUpperCase() + "'"
                    + "," + Price
                    + ",'" + ExtraInfomation.toUpperCase() + "');";
//            System.out.println(query);
            stmt.executeUpdate(query);
               
        } catch (Exception e) {
            System.err.println(e);
        }

    }

    public String getTodayDate() {
        Calendar date = Calendar.getInstance();
        int d = date.get(Calendar.DAY_OF_MONTH);
        int m = Calendar.MONTH;
        int y = date.get(Calendar.YEAR);
        String sold_date = new String();
        sold_date = String.valueOf(y) + "-"
                + String.valueOf(m) + "-"
                + String.valueOf(d);
//        System.out.println(sold_date);
        return sold_date;
    }

//    public static void main(String[] args) {
//        Insert obj = new Insert();
//        obj.InsertARowCar(801, "BMW", "Z3", "SPORT", "2008-03-01", 30000, "RED", "DIZEL", 55000, "extra");
//}
}
