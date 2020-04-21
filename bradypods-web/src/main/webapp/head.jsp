<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<script type="text/javascript">

window.onload=
	function(){
	var _ticket = $.cookie("JT_TICKET");
	var logout;
	if(!_ticket){
		return ;
	}
	//当dataType类型为jsonp时，jQuery就会自动在请求链接上增加一个callback的参数
	$.ajax({
		url : "http://176.198.102.10:8093/user/query/" + _ticket,
		dataType : "jsonp",
		type : "GET",
		success : function(data){ //data=sysresult
		
			if(data.status == 200){
				var _data = JSON.parse(data.data);//sysresult.data
				logout=_data; 
				var html =_data.userNickname+"，欢迎来到树懒！<a id= \"logoutbar\" href=\"http://176.198.102.10:8092/user_ajax/logout\" class=\"link-logout\">[退出]</a>";
				$("#loginbar").html(html);
			}
		},
		error : function(){
			alert('index error.');
		}
	});
}
//登出逻辑
$(function() {
$("#logoutbar").click(
		function() {
	$.ajax({
	url : "http://www.bradypods.com/user_ajax/logout" ,
	dataType : "json",
	type : "POST",
	data:{"userId":logout.userId}
	/* success : function(data){
		if(data=="true"){
			$("#logoutbar").html("<a href="${app }/page/login">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="${app}/page/regist">注册</a>");
		}else{
			alter.console("登出失败")
		}
	} */
});

 })
})
 


</script>

<link rel="stylesheet" href="${app }/css/head.css"/>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
<script type="text/javascript">
function search(a) {
    var b = "${app}/search?q=" + encodeURIComponent(document.getElementById(a).value);
    return window.location.href = b;
}
</script>
<link rel="stylesheet" type="text/css" href="${app}/style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${app}/style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="${app}/style/css/popup.css"/>
</head>
<body>
<div id="header">
    	<div class="wrapper">
    		<a href="http://www.bradypods.com" class="logo">
    			<img src="${app }style/images/logo.png" width="200" height="70" alt="" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li class="current"><a href="${app }/">首页</a></li>
    			<li ><a href="${app }/list?currentPage=1&rows=5" >职位搜索</a></li>
    			<li ><a href="http://176.198.102.10:8081/mbti" target="_blank">个人测评</a></li>
    			<li ><a href="javascript:alert('待开发中.....');" rel="nofollow">我的简历</a></li>
	    		<li ><a href="javascript:alert('待开发中.....');" rel="nofollow">发布职位</a></li>
	    		</ul>
        	    <ul class="loginTop">
 
    
	<li class="fore1" id="loginbar" clstag="homepage|keycount|home2013|01b">
	<c:if test="${empty user.userName}" var="eptun" scope="page">
	<a href="${app }/page/login">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="${app}/page/regist">注册</a>
	</c:if>
	</a>
	</li>

	
            </ul>
        </div>
    </div><!-- end #header -->
