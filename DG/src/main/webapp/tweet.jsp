<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, java.text.*, java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//서버에서 브라우저로 데이터를 보낼 때는 Response 객체를 사용한다. (Post방식)
    request.setCharacterEncoding("UTF-8");
	//msg라는 값을 얻기 위해
    String msg = request.getParameter("msg");
    String username = (String) session.getAttribute("user");
    
    ArrayList<String> msgs = (ArrayList<String>) application.getAttribute("msgs");
    
    if (msgs == null) {
        msgs = new ArrayList<String>();
        application.setAttribute("msgs", msgs);
    }
    
    Date date = new Date();
    SimpleDateFormat f = new SimpleDateFormat("E MMM dd HH:mm", Locale.KOREA);
    
    String logMessage = username + ": " + msg + " , " + f.format(date);
    msgs.add(logMessage);
    
    // 객체를 사용하여 리소스의 절대 경로 얻기
    application.log(logMessage + " 추가됨");

    // 파일 경로 설정 (변경 필요)
    String filePath = "C:/Users/DG/eclipse-workspace/WebTEST_1/src/main/webapp/WEB-INF/log.txt";

    try {
        File file = new File(filePath);
        FileWriter writer = new FileWriter(file, true); // true: append 모드로 파일 열기
        writer.write(logMessage + "\n");
        writer.close();
    } catch (IOException e) {
        e.printStackTrace();
    }
    
    response.sendRedirect("twitter_list.jsp");
%>
