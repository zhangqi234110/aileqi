package com.ssm.service.serviceimpl;

import com.ssm.Entity.Student;
import com.ssm.Entity.User;
import com.ssm.dao.UserMapper;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 张齐 on 2020/3/15 9:21
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public int login(String phonenumber, String password) {
        int user = userMapper.login(phonenumber, password);
        return user;
    }

    @Override
    public List<Student> findMyStudent(String phonenumber) {
        return userMapper.findMyStudent(phonenumber);
    }

    @Override
    public int findPhonenumber(String phonenumber) {
        return userMapper.findPhonenumber(phonenumber);
    }

    @Override
    public int register(String phonenumber, String password) {
        return userMapper.register(phonenumber, password);
    }
}
