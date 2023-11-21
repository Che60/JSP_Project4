<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.example.jsp_crud_2.BoardDAO, com.example.jsp_crud_2.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보목록</title>
    <link rel="stylesheet">
</head>
<body>
<%
    BoardDAO boardDAO = new BoardDAO();
    String id=request.getParameter("id");
    BoardVO u=boardDAO.getOne(Integer.parseInt(id));
    request.setAttribute("vo", u);
%>
    <h1>회원 정보 보기</h1>
    <table id="edit">
        <tr>
            <td>번호: ${u.getSeq()}</td>
        </tr>
        <tr>
            <td>이름: ${u.getTitle()}</td>
        </tr>
        <tr>
            <td>성별: ${u.getWriter()}</td>
        </tr>
        <tr>
            <td>특이사항: ${u.getContent()}</td>
        </tr>
        <tr>
            <td>등록일: ${u.getRegdate()}</td>
        </tr>
    </table>
    <button type="button" onclick="history.back()">뒤로가기</button>
    <button type="button" onclick="location.href='editform.jsp?id=${vo.getSid()}'">수정</button>

</body>
</html>
