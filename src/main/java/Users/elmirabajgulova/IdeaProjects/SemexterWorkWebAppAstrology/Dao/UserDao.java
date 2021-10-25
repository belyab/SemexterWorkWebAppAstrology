package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.ConnectionPro;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User;

import java.sql.*;

public class UserDao {



    //for register user
    public static int saveUser(String login, String password, String first_name, String last_name, String birth_date) throws SQLException {
            String query = "insert into user_profile(login,password,first_name,last_name,birth_date) values(?,?,?,?,?)";
            try (Connection connection = ConnectionPro.openConnection();
                 PreparedStatement pt = connection.prepareStatement(query)) {
                pt.setString(1, login);
                pt.setString(2, password);
                pt.setString(3, first_name);
                pt.setString(4, last_name);
                pt.setString(5, birth_date);
                return pt.executeUpdate();
            }
        }


//    //user login
//    public User logUser(String login, String password){
//        User user=null;
//        try{
//            String query ="select * from user_profile where login=? and password=?";
//            PreparedStatement pst = this.con.prepareStatement(query);
//            pst.setString(1, login);
//            pst.setString(2, password);
//
//            ResultSet rs = pst.executeQuery();
//
//            if(rs.next()){
//                user = new User();
//                user.setUser_profile_id(rs.getInt("user_profile_id"));
//                user.setFirst_name(rs.getString("first_name"));
//                user.setLogin(rs.getString("login"));
//                user.setPassword(rs.getString("password"));
//
//            }
//        }catch(Exception e){
//            e.printStackTrace();
//        }
//        return user;
//    }
}


