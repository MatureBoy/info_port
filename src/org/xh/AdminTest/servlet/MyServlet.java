package org.xh.AdminTest.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class MyServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = null;
        username=req.getParameter("username");
        String userpwd=null;
        userpwd=req.getParameter("userpwd");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1>" + username + "</h1>");
    }

}
