package com.rental.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebFilter(urlPatterns = "/*")
public class LoggerFilter implements Filter {

    //日志记录
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        //ip地址
        String remoteAddress = request.getRemoteAddr();
        //主机号
        String remoteHost = request.getRemoteHost();
        //强制转化
        HttpServletRequest req = (HttpServletRequest) request;
        //访问地址 也可以 String requestURL = String.valueOf(req.getRequestURL());
        String requestURL = req.getRequestURL().toString();
        //获取时间
        Date time = new Date();
        //进行格式化日期
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String allInfo = f.format(time) + " ip:" + remoteAddress + " 主机号:" + remoteHost + " 访问地址:" + requestURL;
        //写入数据 允许覆盖
        FileWriter fw = null;
        //缓冲区
        BufferedWriter bw =null;
        try {
            fw = new FileWriter("./src/main/resources/logger.txt",true);
            bw = new BufferedWriter(fw);
            bw.write(allInfo);
            bw.newLine();
            //关闭流
            bw.close();
            fw.close();
            chain.doFilter(request, response);
        }catch (IOException e){
            System.out.println(e.toString());
        }
    }
    @Override
    public void init(FilterConfig config) throws ServletException {
    }
    @Override
    public void destroy() {
    }
}
