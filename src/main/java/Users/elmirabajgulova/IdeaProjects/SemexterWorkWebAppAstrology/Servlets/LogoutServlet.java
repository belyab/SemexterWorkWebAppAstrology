package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LogoutServlet", value = "/LogoutServlet")
public class LogoutServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Cookie cLogin = new Cookie("cooklogin", null);
        Cookie cPassword = new Cookie("cookpass", null);
        Cookie cRemember = new Cookie("cookrem", null);
        cLogin.setMaxAge(0);
        cPassword.setMaxAge(0);
        cRemember.setMaxAge(0);
        response.addCookie(cLogin);
        response.addCookie(cPassword);
        response.addCookie(cRemember);
        HttpSession httpSession = request.getSession();
        httpSession.invalidate();
        request.setAttribute("msg", "You have successfully logged out.");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
        requestDispatcher.forward(request, response);
//        try (PrintWriter out = response.getWriter()) {



//            HttpSession session = request.getSession();
//            session.removeAttribute("logUser");
//            session.invalidate();
//            response.sendRedirect("login.jsp");
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
