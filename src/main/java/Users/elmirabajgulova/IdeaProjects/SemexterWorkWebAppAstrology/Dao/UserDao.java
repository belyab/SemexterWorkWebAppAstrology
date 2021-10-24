package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.ConnectionPro;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User;

import java.sql.*;

public class UserDao {
    Connection con ;

    public UserDao(Connection con) {
        this.con = con;
    }
    private final Connection connection = ConnectionPro.getConnection();

    public User get(String login) {
        try {
            Statement statement = connection.createStatement();
            String sql = "SELECT * FROM user_profile where login = \'" + login + "\'";
            return executeQuery(statement, sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    private User executeQuery(Statement statement, String sql) {
        try {
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()) {
                return new User(
                        resultSet.getInt("id"),
                        resultSet.getString("login"),
                        resultSet.getString("password"),
                        resultSet.getString("first_name"),
                        resultSet.getString("last_name"),
                        resultSet.getDate("birth_date")
                );
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    //for register user
    public boolean saveUser(User user){
        boolean set = false;
        try{

            String query = "insert into user_profile(login,password,first_name,last_name,birth_date) values(?,?,?,?,?::date )";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getLogin());
            pt.setString(2, user.getPassword());
            pt.setString(3, user.getFirst_name());
            pt.setString(4, user.getLast_name());
            pt.setString(5, String.valueOf(user.getBirth_date()));

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


