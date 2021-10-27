package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Servlets;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao.UserDao;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Keys;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Validator;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(urlPatterns = {"/profile"})
public class ProfileServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sess = request.getSession();
        sess.setAttribute(Keys.ERROR, "");
        sess.setAttribute(Keys.SUCCESS, "");

        String action = request.getParameter("action");
        if (sess.getAttribute(Keys.USER) != null &&
                action != null && action.equals("update-profile")) {
            try {
                String firstName = request.getParameter("first_name").trim();
                String lastName = request.getParameter("last_name").trim();
                String newLogin = request.getParameter("login").trim();
                String password = request.getParameter("password").trim();
                String day = request.getParameter("day").trim();
                String month = request.getParameter("month").trim();
                String year = request.getParameter("year").trim();
                String birth_date = String.format("%s-%s-%s", day, month, year);

                String currentLogin = ((User) sess.getAttribute("user")).getLogin();

                if (UserDao.updateUser(firstName, lastName, newLogin,
                        password, birth_date, currentLogin) == Validator.SUCCESS) {
                    // update session
                    User user = UserDao.getUser(newLogin);
                    sess.setAttribute(Keys.USER, user);
                    sess.setAttribute(Keys.SUCCESS, "Data has been saved!");

                } else {

                    sess.setAttribute(Keys.ERROR, "Something wrong! Please, try again!");
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        RequestDispatcher dis = request.getRequestDispatcher("WEB-INF/profile.jsp");
        dis.forward(request, response);
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
