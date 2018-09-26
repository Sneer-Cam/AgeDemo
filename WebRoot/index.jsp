<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body{
			background:#f0f0f0;
			text-align:left;
		}
		div,input{
			padding:0;
			margin:0;
		}
		#main{
			width:300px;
			margin:0 auto;
			margin-top:250px;
		}
		input{
			border:none;
			background:#fff;
			width:300px;
			height:50px;
		}
		.upload{
			margin-top:30px;
			width:200px;
			height:40px;
			font-weight:bold;
			margin-left:50px;
			cursor:pointer;
		}
		.upload:hover{
			background:blue;
			color:white;
		}
	</style>
  </head>
  
  <body>
    <div id="main">
    	<form action="/AgeDemo/servlet1">
			<input type="text" placeholder="请输入你的出生年份" id="date" name="ydate" />
			<br />
			<input type="submit" class="upload" value="提交" />
		</form>
	</div>
  </body>
</html>
