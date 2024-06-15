package dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/ModifyServlet")
public class ModifyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션에서 사용자의 IDX 가져오기
        Integer idx = (Integer) request.getSession().getAttribute("IDX");
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (idx == null || currentPassword == null || newPassword == null || confirmPassword == null) {
            response.sendRedirect("Error.jsp");
            return;
        }

        if (!newPassword.equals(confirmPassword)) {
            response.sendRedirect("Error.jsp");
            return;
        }

        ModifyDAO modifyDao = new ModifyDAO();
        boolean isPasswordCorrect = modifyDao.checkPassword(idx, currentPassword);

        if (isPasswordCorrect) {
            modifyDao.updatePassword(idx, newPassword);
            modifyDao.close();
            response.sendRedirect("Main.jsp");
        } else {
            modifyDao.close();
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println("<script>alert('기존 비밀번호가 틀렸습니다.');history.back();</script>");
        }
    }
}
