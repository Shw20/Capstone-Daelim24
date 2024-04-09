import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");
        int age = Integer.parseInt(request.getParameter("age"));
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String name = request.getParameter("name");

        User user = new User();
        user.setUserID(userID);
        user.setPassword(password);
        user.setAge(age);
        user.setPhoneNumber(phoneNumber);
        user.setEmail(email);
        user.setName(name);

        UserDAO userDao = new UserDAO();
        boolean isSuccess = userDao.registerUser(user); // 회원가입 성공 여부 확인

        userDao.close();

        if (isSuccess) {
            // 회원가입 성공 시 로그인 페이지로 이동
            response.sendRedirect("Login.jsp");
        } else {
            // 회원가입 실패 시 회원가입 페이지로 리다이렉트
            response.sendRedirect("Register.jsp");
        }
    }
}
