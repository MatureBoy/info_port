package org.zs.databaseconnector.vo;

public class to_do_list {
    private String t_id;
    private String t_name;
    private String t_text;

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getT_name(String todo_name) {
        return t_name;
    }

    public void setT_id(String t_id) {
        this.t_id = t_id;
    }

    public String getT_id() {
        return t_id;
    }

    public String getT_text(String todo) {
        return t_text;
    }

    public void setT_text(String t_text) {
        this.t_text = t_text;
    }
}
