<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>

<script type="text/javascript" src="${app}/js/common/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${app}/js/cookie.js"></script>
<script type="text/javascript" src="${app}/js/login_ajax.js"></script>

<title>登录页面</title>
<!-- <div class="web_root"  style="display:none">h</div> -->
<link rel="Shortcut Icon" href="${app}/h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${app}/style/css/style.css"/>

</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">
            <div id="cloud_s"></div>
            <div id="cloud_m"></div>
        </div>
        
    	<input type="hidden" id="resubmitToken" value="" />		
		 <div class="login_box">
        	<form id="loginForm" action="index.html">
        	
        	<table>
			<tr>
				<td>
					<input type="text" id="username" name="username" value="" placeholder="请输入用户名" style="width: 300px"/><br>
					<span style="color:red"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type="password" name="password" value="" placeholder="请输入密码" style="width: 300px"/><br>
					<span style="color:red"></span>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="checkbox" name="remname" checked/>记住用户名
					<input type="checkbox" name="autologin" checked/>30天内自动登陆
				</td>
			</tr>
			<tr>
			<td class="sub_td" colspan="2" class="tds">
					 <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<span style="color:red"></span>
				</td>
			</tr>
		</table>
			</form>
			<div class="login_right">
				<div>还没有帐号？</div>
				<a  href="${app }/page/regist"  class="registor_now">立即注册</a>
			    
			</div>
        </div>
    </div>
</body>
</html>