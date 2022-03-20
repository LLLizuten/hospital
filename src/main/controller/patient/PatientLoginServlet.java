package controller.patient;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;

import bean.DBBean;

public class PatientLoginServlet extends HttpServlet {
    private DBBean dbbean;

    public PatientLoginServlet() {
        this.dbbean = new DBBean();
    }


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String P_id = request.getParameter("P_id");
        String P_psd = request.getParameter("P_psd");
        request.setAttribute("P_id", P_id);


        boolean rs = dbbean.patientLogin(P_id, P_psd);
        if (rs) {
            System.out.println("登录成功");
            request.getRequestDispatcher("/patient/success.jsp").forward(request, response);
        } else {
            System.out.println("登录失败");
            String message = "用户名密码错误，请重新登录！";
            request.setAttribute("message", message);
            request.getRequestDispatcher("/patient/PatientLogin.jsp").forward(request, response);
        }


    }
}