package com.ssm.Entity;

import java.io.Serializable;

/**
 * Created by 张齐 on 2020/3/15 15:22
 */
public class Student implements Serializable {
    private static final long serialVersionUID = 2414968881388126475L;

    private int id;
    private String name;
    private String sex;
    private int age;
    private String phonenumber;


    public Student() {
    }

    public Student(int id, String name, String sex, int age, String phonenumber) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.phonenumber = phonenumber;
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

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }
}
