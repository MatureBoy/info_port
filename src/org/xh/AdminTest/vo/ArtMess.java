package org.xh.AdminTest.vo;

public class ArtMess {
    private String mess_sender;
    private String mess_sendee;
    private String date;
    private String message;

    public String getMess_sender() {
        return mess_sender;
    }

    public ArtMess(){}
    public void setMess_sender(String mess_sender) {
        this.mess_sender = mess_sender;
    }

    public String getMess_sendee() {
        return mess_sendee;
    }

    public void setMess_sendee(String mess_sendee) {
        this.mess_sendee = mess_sendee;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public ArtMess(String mess_sender, String mess_sendee, String date, String message) {
        this.mess_sender = mess_sender;
        this.mess_sendee = mess_sendee;
        this.date = date;
        this.message = message;
    }

    public void outputMessInfo(){
        System.out.println("发送方:"+mess_sender+" 接收方:"+mess_sendee+" 信息内容: "+message+" 日期:"+date);
    }
}
