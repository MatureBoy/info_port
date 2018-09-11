package org.yh.dbconnect.vo;

public class Counseller {
    private String coun_id;
    private String coun_name;
    private String sex;
    private int age;
    private int salary;
    private String  phone;
    private String email;

    public Counseller() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCoun_id() {
        return coun_id;
    }

    public void setCoun_id(String coun_id) {
        this.coun_id = coun_id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


    public String getCoun_name() {
        return coun_name;
    }

    public void setCoun_name(String coun_name) {
        this.coun_name = coun_name;
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

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }


}
