package com.ssm.dao;

import com.ssm.Entity.Student;
import com.ssm.Entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface UserMapper {

    int login(@Param("phonenumber") String phonenumber, @Param("password") String password);
    List<Student> findMyStudent(String phonenumber);


}
