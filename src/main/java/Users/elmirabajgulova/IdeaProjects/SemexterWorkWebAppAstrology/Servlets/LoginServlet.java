package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Servlets;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.ConnectionPro;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //fetch data from login form

            String login = request.getParameter("login");
            String password = request.getParameter("password");
            String remember = request.getParameter("remember");

            UserDao db = new UserDao(ConnectionPro.getConnection());
            User user = db.logUser(login, password);

            if (user != null) {
                if (request.getParameter("remember") != null) {
                    Cookie cLogin = new Cookie("cookuser", login.trim());
                    Cookie cPassword = new Cookie("cookpass", password.trim());
                    Cookie cRemember = new Cookie("cookrem", remember.trim());
                    cLogin.setMaxAge(60 * 60 * 24 * 15);// 15 days
                    cPassword.setMaxAge(60 * 60 * 24 * 15);
                    cRemember.setMaxAge(60 * 60 * 24 * 15);
                    response.addCookie(cLogin);
                    response.addCookie(cPassword);
                    response.addCookie(cRemember);
                }
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("sessuser", login.trim());
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("profile.jsp");
                requestDispatcher.forward(request, response);
            } else {
                out.println("user not found");
            }
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
