package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;


public class ConnectionPro {

    private static final String DATE_PATTERN = "yyyy-MM-dd";

    public static Connection openConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5433/AstrologyWebAppDatabase","postgres","postgres");
            return c;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public static String getFormattedDate(Date date) {
        return new SimpleDateFormat(DATE_PATTERN).format(date);
    }

    public static Date getFormattedDate(String date) throws ParseException{
        SimpleDateFormat sf = new SimpleDateFormat(DATE_PATTERN);
        java.util.Date parsedDate = sf.parse(date);
        return new Date(parsedDate.getTime());
    }

}



