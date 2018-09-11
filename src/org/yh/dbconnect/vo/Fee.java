package org.yh.dbconnect.vo;

public class Fee {
    private String stu_id;
    private String stu_name;
    private float network_fee;
    private float water_fee;
    private float electric_fee;
    private int month;

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public float getNetwork_fee() {
        return network_fee;
    }

    public void setNetwork_fee(float network_fee) {
        this.network_fee = network_fee;
    }

    public float getWater_fee() {
        return water_fee;
    }

    public void setWater_fee(float water_fee) {
        this.water_fee = water_fee;
    }

    public float getElectric_fee() {
        return electric_fee;
    }

    public void setElectric_fee(float electric_fee) {
        this.electric_fee = electric_fee;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }
}