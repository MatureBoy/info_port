package org.xh.AdminTest.vo;

public class Money {
    private String moneytype;
    private float moneyNum;
    private String date;
    public Money(){}

    public Money(String moneytype, float moneyNum, String date) {
        this.moneytype = moneytype;
        this.moneyNum = moneyNum;
        this.date = date;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void outputMoneyInfo(){
        System.out.println("奖学金类别:"+moneytype+" 奖学金数额:"+moneyNum);
    }
    public String getMoneytype() {
        return moneytype;
    }

    public void setMoneytype(String moneytype) {
        this.moneytype = moneytype;
    }

    public float getMoneyNum() {
        return moneyNum;
    }

    public void setMoneyNum(float moneyNum) {
        this.moneyNum = moneyNum;
    }
}
