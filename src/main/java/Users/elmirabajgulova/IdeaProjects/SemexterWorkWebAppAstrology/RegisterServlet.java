package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Time;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html1>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");

            //fetch data from registration page
            String login = request.getParameter("login");
            String password = request.getParameter("password");
            String first_name = request.getParameter("firstName");
            String last_name = request.getParameter("lastName");
            Date birth_date = Date.valueOf(request.getParameter("birthDate"));
            Time birth_time = Time.valueOf(request.getParameter("birthTime"));

            User userModel = new User(login,password,first_name,last_name,birth_date,birth_time);

            UserDatabase regUser = new UserDatabase(ConnectionPro.getConnection());
            if (regUser.saveUser(userModel)) {
                response.sendRedirect("index.jsp");
            } else {
                String errorMessage = "User Available";
                HttpSession regSession = request.getSession();
                regSession.setAttribute("RegError", errorMessage);
                response.sendRedirect("register.jsp");
            }




            out.println("</body>");
            out.println("/html");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
