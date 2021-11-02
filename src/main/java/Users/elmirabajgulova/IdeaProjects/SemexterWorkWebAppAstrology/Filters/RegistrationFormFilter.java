package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Filters;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao.UserDao;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Keys;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Validator;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Servlets.RegisterServlet;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebFilter(urlPatterns = {"/register"})
public class RegistrationFormFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        try {
            String login = request.getParameter("login").trim();
            String password = request.getParameter("password").trim();
            String first_name = request.getParameter("first_name").trim();
            String last_name = request.getParameter("last_name").trim();

            RequestDispatcher dispatcher = request.getRequestDispatcher("registration.jsp");

            if (!Validator.checkName(first_name)) {
                request.setAttribute(Keys.ERROR, "First name is incorrect");
                dispatcher.forward(request, response);
            } else if (!Validator.checkName(last_name)) {
                request.setAttribute(Keys.ERROR, "Last name is incorrect");
                dispatcher.forward(request, response);
            } else if (!Validator.checkLogin(login)) {
                request.setAttribute(Keys.ERROR, "Login is incorrect. login must contain from 3 to 15 characters, lowercase letters\n" +
                        "     * of the English alphabet, numbers, dashes and\n" +
                        "     * underscores can be used as characters");
                dispatcher.forward(request, response);
            } else if (!Validator.checkPassword(password)) {
                request.setAttribute(Keys.ERROR, "Password is incorrect.At least 4 chars, max 8 chars\n" +
                        "     * Contains at least one digit\n" +
                        "     * Contains at least one upper alpha char");
                dispatcher.forward(request, response);
            } else {
                chain.doFilter(request, response);
            }
        } catch (Exception ex) {
            Logger.getLogger(RegistrationFormFilter.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void destroy() {

    }
}
