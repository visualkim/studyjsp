<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[guest.jsp]</title>
<link href="./css/style.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<form method="post" action="guestSave.jsp" >
		<b>사번 : </b><input type="text" name="sabun"><br>
		<b>이름 : </b><input type="text" name="name"><br>
		<b>제목 : </b><input type="text" name="title" value="snow"><br>
		<b>급여 : </b><input type="text" name="pay" value="97"><br>
	
		<input type="submit" value="방명록저장">&nbsp;
		<input type="reset" value="입력취소">
	</form>
	
	<p>
	<a href="index.jsp">[index.jsp]</a>&nbsp;
	<a href="guest.jsp">[방명록 입력]</a>&nbsp;
	<a href="guestList.jsp">[방명록 출력]</a>&nbsp;	
</body>
</html>