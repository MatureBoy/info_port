package org.xh.AdminTest.vo;

public class MonthPay {
    private String stu_id;
    private double network_fee;
    private double water_fee;
    private double electric_fee;
    private int month;


    public MonthPay() {
    }



    public void outputMonthPayInfo(){
        System.out.println("学号:"+stu_id+" 网费:"+network_fee+" 水费:"+water_fee+" 电费:"+electric_fee+" 月份:"+month);
    }



    public MonthPay(String stu_id, double network_fee, double water_fee, double electric_fee, int month) {
        this.stu_id = stu_id;
        this.network_fee = network_fee;
        this.water_fee = water_fee;
        this.electric_fee = electric_fee;
        this.month = month;
    }

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }

    public double getNetwork_fee() {
        return network_fee;
    }

    public void setNetwork_fee(double network_fee) {
        this.network_fee = network_fee;
    }

    public double getWater_fee() {
        return water_fee;
    }

    public void setWater_fee(double water_fee) {
        this.water_fee = water_fee;
    }

    public double getElectric_fee() {
        return electric_fee;
    }

    public void setElectric_fee(double electric_fee) {
        this.electric_fee = electric_fee;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }
}