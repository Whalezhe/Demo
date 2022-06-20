package com.rental.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(urlPatterns = "/*")
public class CodingFilter implements Filter {

    //解决编码问题
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        req.setCharacterEncoding("utf-8");
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        resp.setCharacterEncoding("utf-8");
        filterChain.doFilter(servletRequest,servletResponse);
        req.setCharacterEncoding("UTF-8");
    }

    @Override
    public void destroy() {

    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }
}
