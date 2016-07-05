<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[guestList.jsp]</title>
<link href="./css/style.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<div align="center">
		<table width="900" border="1" cellspacing="0">
			<tr align="center" height="55">
				<td colspan="5">
					<img src="images/bar.gif">
				</td>
			</tr>
			
			<tr bgcolor="#FFFF00" height="55">
				<td>사 번</td>
				<td>이 름</td>
				<td>제 목</td>
				<td>날 짜</td>
				<td>급 여</td>
			<tr>
			
			<%
				try {
					msg = "select * from guest order by sabun asc";
					ST = CN.createStatement();
					RS = ST.executeQuery( msg );	//조회한 결과를 RS기억
					while( RS.next() == true ) {
			%>
			<tr>
				<td><%= RS.getInt( "sabun" ) %></td>
				<td><%= RS.getString( "name" ) %></td>
				<td><%= RS.getString( "title" ) %></td>
				<td><%= RS.getDate( "nalja" ) %></td>
				<td><%= RS.getInt( "pay" ) %></td>
			</tr>
			<%
					}//while end
				} catch( Exception ex ) {
					
				}			
			%>
		</table>
		
		<p>
		<a href="index.jsp">[index.jsp]</a>&nbsp;
		<a href="guest.jsp">[방명록 입력]</a>&nbsp;
		<a href="guestList.jsp">[방명록 출력]</a>&nbsp;	
	</div>
</body>
</html>