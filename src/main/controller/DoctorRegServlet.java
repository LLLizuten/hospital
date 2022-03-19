package controller;

import bean.DBBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

/**
 * @author lzy
 * @create 2022-03-15 15:19
 */
public class DoctorRegServlet extends HttpServlet {
    private DBBean dbBean = new DBBean();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数
        String userName = req.getParameter("userName");
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String sex = req.getParameter("sex");
        String age = req.getParameter("age");
        String sur_id = req.getParameter("sur_id");


        //调用DBBean连接数据库并登录
        Connection connection = dbBean.JDBCon();
        //boolean loginResult = dbBean.doctorRegister(name, password, );
        dbBean.doctorRegister(userName,password,name,age,sex,sur_id);


    }
}
