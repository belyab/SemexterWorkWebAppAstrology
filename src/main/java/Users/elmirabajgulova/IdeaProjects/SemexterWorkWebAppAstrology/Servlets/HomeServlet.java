package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Servlets;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao.UserDao;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.ConnectionPro;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HomeServlet", value = "/HomeServlet")
public class HomeServlet extends HttpServlet {

    UserDao db = new UserDao(ConnectionPro.getConnection());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cookie[] cookies = request.getCookies();

        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("login")) {
                session.setAttribute("user", db.get(cookie.getValue()));
            }
        }
        request.getServletContext().getRequestDispatcher("home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
