package Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Filters;

import Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Keys;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(urlPatterns = {"/profile", "/home"})
public class RequiredLoginFilter implements Filter {


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        try {
            HttpSession session = httpServletRequest.getSession();
            if(session.getAttribute(Keys.USER) == null) {
                String currentUrl = httpServletRequest.getRequestURL().toString();
                session.setAttribute(Keys.CURRENT_URL, currentUrl);
                httpServletResponse.sendRedirect("login.jsp");
            } else {
                chain.doFilter(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
