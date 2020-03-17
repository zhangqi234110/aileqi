package com.ssm.service.serviceimpl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.Entity.Student;
import com.ssm.dao.StudentMapper;
import com.ssm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by 张齐 on 2020/3/15 15:27
 */
@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public  List<Student> findAll() {

        List<Student> all = studentMapper.findAll();

        return all;
    }

    @Override
    public int addStudent(int id, String name, String sex, int age,String phonenumber) {
        return studentMapper.addStudent(id, name, sex, age,phonenumber);
    }

    @Override
    public int deleteOne(int id) {
        int i = studentMapper.deleteOne(id);
        return i;
    }

    @Override
    public Student findOne(int id) {
        Student one = studentMapper.findOne(id);
        return one;
    }

    @Override
    public int updateOne(Student student) {
        int i = studentMapper.updateOne(student);
        return i;
    }


}
