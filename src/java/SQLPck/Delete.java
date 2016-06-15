package SQLPck;
import java.sql.*;
public class Delete {
    public Delete (){
        new Access();
    }
 
   public void DeleteARowCar(int carid) {
        try {           
            String query;
            Statement stmt = Access.con.createStatement();
            query = "delete from onlinecarwebservice.car where CarID= " + carid + ";";
//            System.out.println(query.toString());
            stmt.executeUpdate(query); //sql exception

//            if (stmt != null) {
//                stmt.close();
//                Access.con.close();
//            }

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

//    public static void main(String[] args) {
//        Delete obj = new Delete();
//        obj.DeleteARowCar(801);
//    }
}
 