package dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");
        int age = Integer.parseInt(request.getParameter("age"));
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String name = request.getParameter("name");

        dto.User user = new dto.User();
        user.setUserID(userID);
        user.setPassword(password);
        user.setAge(age);
        user.setPhoneNumber(phoneNumber);
        user.setEmail(email);
        user.setName(name);

        UserDAO userDao = new UserDAO();
        userDao.registerUser(user);
        userDao.close();

        // 회원가입이 완료된 후 로그인 페이지로 이동
        response.sendRedirect("Login.jsp");
    }
}
