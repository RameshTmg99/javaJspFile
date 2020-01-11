package com.test.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

//@WebServlet("/login")
public class loginServlet extends HttpServlet {
    int i =0;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res){
        HttpSession session = req.getSession();
        String user = req.getParameter("userName");
        if(!user.isEmpty()){
            session.setAttribute("userName",user);
            double time=session.getCreationTime();
            System.out.println("This is a time "+time);

        }
    }

}
