package org.xh.AdminTest.vo;

import java.sql.Date;

public class SystemMessage {
    private String info;
    private Date date;

   public SystemMessage(String info,Date date){
        this.info=info;
        this.date=date;
    }
    public SystemMessage(){

    }
    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
