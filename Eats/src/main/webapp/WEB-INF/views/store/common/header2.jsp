<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<link rel="stylesheet" href="/css/store/storeContCss.css">

<meta charset="UTF-8">
<title>eats</title>

<%
	//String storeIdx = (String) session.getAttribute("storeIdx");
	//int storeIdx = (int)session.getAttribute("storeIdx");
	int storeIdx = 1;

	if (storeIdx == 0) {
%>
		<script type="text/javascript">
			//alert("로그인해주세요!");
			//window.location.href = "/login";	//로그인페이지로 설정필요
		</script>
<%
	}
%>
