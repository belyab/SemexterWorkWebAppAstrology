package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/search")
public class ZodiacSignsServlet extends HttpServlet {



    PreparedStatement pst;
    ResultSet rs;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {

            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            String zodiacSignName= request.getParameter("combo");

            Class.forName("org.postgresql.Driver");
            Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5433/AstrologyWebAppDatabase", "postgres", "postgres");
            pst = c.prepareStatement("select dates,planet,stone_talisman from zodiac_signs where zodiac_sign_name=?");
            pst.setString(1, zodiacSignName);
            rs = pst.executeQuery();

            out.println("<table width=60% border=1 >");
            out.println("<tr><td colspan=4 " );
            out.println("<center><h2>Result of Search </h2></center>");
            out.println("</td></tr>");
            out.println("<tr>");
            out.println("<th>Zodiac sign dates</th>");
            out.println("<th>Zodiac sign planet</th>");
            out.println("<th>Zodiac sign stone_talisman</th>");
            out.println("</tr>");

            while(rs.next())
            {
                out.println("<tr>");
                out.println("<td>" + rs.getString("dates") + "</td> ");
                out.println("<td>" + rs.getString("planet") + "</td> ");
                out.println("<td>" + rs.getString("stone_talisman") + "</td> ");
                out.println("</tr>");


            }
            out.println("</table>");

        }
        catch (ClassNotFoundException ex) {

        }catch (Exception e)
        { throw new ServletException("error", e); }
    }




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
