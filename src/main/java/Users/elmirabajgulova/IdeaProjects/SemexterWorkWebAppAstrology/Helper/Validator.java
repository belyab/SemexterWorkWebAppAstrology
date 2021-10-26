package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper;

public class Validator {
    public static final int SUCCESS = 1;

    /**
     * login must contain from 3 to 15 characters, lowercase letters
     * of the English alphabet, numbers, dashes and
     * underscores can be used as characters
     */

    public static boolean checkLogin(String login) {
        return login.matches("^[a-z0-9_-]{3,15}$");
    }

    /**
     * At least 4 chars, max 8 chars
     * Contains at least one digit
     * Contains at least one upper alpha char
     */
    public static boolean checkPassword(String password) {
        return password.matches("(?=.*\\d+.*)(?=.*[A-Z]+.*)\\w{4,8}");
    }

    public static boolean checkName(String name) {
        return name.matches("^[\\p{L} .'-]+$");
    }
}
