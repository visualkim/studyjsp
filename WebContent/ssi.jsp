<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[ssi.jsp]</title>
<link href="./css/style.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%!
	Connection CN;			//CN = Driver.Manage.getConnectrion(1,2,3);\
	Statement ST;			//ST = CN.createStatement();
	PreparedStatement PST;	//PST = CN.prepareStatement(msg);
	ResultSet RS;			//RS = ST.executeQuery(msg);
	
	String msg;				//insert, update, delete, select
	int Gsabun, Gtotal, Gpay;
	String Gname, Gtitle;
%>
<%
	try {
		Class.forName( "oracle.jdbc.driver.OracleDriver" );	//오라클 드라이브 연결
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
		CN = DriverManager.getConnection( url, "system", "dhfkzmf" );
		System.out.println( "ssi : DB connect Success" );
	} catch( Exception ex ) {
		System.out.println( "에러=" + ex );
	}
%>
</body>
</html>