<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");
	String uid= request.getParameter("id");
	
	UserDAO dao= new UserDAO();
	
	if(dao.exists(uid) == false) {
		out.print("회원정보를 찾을 수 없습니다.");
	return;
	}
	if(dao.delete(uid)) {
		out.print("회원탈퇴가 완료되었습니다.");
	}
	else{
		out.print("회원탈퇴 처리 중 오류가 발생하였습니다.");
		/*
		function CheckSession() { //되로가기 막는 기능
			if (sessionStorage.getItem("id") == null) { 
				window.location = "login.jsp"; } }
		setInterval(CheckSession(), 100); 
		*/
	}
%>