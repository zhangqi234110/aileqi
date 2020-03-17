package com.ssm.service;

import com.github.pagehelper.PageInfo;
import com.ssm.Entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 张齐 on 2020/3/15 15:27
 */
public interface StudentService {
    List<Student> findAll();
    int addStudent(@Param("id") int id, @Param("name") String name, @Param("sex") String sex, @Param("age") int age,@Param("phonenumber") String phonenumber);
    int deleteOne(int id);
    Student findOne(int id);
    int updateOne(Student student);

}
