package SQLPck;

import java.sql.*;

public class Access {

    static Connection con = null;

    public Access() {
        createConnection();
    }

    public void createConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            con = DriverManager.getConnection("jdbc:mysql://MYSQL5011.Smarterasp.net:3306/db_9c4db8_car", "9c4db8_car", "test1234");
        } catch (SQLException e) {
        }

    }

    public static void main(String[] args) {
        new Access();
    }
}
