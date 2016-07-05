<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[Book.jsp]</title>
<link href="./css/style.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%
	String name = "홍길동";
	int age = 27;
	int kore = 95;
	double avg = 78.9;
	String data = "1200";
	
	int a = (int) avg;
	int b = Integer.parseInt(data);
	
	System.out.println( b+98 );	//1298
	System.out.println( data+98 );	//120098
%>

이름 : <% out.println(name); %><br>
나이 : <% out.println(age); %><p>

이름 : <%= name %><br>
나이 : <%= age %><p>

<%
	int dan = 3;
	for( int i=1; i<10; i++ ) {
		out.println( "<font size=7>" +dan+ "x" +i+ "=" +(dan*i)+ "</font><br>" );
		if( i == 5 ) break;
	}
%>
</body>
</html>