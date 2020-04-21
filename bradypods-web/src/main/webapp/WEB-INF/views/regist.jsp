<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<script type="text/javascript" src="${app}/js/common/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${app}/js/regist_ajax.js"></script>
	
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>树懒小屋</title>
<meta property="qc:admins" content="23635710066417756375" />

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<link rel="Shortcut Icon" href="${app}/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${app}/style/css/style.css"/>

</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">
            <div id="cloud_s"></div>
            <div id="cloud_m"></div>
        </div>
        
    	
		<div class="login_box">
        	<form id="loginForm">
        		<ul class="register_radio clearfix">
		            <li>
		            	找工作
		              	<input type="radio" value="0" name="type" /> 
		            </li>
		            <li>
		           	           招人
		              	<input type="radio" value="1" name="type" /> 
		            </li>
		        </ul> 
				<table>
			<tr>
				<td colspan="2"><font color="red">
				
				</font></td>
			</tr>
			<tr>
				<td>
					<input type="text" name="username" placeholder="用户名" style="width: 300px"/><br>
					<span style="color: red" id="username_msg"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type="password" name="password" placeholder="密码" style="width: 300px"/><br>
					<span style="color: red" id="password_msg"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type="password" name="password2" placeholder="确认密码" style="width: 300px"/><br>
					<span style="color: red" id="password2_msg"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="nickname" placeholder="昵称" style="width: 300px"/><br>
					<span style="color: red" id="nickname_msg"></span>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="email" placeholder="邮箱" style="width: 300px"/><br>
					<span style="color: red" id="email_msg"></span>
				</td>
			</tr>
			<tr>
				<td class="sub_td" colspan="2" class="tds">
					 <input type="submit" id="submitLogin" value="注 &nbsp; &nbsp; 册" />
				</td>
			</tr>
		</table>	
               
             
               
                
             
            </form>
            <div class="login_right">
            	<div>已有帐号</div>
            	<a  href="${app }/page/login"  class="registor_now">直接登录</a>
                
            </div>
        </div>
        
    </div>
    
</body>
</html>
