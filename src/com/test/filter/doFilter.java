package com.test.filter;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.io.IOException;

public class doFilter implements Filter {
    @Override
        public void destroy(){

    }

    @Override
        public void  doFilter(ServletRequest req, ServletResponse res, FilterChain arg)

        throws IOException,ServletException{
        HttpServletRequest request = (HttpServletRequest)req;
        if(request.getRequestURI().startsWith("/login")){
            HttpSession session = request.getSession();
            if(session.getAttribute("userName")== null){
                request.getRequestDispatcher("/index.jsp").forward(request,res);
            }

            arg.doFilter(request,res);
        }
    }


}
