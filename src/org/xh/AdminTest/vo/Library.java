package org.xh.AdminTest.vo;

import java.sql.Date;

public class Library
{
    private String stu_id;
    private String bookName;
    private String borrowDate;
    private String returnDate;


    public Library(String stu_id, String bookName, String borrowDate, String returnDate) {
        this.stu_id = stu_id;
        this.bookName = bookName;
        this.borrowDate = borrowDate;
        this.returnDate = returnDate;
    }
    public Library(){}

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBorrowDate() {
        return borrowDate;
    }

    public void setBorrowDate(String borrowDate) {
        this.borrowDate = borrowDate;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }

    public void outputLibraryInfo(){
        System.out.println("学号:"+stu_id+" 书名 "+bookName+" 借阅日期 "+borrowDate+" 归还日期 "+returnDate);
    }
}
