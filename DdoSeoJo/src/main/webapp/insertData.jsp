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
            String TypeName = multi.getParameter("category1");
            String SecondType = multi.getParameter("category2");
            String ThirdType = multi.getParameter("category3");
            String BrandName = multi.getParameter("brand");
            String productName = multi.getParameter("productName");
            String priceStr = multi.getParameter("price");
            int price = Integer.parseInt(priceStr);
            
         	// productName과 postUserIDX를 세션에 저장
            session.setAttribute("productName", productName);
            session.setAttribute("BrandName", BrandName);
            session.setAttribute("postUserIDX", IDX);

            out.println("<p>파일 이름: " + fileName + "</p>");
            out.println("<p>제목: " + title + "</p>");
            out.println("<p>내용: " + content + "</p>");
            
            int PrdID = -1; // product ID 초기화
            
            if(TypeName != null && SecondType != null && BrandName != null && productName != null && priceStr != null){
            	Class.forName("com.mysql.cj.jdbc.Driver");
            	
            	try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/capstone", "root", "abcd1234")) {
                    // product 테이블에 제품 추가
            		String sql = "INSERT INTO product VALUES (null, ?, ?, ?, ?, ?, ?, ?)";
                    try (PreparedStatement pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)){
                        pstmt.setString(1, productName);
                        pstmt.setInt(2, price);
                        pstmt.setString(3, TypeName);
                        pstmt.setString(4, BrandName);
                        pstmt.setString(5, SecondType);
                        pstmt.setString(6, ThirdType);
                        pstmt.setString(7, fileName);
                        
                        int rowsAffected = pstmt.executeUpdate();
                        if (rowsAffected > 0) {
                            ResultSet generatedKeys = pstmt.getGeneratedKeys();
                            if (generatedKeys.next()) {
                                PrdID = generatedKeys.getInt(1); // 새로 생성된 product ID 가져오기
                            } else {
                                message = "1데이터 추가에 실패했습니다.";
                            }
                        }
                        
                    }catch (SQLException e) {
                        message = "1데이터베이스 연결 또는 쿼리 실행 중 오류가 발생했습니다.";
                        log("DB연결 오류: " + e.getMessage());
                    }
            	}catch (SQLException e) {
                    message = "2데이터베이스 연결 또는 쿼리 실행 중 오류가 발생했습니다.";
                    log("DB연결 오류: " + e.getMessage());
                }
            }

            if (title != null && content != null && fileName != null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/capstone", "root", "abcd1234")) {
                    // bbs 테이블에 데이터 추가
//                     String sql = "INSERT INTO bbs VALUES (null, ?, ?, ?, ?, '판매중', NOW(), NOW(), ?, ?, ?)";
//                     String sql = "INSERT INTO bbs VALUES (null, ?, ?, ?, ?, '판매중', NOW(), NOW(), ?, ?,?,?)";
                    String sql = "INSERT INTO bbs VALUES (null,?, ?, ?, ?,'판매중', NOW(), NOW(), ?, ?, ?, ?)";

                    try (PreparedStatement pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                                                
                        pstmt.setInt(1, PrdID); // 새로 생성된 product ID 사용
                        pstmt.setInt(2, IDX);
                        pstmt.setString(3, title);
                        pstmt.setString(4, content);
                        pstmt.setString(5, fileName);
                        pstmt.setString(6, productName);
                        pstmt.setString(7, BrandName);
                        pstmt.setInt(8, price);
                        
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
                                                alert('판매 완료시 꼭 판매완료 버튼을 눌러주세요.');
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
                                message = "2데이터 추가에 실패했습니다.";
                            }
                        } else {
                            message = "데이터베이스에 데이터를 추가하지 못했습니다.";
                        }
                    }
                } catch (SQLException e) {
                    message = "3데이터베이스 연결 또는 쿼리 실행 중 오류가 발생했습니다.";
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

