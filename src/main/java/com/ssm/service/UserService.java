package com.ssm.service;

import com.ssm.Entity.Student;
import com.ssm.Entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 张齐 on 2020/3/15 9:14
 */
public interface UserService {
    int login(@Param("phonenumber") String phonenumber, @Param("password") String password);
    List<Student> findMyStudent(String phonenumber);
}

