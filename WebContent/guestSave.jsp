<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[guestSave.jsp]</title>
<link href="./css/style.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	int a = Integer.parseInt( request.getParameter( "sabun" ) );
	String b = request.getParameter( "name" );
	String c = request.getParameter( "title" );
	int d = Integer.parseInt( request.getParameter( "pay" ) );
	
	try {
		msg = "insert into guest values( "+a+",	'"+b+"', '"+c+"', sysdate, "+d+" )";
		ST = CN.createStatement();
		ST.executeUpdate( msg );
		System.out.println( "executeUpdate Success" );
		response.sendRedirect( "guestList.jsp" );
	} catch( Exception ex ) {
		System.out.println( "저장실패 : " + ex );
	}
%>
	<font size=7>
	넘어온 사번 : <%= a %><br>
	넘어온 이름 : <%= b %><br>
	넘어온 제목 : <%= c %><br>
	넘어온 급여 : <%= d %><br>
	</font>
	
	<p>
	<a href="index.jsp">[index.jsp]</a>&nbsp;
	<a href="guest.jsp">[방명록 입력]</a>&nbsp;
	<a href="guestList.jsp">[방명록 출력]</a>&nbsp;	
</body>
</html>