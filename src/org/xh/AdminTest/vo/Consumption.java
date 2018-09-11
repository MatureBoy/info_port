package org.xh.AdminTest.vo;

public class Consumption
{
    private String stu_id;
    private String date;
    private String consumptionMoney;

    public Consumption(String stu_id, String date, String consumptionMoney) {
        this.stu_id = stu_id;
        this.date = date;
        this.consumptionMoney = consumptionMoney;
    }
    public Consumption(){}

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getConsumptionMoney() {
        return consumptionMoney;
    }

    public void setConsumptionMoney(String consumptionMoney) {
        this.consumptionMoney = consumptionMoney;
    }

    public void outputMyConsumptionInfo(){
        System.out.println("学号:"+stu_id+" 日期："+date+" 消费金额:"+consumptionMoney);
    }
}
