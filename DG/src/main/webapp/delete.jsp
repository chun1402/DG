<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, java.text.*"%>
<%
    request.setCharacterEncoding("UTF-8");
    String username = (String) session.getAttribute("user");
    
    ArrayList<String> msgs = (ArrayList<String>) application.getAttribute("msgs");
    
    String msgToDelete = request.getParameter("msg").trim();
    
    if(msgs != null) {
        List<Integer> indexesToRemove = new ArrayList<>();
        
        for(int i = 0; i < msgs.size(); i++){
            String str = msgs.get(i).trim();
            String[] split = str.split(":");
            
            if (split.length >= 2) {
                String orgMsg = split[1];
                String[] realMsgArr = orgMsg.split(",");
                String realMsg = realMsgArr[0].trim();
                
                if(split[0].equals(username) || username.equals("Admin")){
                    if(realMsg.equals(msgToDelete)){
                        indexesToRemove.add(i);
                        System.out.println(str + " 삭제");
                    }
                }
            }
        }
        
        // 실제 삭제
        for (int index : indexesToRemove) {
            msgs.remove(index);
        }
    }
    
    response.sendRedirect("twitter_list.jsp");
%>
