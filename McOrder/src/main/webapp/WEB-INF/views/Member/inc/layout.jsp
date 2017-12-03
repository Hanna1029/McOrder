<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>
			2조 마지막 프로젝트
		</title>
<!--  css 영역-->
<%-- <link href='/css/<tiles:getAsString name="css" />' type="text/css" rel="stylesheet" /> --%>
</head>
<body style="background-color: #DB0000;">
	<!-- Header 영역 -->
	<tiles:insertAttribute name="header" />
	<div id="main">
		<!-- Content 영역  -->
		<tiles:insertAttribute name="content" />
	</div>
</body>
</html>
