<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 등록</title>
</head>
<body>

<h1>신규 등록</h1>
<form action="addpost.jsp" method="post">
<table>
<tr><td>이름:</td><td><input type="text" name="title"/></td></tr>
<tr><td>성별:</td><td><input type="text" name="writer"/></td></tr>
<tr><td>특이사항:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<tr><td><a href="posts.jsp">목록으로 돌아가기</a></td><td align="right"><input type="submit" value="회원 등록"/></td></tr>
</table>
</form>

</body>
</html>