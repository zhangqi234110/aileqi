package com.ssm.controller;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.Entity.Student;
import com.ssm.Entity.User;
import com.ssm.service.StudentService;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private StudentService studentService;

    @RequestMapping("/user")
    public String login(@RequestParam("phonenumber") String phonenumber, @RequestParam("password") String pasword, HttpSession session, HttpServletRequest request){

        int user = userService.login(phonenumber, pasword);
        if (user==0){
            return "turn";
        }else {
            session.setAttribute("phonenumber",phonenumber);
            request.setAttribute("userphone",phonenumber);
            List<Student> myStudent = userService.findMyStudent(phonenumber);
            // List<Student> all = studentService.findAll();
            request.setAttribute("students",myStudent);
            return "member";
        }

    }

    @RequestMapping("/login")
    public String turn(){
            return "turn";
    }

    @RequestMapping("/member")
    public void menber(HttpServletResponse response){
        try {
            response.sendRedirect("http://account.alo7.com/orders/");
        } catch (IOException e) {
         throw new RuntimeException(e);
        }
    }

    @RequestMapping("/loginOut")
    public String loginOut(HttpSession session){
        session.invalidate();
        return "loginout";

    }


}
