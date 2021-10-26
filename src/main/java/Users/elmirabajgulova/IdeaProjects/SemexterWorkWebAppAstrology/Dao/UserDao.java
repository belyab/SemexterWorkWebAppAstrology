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

    public static User getUser(String login, String password) throws SQLException {
        String select = "select * from user_profile where login = ? and password =?";
        try (Connection connection = ConnectionPro.openConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(select);) {
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, password);
            return extractUser(preparedStatement.executeQuery());
        }
    }

    public static User getUser(String login) throws SQLException {
        String select = "select * from user_profile where login = ?";
        try (Connection connection = ConnectionPro.openConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(select);) {
            preparedStatement.setString(1, login);
            return extractUser(preparedStatement.executeQuery());
        }
    }

    public static User getUser(int user_profile_id) throws SQLException {
        String select = "select * from user_profile where user_profile_id = ?";
        try (Connection connection = ConnectionPro.openConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(select);) {
            preparedStatement.setInt(1, user_profile_id);
            return extractUser(preparedStatement.executeQuery());
        }
    }

    public static User checkLogin(String login, String password) throws SQLException {
        return getUser(login, password);
    }

    public static User extractUser(ResultSet resultSet) throws SQLException {
        User user = null;
        if (resultSet.next()) {
            user = new User(resultSet.getInt("user_profile_id"), resultSet.getString("login"), resultSet.getString("password"), resultSet.getString("first_name"), resultSet.getString("last_name"), resultSet.getString("birth_date"));
        }
        return user;
    }

    public static int updateUser(String first_name, String last_name, String newLogin,
                                 String password, String birth_date, String currentLogin) throws SQLException {
        String insert = "Update user_profile Set first_name = ?, last_name = ?, "
                + "login = ?, password = ?, birth_date = ?, "
                + " Where login = ?";
        try (Connection c = ConnectionPro.openConnection();
             PreparedStatement pStmt = c.prepareStatement(insert)) {
            pStmt.setString(1, first_name);
            pStmt.setString(2, last_name);
            pStmt.setString(3, newLogin);
            pStmt.setString(4, password);
            pStmt.setString(5, birth_date);
            pStmt.setString(6, currentLogin);
            return pStmt.executeUpdate();
        }
    }
}


