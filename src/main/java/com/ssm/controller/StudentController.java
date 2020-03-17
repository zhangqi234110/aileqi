package com.ssm.controller;

import com.ssm.Entity.Student;
import com.ssm.service.StudentService;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletRegistration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;
    @Autowired
    private  UserService userService;

    @RequestMapping(value = "/addStudent",method = RequestMethod.POST)
    public String addStudent(@RequestParam("id")int id, @RequestParam("name")String name, @RequestParam("sex")String sex, @RequestParam("age")int age, @RequestParam(value = "phonenumber",required = false) String phonenumber, HttpSession session,Model model){
       phonenumber = (String) session.getAttribute("phonenumber");
        int i = studentService.addStudent(id,name,sex,age,phonenumber);
        List<Student> myStudent = userService.findMyStudent(phonenumber);
        model.addAttribute("students",myStudent);
        return "member";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("id") int id,HttpSession httpSession,Model model){
        int i = studentService.deleteOne(id);
        String phonenumber = (String) httpSession.getAttribute("phonenumber");
        List<Student> myStudent = userService.findMyStudent(phonenumber);
        model.addAttribute("students",myStudent);
        return "member";
    }

    @RequestMapping("/findone")
    public String findone(@RequestParam("id") int id,Model model){
        Student one = studentService.findOne(id);
        System.out.println(one.getName());
        model.addAttribute("student",one);
        return "student";
    }

    @RequestMapping("/update")
    public String updateOne(Student student,HttpSession session,Model model){
        int i = studentService.updateOne(student);
        System.out.println(i);
        String phonenumber = (String) session.getAttribute("phonenumber");
        List<Student> myStudent = userService.findMyStudent(phonenumber);
        model.addAttribute("students",myStudent);
        return "member";
    }

}
