package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper;
import java.sql.*;


public class ConnectionPro {
    private static Connection con;

    public static Connection getConnection(){
        try{
            Class.forName("org.postgresql.Driver");
            con=DriverManager.getConnection("jdbc:postgresql://localhost:5433/AstrologyWebAppDatabase","postgres","postgres");

        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}


