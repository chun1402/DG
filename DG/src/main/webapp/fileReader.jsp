<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트위터 구현하기 - 저장된 트윗 읽기</title>
</head>
<body>
    <div align="center">
        <h3>저장된 트윗 목록</h3>
        <hr>
        <%
            String folderPath = application.getRealPath("/WEB-INF/bbs/");
            File folder = new File(folderPath);
            File[] files = folder.listFiles();
            
            if (files != null && files.length > 0) {
                for (File file : files) {
                    if (file.isFile()) {
                        out.println("<h4>" + file.getName() + "</h4>");
                        BufferedReader reader = null;
                        try {
                            reader = new BufferedReader(new FileReader(file));
                            String line;
                            while ((line = reader.readLine()) != null) {
                                out.println(line + "<br>");
                            }
                        } catch (FileNotFoundException fnfe) {
                            out.println("파일이 존재하지 않습니다.");
                        } catch (IOException ioe) {
                            out.println("파일을 읽을 수 없습니다.");
                        } finally {
                            if (reader != null) {
                                try {
                                    reader.close();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                        out.println("<hr>");
                    }
                }
            } else {
                out.println("저장된 트윗이 없습니다.");
            }
        %>
        <br>
        <a href="twitter_list.jsp">이전으로 돌아가기</a>
    </div>
</body>
</html>
