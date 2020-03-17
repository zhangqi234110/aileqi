package com.ssm.intercepter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class MemberIntercepter implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session = httpServletRequest.getSession();
        String phonenumber = (String) session.getAttribute("phonenumber");
        if (phonenumber==null){
          // httpServletRequest.getRequestDispatcher("turn").forward(httpServletRequest,httpServletResponse);
            //httpServletResponse.sendRedirect("/login");
            httpServletResponse.sendRedirect("http://localhost:8080/jsp/turnlogin.jsp");
            //httpServletResponse.sendError(401, "当前账户未登录或会话失效，请重新登录！");
            return false;
        }else {
            return true;
        }

    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
