<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%
	session.invalidate(); // 411

	String str = "<p align = center><br>로그아웃을 완료하였습니다.<br><br>";
	str += "<a href = 'login.html'><button>로그인하기</button></a></p>";
	out.print(str);
%>0