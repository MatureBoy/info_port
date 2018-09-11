package org.xh.AdminTest.vo;

public class Payment {
    private String stu_id;
    private String stu_year;
    private String stu_num;
    private String stu_status;

    public Payment(String stu_id, String stu_year, String stu_num, String stu_status) {
        this.stu_id = stu_id;
        this.stu_year = stu_year;
        this.stu_num = stu_num;
        this.stu_status = stu_status;
    }

    public void outputPaymentInfo(){
        System.out.println("学号:"+stu_id+" 学年:"+stu_year+" 学费:"+stu_num+" 缴费状态:"+stu_status);
    }
    public Payment(){}

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }

    public String getStu_year() {
        return stu_year;
    }

    public void setStu_year(String stu_year) {
        this.stu_year = stu_year;
    }

    public String getStu_num() {
        return stu_num;
    }

    public void setStu_num(String stu_num) {
        this.stu_num = stu_num;
    }

    public String getStu_status() {
        return stu_status;
    }

    public void setStu_status(String stu_status) {
        this.stu_status = stu_status;
    }
}
