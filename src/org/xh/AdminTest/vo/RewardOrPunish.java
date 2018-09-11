package org.xh.AdminTest.vo;

import java.sql.Date;

public class RewardOrPunish {
    private String name;
    private String type;
    private Date date;
    private String stu_id;
    public RewardOrPunish(){}
    public RewardOrPunish(String name,String type,Date date,String stu_id){
        this.date=date;
        this.name=name;
        this.stu_id=stu_id;
        this.type=type;
    }

    public void outputRewardOrPunishment(){
        System.out.println("学号:"+stu_id+" 类型:"+type+" 内容："+name+" 日期:"+date);
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }
}
