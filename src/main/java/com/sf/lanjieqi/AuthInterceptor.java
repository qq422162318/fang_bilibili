package com.sf.lanjieqi;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Slf4j
public class AuthInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest forward_request, HttpServletResponse forward_response, Object handler)
            throws Exception {
        //判断用户是否登录 访问了不该访问的页面
        String userName = (String) forward_request.getSession().getAttribute("userName");
        if (userName != null) {
            return true;
        }
        //访问的用户没有登录...
        //跳转页面
        String goal_addr = "";
        if (forward_request.getQueryString() != null) {
            //这个是带参数的!
            goal_addr = forward_request.getRequestURI() + "?" + forward_request.getQueryString();
        } else {
            //这个是不带参数的
            goal_addr = forward_request.getRequestURI();
        }
        //因为网址：http://localhost:8080/bilibili/**
        //开头这里设置将/bilibili截掉，就剩下原来请求的真是网址了
        String jiequ = "";
        if (goal_addr.length() > 9) jiequ = goal_addr.substring(9);
        else jiequ = goal_addr;
        //String[] jiequ = addr.split("/");
        log.info("addr:" + goal_addr);
        // jiequ  这个地址是用户想访问的地址
        //request.getSession().setAttribute("jiequ", jiequ[jiequ.length-1]);
        forward_request.getSession().setAttribute("jiequ", jiequ);
        forward_response.sendRedirect("login.sf");
        return false;

    }

}