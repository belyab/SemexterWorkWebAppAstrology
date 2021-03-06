package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Servlets;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.ConnectionPro;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Keys;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            String login = request.getParameter("user-login-id");
            String password = request.getParameter("user-login-password");
            String remember = request.getParameter("remember");
            HttpSession session = request.getSession();
            User user = UserDao.checkLogin(login, password);
            if (user != null) {
                session.setAttribute(Keys.USER, user);
                Cookie cookieLog = new Cookie("cookieLog", login);
                cookieLog.setMaxAge(60*60*15);
                Cookie cookiePass = new Cookie("cookiePass", password);
                cookiePass.setMaxAge(60*60*15);
                Cookie cookieRem = new Cookie("cookieRem", remember);
                cookieRem.setMaxAge(60*60*15);
                response.addCookie(cookieLog);
                response.addCookie(cookiePass);
                response.addCookie(cookieRem);
                if (session.getAttribute(Keys.CURRENT_URL) == null) {
                    response.sendRedirect("home");
                } else {

                    String curUrl = session.getAttribute(Keys.CURRENT_URL).toString();
                    session.setAttribute(Keys.CURRENT_URL, null);
                    response.sendRedirect(curUrl);
                }
                session.setAttribute(Keys.ERROR, "");
            } else {
                session.setAttribute(Keys.ERROR, "Invalid login information");
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException e) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, e);
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
