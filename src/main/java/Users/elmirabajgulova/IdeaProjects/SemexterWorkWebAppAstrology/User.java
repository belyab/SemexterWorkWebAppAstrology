package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology;

import java.sql.Date;
import java.sql.Time;

public class User {
    int user_profile_id;
    String login;
    String password;
    String first_name;
    String last_name;
    Date birthDate;
    Time birthTime;

    public User() {
    }

    public User(int user_profile_id, String login, String password, String first_name, String last_name, Date birthDate, Time birthTime) {
        this.user_profile_id = user_profile_id;
        this.login = login;
        this.password = password;
        this.first_name = first_name;
        this.last_name = last_name;
        this.birthDate = birthDate;
        this.birthTime = birthTime;
    }

    public User(String login, String password, String first_name, String last_name, Date birthDate, Time birthTime) {
        this.login = login;
        this.password = password;
        this.first_name = first_name;
        this.last_name = last_name;
        this.birthDate = birthDate;
        this.birthTime = birthTime;
    }

    public User(String login, String password, String first_name, String last_name, String birth_date, String birth_time) {
    }

    public int getUser_profile_id() {
        return user_profile_id;
    }

    public void setUser_profile_id(int user_profile_id) {
        this.user_profile_id = user_profile_id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public Time getBirthTime() {
        return birthTime;
    }

    public void setBirthTime(Time birthTime) {
        this.birthTime = birthTime;
    }
}
