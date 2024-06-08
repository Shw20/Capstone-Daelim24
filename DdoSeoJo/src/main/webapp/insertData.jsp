<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>데이터 입력</title>
</head>
<body>
    <h1>데이터 입력</h1>
    <% 
        // Java 코드 시작
        String message = "";
        request.setCharacterEncoding("UTF-8");
        
        Integer IDX = (Integer) session.getAttribute("IDX");
        String UserID = (String) session.getAttribute("UserID");
        String Name = (String) session.getAttribute("Name");

        String realFolder = "";
        String saveFolder = "image"; // 이미지를 저장할 하위 디렉토리 이름 (생략 가능)

        // saveFolder가 비어있지 않으면 디렉토리 경로에 하위 디렉토리 추가
        if (!saveFolder.isEmpty()) {
            realFolder += File.separator + saveFolder;
        }
        String encType = "utf-8";            // 변환 형식
        int maxSize = 100 * 1024 * 1024;      // 사진의 크기

        ServletContext context = this.getServletContext();        // 절대 경로를 얻는다
        realFolder = context.getRealPath(saveFolder);            // saveFolder의 절대 경로를 얻음

        // 디버깅을 위해 경로 출력
        out.println("<p>Real Folder: " + realFolder + "</p>");

        File uploadDir = new File(realFolder);
        MultipartRequest multi = null;

        try {
            // 파일 업로드를 직접적으로 담당
            multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
            out.println("<p>MultipartRequest 생성 성공</p>");

            // form으로 전달받은 3가지를 가져온다
            String fileName = multi.getFilesystemName("fileName");
            String title = multi.getParameter("title");
            String content = multi.getParameter("content");

            out.println("<p>파일 이름: " + fileName + "</p>");
            out.println("<p>제목: " + title + "</p>");
            out.println("<p>내용: " + content + "</p>");

            if (title != null && content != null && fileName != null) {
                Class.forName("com.mysql.jdbc.Driver");
                
                try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/capstone", "root", "abcd1234")) {
                    // SQL 쿼리 실행
                    String sql = "INSERT INTO bbs VALUES (null, 1, ?, ?, ?, '판매중', NOW(), NOW(), ?)";
                    try (PreparedStatement pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                        pstmt.setInt(1, IDX);
                        pstmt.setString(2, title);
                        pstmt.setString(3, content);
                        pstmt.setString(4, fileName);
                        
                        int rowsAffected = pstmt.executeUpdate();
                        if (rowsAffected > 0) {
                            ResultSet generatedKeys = pstmt.getGeneratedKeys();
                            int bbsID = -1;
                            if (generatedKeys.next()) {
                                bbsID = generatedKeys.getInt(1);
                                                                
                                // 파일 이름 변경
                                if (fileName != null) {
                                    File oldFile = new File(realFolder + File.separator + fileName);
                                    File newFile = new File(realFolder + File.separator + bbsID + "사진.jpg");
                                    if (oldFile.exists()) {
                                        boolean renameSuccess = oldFile.renameTo(newFile);
                                        if (!renameSuccess) {
                                            message = "파일 이름 변경에 실패했습니다.";
                                            log("File rename failed for bbsID: " + bbsID);
                                        } else {
                                            // HTML 코드 시작
                                            %>
                                            <script>
                                                alert('데이터가 성공적으로 추가되었습니다.');
                                                location.href= "post.jsp?bbsID=<%= bbsID %>"
                                            </script>
                                            <%
                                        }
                                    } else {
                                        message = "업로드된 파일을 찾을 수 없습니다.";
                                        log("Uploaded file not found: " + fileName);
                                    }
                                }
                            } else {
                                message = "데이터 추가에 실패했습니다.";
                            }
                        } else {
                            message = "데이터베이스에 데이터를 추가하지 못했습니다.";
                        }
                    }
                } catch (SQLException e) {
                    message = "데이터베이스 연결 또는 쿼리 실행 중 오류가 발생했습니다.";
                    log("DB연결 오류: " + e.getMessage());
                }
            } else {
                message = "제목, 내용, 파일 모두가 전송되지 않았습니다.";
            }
        } catch (Exception e) {
            message = "파일 업로드 중 오류가 발생했습니다.";
            log("Exception during file upload: " + e.getMessage());
        }
        
        out.println("<p>" + message + "</p>");
    %>
</body>
</html>
