package org.xh.AdminTest.vo;

import java.sql.Date;

public class Activity {
    private String activityName;
    private String activityType;
    private Date activityDate;
    public Activity(){
    }
    public Activity(String activityName,String activityType,Date activityDate){
        this.activityDate=activityDate;
        this.activityName=activityName;
        this.activityType=activityType;
    }
    public void outputAcctivity(){
        System.out.println("活动名称:"+this.activityName+" 活动类型:"+this.activityType+" 活动时间:"+this.activityDate);
    }
    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public String getActivityType() {
        return activityType;
    }

    public void setActivityType(String activityType) {
        this.activityType = activityType;
    }

    public Date getActivityDate() {
        return activityDate;
    }

    public void setActivityDate(Date activityDate) {
        this.activityDate = activityDate;
    }
}
