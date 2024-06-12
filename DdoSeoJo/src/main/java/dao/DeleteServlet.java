package dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int userIdx = (int) session.getAttribute("IDX");
        String inputPassword = request.getParameter("password");

        UserDAO userDao = new UserDAO();
        boolean isPasswordCorrect = userDao.checkPassword(userIdx, inputPassword);

        if (isPasswordCorrect) {
            userDao.deleteUser(userIdx);
            userDao.close();
            session.invalidate();  // 세션 무효화
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('회원탈퇴가 완료되었습니다.');location.href='Main.jsp';</script>");
            
        } else {
            userDao.close();
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('비밀번호가 잘못되었습니다.'); history.back();</script>");
        }
    }
}
