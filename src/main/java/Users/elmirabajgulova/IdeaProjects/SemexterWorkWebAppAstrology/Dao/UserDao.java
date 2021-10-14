package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User;

import java.sql.*;

public class UserDao {
    Connection con ;

    public UserDao(Connection con) {
        this.con = con;
    }

    //for register user
    public boolean saveUser(User user){
        boolean set = false;
        try{

            String query = "insert into user_profile(login,password,first_name,last_name,birth_date) values(?,?,?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getLogin());
            pt.setString(2, user.getPassword());
            pt.setString(3, user.getFirst_name());
            pt.setString(4, user.getLast_name());
            pt.setString(5, user.getBirth_date());

            pt.executeUpdate();
            set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }

    //user login
    public User logUser(String login, String password){
        User user=null;
        try{
            String query ="select * from user_profile where login=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, login);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();

            if(rs.next()){
                user = new User();
                user.setUser_profile_id(rs.getInt("user_profile_id"));
                user.setFirst_name(rs.getString("first_name"));
                user.setLogin(rs.getString("login"));
                user.setPassword(rs.getString("password"));

            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
}


