package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology;

import java.sql.*;

public class UserDatabase {
    Connection con ;

    public UserDatabase(Connection con) {
        this.con = con;
    }

    //for register user
    public boolean saveUser(User user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into user(login,password,first_name,last_name,birth_date,birth_time) values(?,?,?,?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getLogin());
            pt.setString(2, user.getPassword());
            pt.setString(3, user.getFirst_name());
            pt.setString(4, user.getLast_name());
            pt.setString(5, String.valueOf(user.getBirthDate()));
            pt.setString(6, String.valueOf(user.getBirthTime()));

            pt.executeUpdate();
            set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
}


