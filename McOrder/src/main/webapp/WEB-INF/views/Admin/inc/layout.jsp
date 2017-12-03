<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin.css">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>
		2조 마지막 프로젝트
	</title>
</head>
<body style="background-color: #DB0000;">
	<!-- Header 영역 -->
	<tiles:insertAttribute name="head" />
	<div class="row hei">
		<div id="left">
			<tiles:insertAttribute name="menu" />
		</div>
		<div id="right">
			<tiles:insertAttribute name="content" />
		</div>
		<!-- Content 영역  -->
	</div>
</body>
</html>
