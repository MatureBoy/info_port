package org.xh.AdminTest.vo;

public class Student {
    private String stu_id;
    private String name;
    private String sex;
    private int age;
    private String native_place;
    private String instituteName;
    private String phoneNumber;
    private String emailAddress;
    private String addmissionDate;
    private String class_name;

    public Student() {
    }

    public Student(String stu_id, String name, String sex, int age, String native_place, String instituteName, String phoneNumber, String emailAddress, String addmissionDate, String class_name) {
        this.stu_id = stu_id;
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.native_place = native_place;
        this.instituteName = instituteName;
        this.phoneNumber = phoneNumber;
        this.emailAddress = emailAddress;
        this.addmissionDate = addmissionDate;
        this.class_name = class_name;
    }

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
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

    public String getNative_place() {
        return native_place;
    }

    public void setNative_place(String native_place) {
        this.native_place = native_place;
    }

    public String getInstituteName() {
        return instituteName;
    }

    public void setInstituteName(String instituteName) {
        this.instituteName = instituteName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getAddmissionDate() {
        return addmissionDate;
    }

    public void setAddmissionDate(String addmissionDate) {
        this.addmissionDate = addmissionDate;
    }

    public String getClass_name() {
        return class_name;
    }

    public void setClass_name(String class_name) {
        this.class_name = class_name;
    }

    public void outputStuInfo(){
        System.out.println("学号:"+stu_id);
        System.out.println("姓名:"+name);
        System.out.println("性别:"+sex);
        System.out.println("年龄:"+age);
        System.out.println("籍贯:"+native_place);
        System.out.println("学院:"+instituteName);
        System.out.println("联系方式:"+phoneNumber);
        System.out.println("邮箱:"+emailAddress);
        System.out.println("入学日期:"+addmissionDate);
        System.out.println("班级id:"+class_name);

    }
}
