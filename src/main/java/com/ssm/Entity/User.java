package com.ssm.Entity;

import java.io.Serializable;

public class User implements Serializable {
    private static final long serialVersionUID = -1711383717134698568L;
    private int id;
    private  String name;
    private  String password;
    private  Student student;

    public User() {
    }

    public User(int id, String name, String password, Student student) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.student = student;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }
}
