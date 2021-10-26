package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Servlets;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.ConnectionPro;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Keys;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Validator;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //fetch data from registration page
            String login = request.getParameter("login").trim();
            String password = request.getParameter("password").trim();
            String first_name = request.getParameter("first_name").trim();
            String last_name = request.getParameter("last_name").trim();
            String day = request.getParameter("day").trim();
            String month = request.getParameter("month").trim();
            String year = request.getParameter("year").trim();
            RequestDispatcher dispatcher = request.getRequestDispatcher("registration.jsp");
            String birth_date = String.format("%s-%s-%s", day, month, year);
            if (UserDao.saveUser(first_name, last_name, login, password, birth_date) == Validator.SUCCESS) {
                response.sendRedirect("login.jsp");
            } else {
                request.setAttribute(Keys.ERROR, "Something wrong! Please, try again!");
                dispatcher.forward(request, response);
            }
        } catch (SQLException e) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, e);
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
