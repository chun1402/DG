<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, java.io.*"%>
<%@ page import="javax.servlet.ServletContext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    if(username != null) {
        session.setAttribute("user", username);
    }
    String user = (String)session.getAttribute("user");
%>
<html>
<head>
    <title>twitter_list.jsp</title>
    <script>
        function check(){
            if(document.form1.msg.value ==""){
                alert("글을 입력해주세요");
                document.form1.msg.focus();
                return;
            } else{
                alert("트윗 등록 완료");
                document.form1.submit();
            }
        }
    </script>
</head>
<body>
<div align=center>
    <h3>Twitter</h3><hr>
    <form action="tweet.jsp" method="POST" name="form1">
        @ <%=user%>  <br>
        <a href="login.jsp">다른 아이디로 로그인 하기</a><br><br>
        <input type="text" name="msg"/>
        <input name ="tweet" type="button" value="쓰기" onClick="check()">
    </form>
    <ul>
        <%
            BufferedReader reader = null;
            try {
                // ServletContext를 통해 실제 파일 시스템 경로를 얻음
                String filePath = application.getRealPath("/WEB-INF/log.txt");
                reader = new BufferedReader(new FileReader(filePath));
                String line;
                while ((line = reader.readLine()) != null) {
                    out.println("<li>" + line + "</li>");
                }
            } catch (FileNotFoundException fnfe) {
                out.println("<li>파일이 존재하지 않습니다.</li>");
            } catch (IOException ioe) {
                out.println("<li>파일을 읽을 수 없습니다.</li>");
            } finally {
                try {
                    if (reader != null) reader.close();
                } catch (Exception e) {
                    // 예외 처리
                }
            }
        %>
    </ul>
        <ul>
        <%
            ArrayList<String> msgs = (ArrayList<String>) application.getAttribute("msgs");
            if(msgs != null) {
                for(int i = 0; i < msgs.size(); i++){
                    String str = msgs.get(i);
                    String[] split = str.split(":");

                    if(split[0].equals(user)) {
                        out.println("<li>"+ str);
                    } else {
                        out.println("<li>"+ msgs.get(i) +"</li>");
                    }
                }
            }
        %>
    </ul>
</div>
</body>
</html>
