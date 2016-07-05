<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%
	SimpleDateFormat sdf = new SimpleDateFormat( "yyyy년 MM월 dd일" );
	Date dt = new Date();
	String nalja = sdf.format( dt );
// 	out.println( nalja + "<br>" );

	// 오라클은 날짜관련 필드 sysdate 사용
	Calendar cal = Calendar.getInstance();
	int y = cal.YEAR;
	int m = cal.MONTH;
	int d = cal.DAY_OF_MONTH;
	String msg = cal.get(y) + "년 " +(cal.get(m)+1)+ "월 " +cal.get(d) +"일";
%>
	Date 클래스 : <%= nalja %><br>
	cal 클래스 : <%= msg %><br>
	
</body>
</html>