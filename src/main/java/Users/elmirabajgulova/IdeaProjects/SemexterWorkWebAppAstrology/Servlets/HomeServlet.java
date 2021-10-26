package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Servlets;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Dao.UserDao;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.ConnectionPro;
import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Keys;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        if (session.getAttribute(Keys.USER) != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
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
