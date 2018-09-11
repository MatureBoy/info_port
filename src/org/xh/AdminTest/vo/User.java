package org.xh.AdminTest.vo;


public class User {
        private String account;
        private String pwd;
        private String Jurisdiction;

        public String getJurisdiction() {
            return Jurisdiction;
        }

        public void setJurisdiction(String jurisdiction) {
            Jurisdiction = jurisdiction;
        }

        public  User(String account, String pwd, String Jurisdiction){
            this.account=account;
            this.pwd=pwd;
            this.Jurisdiction=Jurisdiction;
        }
    public  User(String account, String pwd){
        this.account=account;
        this.pwd=pwd;
    }
        public User(){}

        public String getAccount() {
            return account;
        }

        public void setAccount(String account) {
            this.account = account;
        }

        public String getPwd() {
            return pwd;
        }

        public void setPwd(String pwd) {
            this.pwd = pwd;
        }
    }