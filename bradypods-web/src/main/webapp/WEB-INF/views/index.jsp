<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8"
	src="${app}/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld" />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>可能是最专业的互联网招聘平台</title>
<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
	var ctx = "h";
	console.log(1);
</script>
<link rel="Shortcut Icon" href="${app}/h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${app}/style/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${app}/style/css/external.min.css" />
<link rel="stylesheet" type="text/css" href="${app}/style/css/popup.css" />
<script src="${app}/style/js/jquery.1.10.1.min.js"
	type="text/javascript"></script>
<script type="text/javascript" src="${app}/style/js/jquery.lib.min.js"></script>
<script src="${app}/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript"
	src="${app}/style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
	var youdao_conv_id = 271546;
</script>
<script type="text/javascript" src="${app}/style/js/conv.js"></script>

</head>
<body>
	<%@include file="/head.jsp"%>

	<div id="container">

		<div id="sidebar">
			<div class="mainNavs">

				<div class="menu_box">
					<div class="menu_main">
						<h2>
							技术 <span></span>
						</h2>
						<a href="${app }/search?q=Java">Java</a> <a
							href="${app }/search?q=PHP">PHP</a> <a
							href="${app }/search?q=C">C</a> <a
							href="${app }/search?q=C++">C++</a> <a
							href="${app }/search?q=Android">Android</a> <a
							href="${app }/search?q=iOS">iOS</a> <a
							href="${app }/search?q=前端开发">前端开发</a> <a
							href="${app }/search?q=测试">测试</a> <a
							href="${app }/search?q=技术经理">技术经理</a> <a
							href="${app }/search?q=项目经理">项目经理</a> <a
							href="${app }/search?q=架构师">架构师</a>
					</div>
					<div class="menu_sub dn">
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=后端开发"> 后端开发 </a>
							</dt>
							<dd>
								<a href="${app }/search?q=Java" class="curr">Java</a>
								<a href="${app }/search?q=C%2B%2B" class="curr">C++</a>
								<a href="${app }/search?q=PHP" class="curr">PHP</a>
								<a
									href="${app }/search?q=%E6%95%B0%E6%8D%AE%E6%8C%96%E6%8E%98">数据挖掘</a>
								<a href="${app }/search?q=C" class="curr">C</a> <a
									href="${app }/search?q=C%23">C#</a> <a
									href="${app }/search?q=.NET">.NET</a> <a
									href="${app }/search?q=Hadoop">Hadoop</a> <a
									href="${app }/search?q=Python">Python</a> <a
									href="${app }/search?q=Delphi">Delphi</a> <a
									href="${app }/search?q=VB">VB</a> <a
									href="${app }/search?q=Perl">Perl</a> <a
									href="${app }/search?q=Ruby">Ruby</a> <a
									href="${app }/search?q=Node.js">Node.js</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=移动开发"> 移动开发 </a>
							</dt>
							<dd>
								<a href="${app }/search?q=HTML5">HTML5</a> <a
									href="${app }/search?q=Android" class="curr">Android</a>
								<a href="${app }/search?q=iOS" class="curr">iOS</a>
								<a href="${app }/search?q=WP">WP</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=前端开发"> 前端开发 </a>
							</dt>
							<dd>
								<a href="${app }/search?q=web%E5%89%8D%E7%AB%AF">web前端</a>
								<a href="${app }/search?q=Flash">Flash</a> <a
									href="${app }/search?q=html5">html5</a> <a
									href="${app }/search?q=JavaScript">JavaScript</a> <a
									href="${app }/search?q=U3D">U3D</a> <a
									href="${app }/search?q=COCOS2D-X">COCOS2D-X</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=测试"> 测试 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E6%B5%8B%E8%AF%95%E5%B7%A5%E7%A8%8B%E5%B8%88">测试工程师</a>
								<a
									href="${app }/search?q=%E8%87%AA%E5%8A%A8%E5%8C%96%E6%B5%8B%E8%AF%95">自动化测试</a>
								<a
									href="${app }/search?q=%E5%8A%9F%E8%83%BD%E6%B5%8B%E8%AF%95">功能测试</a>
								<a
									href="${app }/search?q=%E6%80%A7%E8%83%BD%E6%B5%8B%E8%AF%95">性能测试</a>
								<a
									href="${app }/search?q=%E6%B5%8B%E8%AF%95%E5%BC%80%E5%8F%91">测试开发</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=运维"> 运维 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E8%BF%90%E7%BB%B4%E5%B7%A5%E7%A8%8B%E5%B8%88">运维工程师</a>
								<a
									href="${app }/search?q=%E8%BF%90%E7%BB%B4%E5%BC%80%E5%8F%91%E5%B7%A5%E7%A8%8B%E5%B8%88">运维开发工程师</a>
								<a
									href="${app }/search?q=%E7%BD%91%E7%BB%9C%E5%B7%A5%E7%A8%8B%E5%B8%88">网络工程师</a>
								<a
									href="${app }/search?q=%E7%B3%BB%E7%BB%9F%E5%B7%A5%E7%A8%8B%E5%B8%88">系统工程师</a>
								<a href="${app }/search?q=IT%E6%94%AF%E6%8C%81">IT支持</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=DBA"> DBA </a>
							</dt>
							<dd>
								<a href="${app }/search?q=MySQL">MySQL</a> <a
									href="${app }/search?q=SQLServer">SQLServer</a> <a
									href="${app }/search?q=Oracle">Oracle</a> <a
									href="${app }/search?q=DB2">DB2</a> <a
									href="${app }/search?q=MongoDB">MongoDB</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=项目管理"> 项目管理 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E9%A1%B9%E7%9B%AE%E7%BB%8F%E7%90%86"
									class="curr">项目经理</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=高端技术职位"> 高端职位 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E6%8A%80%E6%9C%AF%E7%BB%8F%E7%90%86"
									class="curr">技术经理</a> <a
									href="${app }/search?q=%E6%8A%80%E6%9C%AF%E6%80%BB%E7%9B%91">技术总监</a>
								<a
									href="${app }/search?q=%E6%B5%8B%E8%AF%95%E7%BB%8F%E7%90%86">测试经理</a>
								<a
									href="${app }/search?q=%E6%9E%B6%E6%9E%84%E5%B8%88"
									class="curr">架构师</a> <a href="${app }/search?q=CTO">CTO</a>
								<a
									href="${app }/search?q=%E8%BF%90%E7%BB%B4%E6%80%BB%E7%9B%91">运维总监</a>
							</dd>
						</dl>
					</div>
				</div>
				<div class="menu_box">
					<div class="menu_main">
						<h2>
							产品 <span></span>
						</h2>
						<a href="${app }/search?q=产品经理">产品经理</a> <a
							href="${app }/search?q=产品助理">产品助理</a> <a
							href="${app }/search?q=无线产品经理">无线产品经理</a> <a
							href="${app }/search?q=游戏策划">游戏策划</a>
					</div>
					<div class="menu_sub dn">
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=产品经理"> 产品经理 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E4%BA%A7%E5%93%81%E7%BB%8F%E7%90%86"
									class="curr">产品经理</a> <a
									href="${app }/search?q=%E7%BD%91%E9%A1%B5%E4%BA%A7%E5%93%81%E7%BB%8F%E7%90%86">网页产品经理</a>
								<a
									href="${app }/search?q=%E7%A7%BB%E5%8A%A8%E4%BA%A7%E5%93%81%E7%BB%8F%E7%90%86">移动产品经理</a>
								<a
									href="${app }/search?q=%E4%BA%A7%E5%93%81%E5%8A%A9%E7%90%86"
									class="curr">产品助理</a> <a
									href="${app }/search?q=%E6%95%B0%E6%8D%AE%E4%BA%A7%E5%93%81%E7%BB%8F%E7%90%86">数据产品经理</a>
								<a
									href="${app }/search?q=%E7%94%B5%E5%95%86%E4%BA%A7%E5%93%81%E7%BB%8F%E7%90%86">电商产品经理</a>
								<a
									href="${app }/search?q=%E6%B8%B8%E6%88%8F%E7%AD%96%E5%88%92"
									class="curr">游戏策划</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=产品设计师"> 产品设计师 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E7%BD%91%E9%A1%B5%E4%BA%A7%E5%93%81%E8%AE%BE%E8%AE%A1%E5%B8%88">网页产品设计师</a>
								<a
									href="${app }/search?q=%E6%97%A0%E7%BA%BF%E4%BA%A7%E5%93%81%E8%AE%BE%E8%AE%A1%E5%B8%88">无线产品设计师</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=高端产品职位"> 高端职位 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E4%BA%A7%E5%93%81%E9%83%A8%E7%BB%8F%E7%90%86">产品部经理</a>
								<a
									href="${app }/search?q=%E4%BA%A7%E5%93%81%E6%80%BB%E7%9B%91">产品总监</a>
							</dd>
						</dl>
					</div>
				</div>
				<div class="menu_box">
					<div class="menu_main">
						<h2>
							设计 <span></span>
						</h2>
						<a href="${app }/search?q=UI">UI</a> <a
							href="${app }/search?q=UE">UE</a> <a
							href="${app }/search?q=设计师">设计师</a> <a
							href="${app }/search?q=交互设计">交互设计</a> <a
							href="${app }/search?q=数据分析">数据分析</a>
					</div>
					<div class="menu_sub dn">
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=视觉设计"> 视觉设计 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E8%A7%86%E8%A7%89%E8%AE%BE%E8%AE%A1%E5%B8%88">视觉设计师</a>
								<a
									href="${app }/search?q=%E7%BD%91%E9%A1%B5%E8%AE%BE%E8%AE%A1%E5%B8%88">网页设计师</a>
								<a
									href="${app }/search?q=Flash%E8%AE%BE%E8%AE%A1%E5%B8%88">Flash设计师</a>
								<a
									href="${app }/search?q=APP%E8%AE%BE%E8%AE%A1%E5%B8%88">APP设计师</a>
								<a
									href="${app }/search?q=UI%E8%AE%BE%E8%AE%A1%E5%B8%88">UI设计师</a>
								<a
									href="${app }/search?q=%E5%B9%B3%E9%9D%A2%E8%AE%BE%E8%AE%A1%E5%B8%88">平面设计师</a>
								<a
									href="${app }/search?q=%E7%BE%8E%E6%9C%AF%E8%AE%BE%E8%AE%A1%E5%B8%88%EF%BC%882D+3D%EF%BC%89">美术设计师（2D/3D）</a>
								<a
									href="${app }/search?q=%E5%B9%BF%E5%91%8A%E8%AE%BE%E8%AE%A1%E5%B8%88">广告设计师</a>
								<a
									href="${app }/search?q=%E5%A4%9A%E5%AA%92%E4%BD%93%E8%AE%BE%E8%AE%A1%E5%B8%88">多媒体设计师</a>
								<a
									href="${app }/search?q=%E5%8E%9F%E7%94%BB%E5%B8%88">原画师</a>
								<a
									href="${app }/search?q=%E6%B8%B8%E6%88%8F%E7%89%B9%E6%95%88">游戏特效</a>
								<a
									href="${app }/search?q=%E6%B8%B8%E6%88%8F%E7%95%8C%E9%9D%A2%E8%AE%BE%E8%AE%A1%E5%B8%88">游戏界面设计师</a>
								<a
									href="${app }/search?q=%E6%B8%B8%E6%88%8F%E5%9C%BA%E6%99%AF">游戏场景</a>
								<a
									href="${app }/search?q=%E6%B8%B8%E6%88%8F%E8%A7%92%E8%89%B2">游戏角色</a>
								<a
									href="${app }/search?q=%E6%B8%B8%E6%88%8F%E5%8A%A8%E4%BD%9C">游戏动作</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=交互设计"> 交互设计 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E4%BA%A4%E4%BA%92%E8%AE%BE%E8%AE%A1%E5%B8%88">交互设计师</a>
								<a
									href="${app }/search?q=%E6%97%A0%E7%BA%BF%E4%BA%A4%E4%BA%92%E8%AE%BE%E8%AE%A1%E5%B8%88">无线交互设计师</a>
								<a
									href="${app }/search?q=%E7%BD%91%E9%A1%B5%E4%BA%A4%E4%BA%92%E8%AE%BE%E8%AE%A1%E5%B8%88">网页交互设计师</a>
								<a
									href="${app }/search?q=%E7%A1%AC%E4%BB%B6%E4%BA%A4%E4%BA%92%E8%AE%BE%E8%AE%A1%E5%B8%88">硬件交互设计师</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=用户研究"> 用户研究 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E6%95%B0%E6%8D%AE%E5%88%86%E6%9E%90%E5%B8%88">数据分析师</a>
								<a
									href="${app }/search?q=%E7%94%A8%E6%88%B7%E7%A0%94%E7%A9%B6%E5%91%98">用户研究员</a>
								<a
									href="${app }/search?q=%E6%B8%B8%E6%88%8F%E6%95%B0%E5%80%BC%E7%AD%96%E5%88%92">游戏数值策划</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=高端设计职位"> 高端职位 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E8%AE%BE%E8%AE%A1%E7%BB%8F%E7%90%86+%E4%B8%BB%E7%AE%A1">设计经理/主管</a>
								<a
									href="${app }/search?q=%E8%AE%BE%E8%AE%A1%E6%80%BB%E7%9B%91">设计总监</a>
								<a
									href="${app }/search?q=%E8%A7%86%E8%A7%89%E8%AE%BE%E8%AE%A1%E7%BB%8F%E7%90%86+%E4%B8%BB%E7%AE%A1">视觉设计经理/主管</a>
								<a
									href="${app }/search?q=%E8%A7%86%E8%A7%89%E8%AE%BE%E8%AE%A1%E6%80%BB%E7%9B%91">视觉设计总监</a>
								<a
									href="${app }/search?q=%E4%BA%A4%E4%BA%92%E8%AE%BE%E8%AE%A1%E7%BB%8F%E7%90%86+%E4%B8%BB%E7%AE%A1">交互设计经理/主管</a>
								<a
									href="${app }/search?q=%E4%BA%A4%E4%BA%92%E8%AE%BE%E8%AE%A1%E6%80%BB%E7%9B%91">交互设计总监</a>
								<a
									href="${app }/search?q=%E7%94%A8%E6%88%B7%E7%A0%94%E7%A9%B6%E7%BB%8F%E7%90%86+%E4%B8%BB%E7%AE%A1">用户研究经理/主管</a>
								<a
									href="${app }/search?q=%E7%94%A8%E6%88%B7%E7%A0%94%E7%A9%B6%E6%80%BB%E7%9B%91">用户研究总监</a>
							</dd>
						</dl>
					</div>
				</div>
				<div class="menu_box">
					<div class="menu_main">
						<h2>
							运营 <span></span>
						</h2>
						<a href="${app }/search?q=运营">运营</a> <a
							href="${app }/search?q=游戏运营">游戏运营</a> <a
							href="${app }/search?q=编辑">编辑</a>
					</div>
					<div class="menu_sub dn">
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=运营"> 运营 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E7%94%A8%E6%88%B7%E8%BF%90%E8%90%A5">用户运营</a>
								<a
									href="${app }/search?q=%E4%BA%A7%E5%93%81%E8%BF%90%E8%90%A5">产品运营</a>
								<a
									href="${app }/search?q=%E6%95%B0%E6%8D%AE%E8%BF%90%E8%90%A5">数据运营</a>
								<a
									href="${app }/search?q=%E5%86%85%E5%AE%B9%E8%BF%90%E8%90%A5">内容运营</a>
								<a
									href="${app }/search?q=%E6%B4%BB%E5%8A%A8%E8%BF%90%E8%90%A5">活动运营</a>
								<a
									href="${app }/search?q=%E5%95%86%E5%AE%B6%E8%BF%90%E8%90%A5">商家运营</a>
								<a
									href="${app }/search?q=%E5%93%81%E7%B1%BB%E8%BF%90%E8%90%A5">品类运营</a>
								<a
									href="${app }/search?q=%E6%B8%B8%E6%88%8F%E8%BF%90%E8%90%A5"
									class="curr">游戏运营</a> <a
									href="${app }/search?q=%E7%BD%91%E7%BB%9C%E6%8E%A8%E5%B9%BF">网络推广</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=编辑"> 编辑 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E5%89%AF%E4%B8%BB%E7%BC%96">副主编</a>
								<a
									href="${app }/search?q=%E5%86%85%E5%AE%B9%E7%BC%96%E8%BE%91">内容编辑</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=客服"> 客服 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E5%94%AE%E5%89%8D%E5%92%A8%E8%AF%A2">售前咨询</a>
								<a
									href="${app }/search?q=%E5%94%AE%E5%90%8E%E5%AE%A2%E6%9C%8D">售后客服</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=高端运营职位"> 高端职位 </a>
							</dt>
							<dd>
								<a href="${app }/search?q=%E4%B8%BB%E7%BC%96">主编</a>
								<a
									href="${app }/search?q=%E8%BF%90%E8%90%A5%E6%80%BB%E7%9B%91">运营总监</a>
								<a href="${app }/search?q=COO">COO</a>
							</dd>
						</dl>
					</div>
				</div>
				<div class="menu_box">
					<div class="menu_main">
						<h2>
							市场与销售 <span></span>
						</h2>
						<a href="${app }/search?q=市场推广">市场推广</a> <a
							href="${app }/search?q=市场策划">市场策划</a> <a
							href="${app }/search?q=活动策划">活动策划</a> <a
							href="${app }/search?q=BD">BD</a> <a
							href="${app }/search?q=销售经理">销售经理</a>
					</div>
					<div class="menu_sub dn">
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=市场 营销"> 市场/营销 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E5%B8%82%E5%9C%BA%E8%90%A5%E9%94%80">市场营销</a>
								<a
									href="${app }/search?q=%E5%B8%82%E5%9C%BA%E7%AD%96%E5%88%92"
									class="curr">市场策划</a> <a
									href="${app }/search?q=%E5%B8%82%E5%9C%BA%E9%A1%BE%E9%97%AE">市场顾问</a>
								<a
									href="${app }/search?q=%E5%B8%82%E5%9C%BA%E6%8E%A8%E5%B9%BF"
									class="curr">市场推广</a> <a
									href="${app }/search?q=SEO">SEO</a> <a
									href="${app }/search?q=SEM">SEM</a> <a
									href="${app }/search?q=%E5%95%86%E5%8A%A1%E6%B8%A0%E9%81%93">商务渠道</a>
								<a
									href="${app }/search?q=%E5%95%86%E4%B8%9A%E6%95%B0%E6%8D%AE%E5%88%86%E6%9E%90">商业数据分析</a>
								<a
									href="${app }/search?q=%E6%B4%BB%E5%8A%A8%E7%AD%96%E5%88%92"
									class="curr">活动策划</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=公关"> 公关 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E5%AA%92%E4%BB%8B%E7%BB%8F%E7%90%86">媒介经理</a>
								<a
									href="${app }/search?q=%E5%B9%BF%E5%91%8A%E5%8D%8F%E8%B0%83">广告协调</a>
								<a
									href="${app }/search?q=%E5%93%81%E7%89%8C%E5%85%AC%E5%85%B3">品牌公关</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=销售"> 销售 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E9%94%80%E5%94%AE%E4%B8%93%E5%91%98">销售专员</a>
								<a
									href="${app }/search?q=%E9%94%80%E5%94%AE%E7%BB%8F%E7%90%86"
									class="curr">销售经理</a> <a
									href="${app }/search?q=%E5%AE%A2%E6%88%B7%E4%BB%A3%E8%A1%A8">客户代表</a>
								<a
									href="${app }/search?q=%E5%A4%A7%E5%AE%A2%E6%88%B7%E4%BB%A3%E8%A1%A8">大客户代表</a>
								<a href="${app }/search?q=BD%E7%BB%8F%E7%90%86">BD经理</a>
								<a
									href="${app }/search?q=%E5%95%86%E5%8A%A1%E6%B8%A0%E9%81%93">商务渠道</a>
								<a
									href="${app }/search?q=%E6%B8%A0%E9%81%93%E9%94%80%E5%94%AE">渠道销售</a>
								<a
									href="${app }/search?q=%E4%BB%A3%E7%90%86%E5%95%86%E9%94%80%E5%94%AE">代理商销售</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=高端市场职位"> 高端职位 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E5%B8%82%E5%9C%BA%E6%80%BB%E7%9B%91">市场总监</a>
								<a
									href="${app }/search?q=%E9%94%80%E5%94%AE%E6%80%BB%E7%9B%91">销售总监</a>
								<a
									href="${app }/search?q=%E5%95%86%E5%8A%A1%E6%80%BB%E7%9B%91">商务总监</a>
								<a href="${app }/search?q=CMO">CMO</a> <a
									href="${app }/search?q=%E5%85%AC%E5%85%B3%E6%80%BB%E7%9B%91">公关总监</a>
							</dd>
						</dl>
					</div>
				</div>
				<div class="menu_box">
					<div class="menu_main">
						<h2>
							职能 <span></span>
						</h2>
						<a href="${app }/search?q=HR">HR</a> <a
							href="${app }/search?q=行政">行政</a> <a
							href="${app }/search?q=会计">会计</a> <a
							href="${app }/search?q=出纳">出纳</a>
					</div>
					<div class="menu_sub dn">
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=人力资源"> 人力资源 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E4%BA%BA%E5%8A%9B%E8%B5%84%E6%BA%90">人力资源</a>
								<a href="${app }/search?q=%E6%8B%9B%E8%81%98">招聘</a>
								<a href="${app }/search?q=HRBP">HRBP</a> <a
									href="${app }/search?q=%E4%BA%BA%E4%BA%8B+HR">人事/HR</a>
								<a
									href="${app }/search?q=%E5%9F%B9%E8%AE%AD%E7%BB%8F%E7%90%86">培训经理</a>
								<a
									href="${app }/search?q=%E8%96%AA%E8%B5%84%E7%A6%8F%E5%88%A9%E7%BB%8F%E7%90%86">薪资福利经理</a>
								<a
									href="${app }/search?q=%E7%BB%A9%E6%95%88%E8%80%83%E6%A0%B8%E7%BB%8F%E7%90%86">绩效考核经理</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=行政"> 行政 </a>
							</dt>
							<dd>
								<a href="${app }/search?q=%E5%8A%A9%E7%90%86">助理</a>
								<a href="${app }/search?q=%E5%89%8D%E5%8F%B0">前台</a>
								<a href="${app }/search?q=%E6%B3%95%E5%8A%A1">法务</a>
								<a href="${app }/search?q=%E8%A1%8C%E6%94%BF"
									class="curr">行政</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=财务"> 财务 </a>
							</dt>
							<dd>
								<a href="${app }/search?q=%E4%BC%9A%E8%AE%A1"
									class="curr">会计</a> <a
									href="${app }/search?q=%E5%87%BA%E7%BA%B3"
									class="curr">出纳</a> <a
									href="${app }/search?q=%E8%B4%A2%E5%8A%A1">财务</a>
							</dd>
						</dl>
						<dl class="reset">
							<dt>
								<a href="${app }/search?q=高端职能职位"> 高端职位 </a>
							</dt>
							<dd>
								<a
									href="${app }/search?q=%E8%A1%8C%E6%94%BF%E6%80%BB%E7%9B%91+%E7%BB%8F%E7%90%86">行政总监/经理</a>
								<a
									href="${app }/search?q=%E8%B4%A2%E5%8A%A1%E6%80%BB%E7%9B%91+%E7%BB%8F%E7%90%86">财务总监/经理</a>
								<a href="${app }/search?q=HRD+HRM">HRD/HRM</a> <a
									href="${app }/search?q=CFO">CFO</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			
		</div>
		<div class="content">
			<div id="search_box">
				<ul id="searchType">
					<li class="type_selected">职位</li>

				</ul>
				<div class="searchtype_arrow"></div>
				<input type="text" id="search_input" name="kd" value=""
					placeholder="请输入职位名称，如：产品经理"
					onkeydown="javascript:if(event.keyCode==13) search('key');" /> <input
					type="button" id="search_button" value="搜索"
					onclick="search('search_input');return false;" />

			</div>

			<style>
.ui-autocomplete {
	width: 488px;
	background: #fafafa !important;
	position: relative;
	z-index: 10;
	border: 2px solid #91cebe;
}

.ui-autocomplete-category {
	font-size: 16px;
	color: #999;
	width: 50px;
	position: absolute;
	z-index: 11;
	right: 0px; /*top: 6px; */
	text-align: center;
	border-top: 1px dashed #e5e5e5;
	padding: 5px 0;
}

.ui-menu-item {
	*width: 439px;
	vertical-align: middle;
	position: relative;
	margin: 0px;
	margin-right: 50px !important;
	background: #fff;
	border-right: 1px dashed #ededed;
}

.ui-menu-item a {
	display: block;
	overflow: hidden;
}
</style>
			<script type="text/javascript" src="style/js/search.min.js"></script>
			<dl class="hotSearch">
				<dt>热门搜索：</dt>
					<dd>
						<a href="${app }/search?q=java">Java</a>
					</dd>
					<dd>
						<a href="${app }/search?q=PHP">PHP</a>
					</dd>
					<dd>
						<a href="${app }/search?q=Android">Android</a>
					</dd>
					<dd>
						<a href="${app }/search?q=iOS">iOS</a>
					</dd>
					<dd>
						<a href="${app }/search?q=%E5%89%8D%E7%AB%AF">前端</a>
					</dd>
					<dd>
						<a href="${app }/search?q=%E4%BA%A7%E5%93%81%E7%BB%8F%E7%90%86">产品经理</a>
					</dd>
					<dd>
						<a href="${app }/search?q=UI">UI</a>
					</dd>
					<dd>
						<a href="${app }/search?q=%E8%BF%90%E8%90%A5">运营</a>
					</dd>
					<dd>
						<a href="${app }/search?q=BD">BD</a>
					</dd>
					<dd>
						<a href="${app }/search?q=%E5%AE%9E%E4%B9%A0">实习</a>
					</dd>
			</dl>
			<div id="home_banner">
				<ul class="banner_bg">
					<li class="banner_bg_1 current"><a
						href="http://www.cdtedu.com" 
						target="_blank"><img
							src="style/images/6D515007-5958-4eef-A06E-C6AC41A4AC67.png"
							width="612" height="160" alt="成都达内教育" /></a></li>
					<li class="banner_bg_2"><a
					href="http://www.tmooc.cn"  
						target="_blank"><img
							src="style/images/4EBD089777744DC9A3CADA181A6A09B0.jpg"
							width="612" height="160" alt="618学员狂欢季" /></a></li>
					<li class="banner_bg_3"><a
					href="http://www.tmooc.cn" 
						target="_blank"><img
							src="style/images/F9BAE3B6-54D4-46ce-9FF4-609254918ACA.png"
							width="612" height="160" alt="tmooc精品教育" /></a></li>
				</ul>
				<div class="banner_control">
					<em></em>
					<ul class="thumbs">
						<li class="thumbs_1 current"><i></i> <img
							src="style/images/6D515007-5958-4eef-A06E-C6AC41A4AC67.png"
							width="113" height="42" /></li>
						<li class="thumbs_2"><i></i> <img
							src="style/images/4EBD089777744DC9A3CADA181A6A09B0.jpg"
							width="113" height="42" /></li>
						<li class="thumbs_3"><i></i> <img
							src="style/images/F9BAE3B6-54D4-46ce-9FF4-609254918ACA.png"
							width="113" height="42" /></li>
					</ul>
				</div>
			</div>
			<!--/#main_banner-->



			<ul class="reset hotabbing">
				<li class="current">热门职位</li>

			</ul>
			
			</li>
			<li class="clearfix">
				<div class="hot_pos_l">
					<div class="mb10">
						<a href="${app }/positiondetail/191" target="_blank">手机游戏运营</a> &nbsp; <span
							class="c9">[成都]</span>
					</div>
					<span><em class="c7">月薪： </em>7k-1.4k</span> <span><em
						class="c7">经验：</em> 3-5年</span> <span><em class="c7">最低学历： </em>本科</span>
					<br /> <span><em class="c7">职位诱惑：</em>五险一金 ！全勤奖！餐饮补贴</span> <br />
					
					<!-- <a  class="wb">分享到微博</a> -->
				</div>
				<div class="hot_pos_r">
					<div class="mb10 recompany">
						<a href="${app }/positiondetail/191" target="_blank">成都市玉米树科技有限公司</a>
					</div>
					<span><em class="c7">领域：</em> 网络游戏,互联网/电子商务</span> <br /> <span><em
						class="c7">阶段：</em> A轮</span> <span><em class="c7">规模：</em>20-99人</span>
					<ul class="companyTags reset">
						<li>绩效奖金</li>
						<li>年底分红</li>
						<li>五险一金</li>
					</ul>
				</div>
			</li>
			<li class="odd clearfix">
				<div class="hot_pos_l">
					<div class="mb10">
						<a href="${app }/positiondetail/3144" target="_blank">Python工程师</a> &nbsp;
						<span class="c9">[北京]</span>
					</div>
					<span><em class="c7">月薪： </em>1.2k-2.4k</span> <span><em
						class="c7">经验：</em> 1-3年</span> <span><em class="c7">最低学历： </em>本科</span>
					<br /> <span><em class="c7">职位诱惑：</em>五险一金 ！周末双休！快乐地工作！</span> <br />
					<!-- <a  class="wb">分享到微博</a> -->
				</div>
				<div class="hot_pos_r">
					<div class="mb10 recompany">
						<a href="${app }/positiondetail/3144" target="_blank">深度好奇(北京)科技有限公司</a>
					</div>
					<span><em class="c7">领域：</em> 计算机软件</span> <br /> <span><em
						class="c7">阶段：</em> A轮</span> <span><em class="c7">规模：</em>20-99人</span>
					<ul class="companyTags reset">
						<li>五险一金</li>
						<li>周末双休</li>
						<li>带薪年假</li>
					</ul>
				</div>
			</li>
			<li class="clearfix"></li>
			<li class="odd clearfix"></li>
			<li class="clearfix">
				<div class="hot_pos_l">
					<div class="mb10">
						<a href="${app }/positiondetail/2842" target="_blank">Java</a> &nbsp; <span
							class="c9">[北京]</span>
					</div>
					<span><em class="c7">月薪： </em>1.2k-2.2k</span> <span><em
						class="c7">经验：</em> 1-3年</span> <span><em class="c7">最低学历： </em>学历不限</span>
					<br /> <span><em class="c7">职位诱惑：</em>项目快速发展，技术氛围浓厚，有业界大牛</span> <br />
					<!-- <a  class="wb">分享到微博</a> -->
				</div>
				<div class="hot_pos_r">
					<div class="mb10 recompany">
						<a href="#" target="_blank"></a>
					</div>
					<span><em class="c7">领域：</em> 通信/电信/网络设备/电信运营</span>  <br /> <span><em class="c7">阶段：</em>
						A轮</span> <span><em class="c7">规模：</em>10000人以上</span>
					<ul class="companyTags reset">
						<li>五险一金</li>
						<li>带薪年假</li>
						<li>午餐补助</li>
					</ul>
			</li>
			<li class="odd clearfix"></li>
			<li class="clearfix"></li> <a
				href="${app }/list?currentPage=1&rows=5" class="btn fr"
				target="_blank">查看更多</a>
			</ul>
		</div>

		<div class="clear"></div>
		<div id="linkbox">
			<dl>
				<dt>友情链接</dt>
				<dd>
				<dd>
					<a href="http://landing.zhaopin.com/register?utm_source=baidupcpz&utm_medium=cpt&utm_provider=partner&sid=121113803&site=null" target="_blank">智联招聘</a> <span>|</span> <a href="https://www.lagou.com"
						target="_blank">拉勾网</a> <span>|</span> <a href="https://cd.58.com/job.shtml?PGTID=0d100000-0006-64f4-8160-a847418d98df&ClickID=4"
						target="_blank">58同城</a> 
				</dd>
			</dl>
		</div>
	</div>
	<input type="hidden" value="" name="userid" id="userid" />
	<!-- <div id="qrSide"><a></a></div> -->
	<!--  -->

	<!-- <div id="loginToolBar">
	<div>
		<em></em>
		<img src="style/images/footbar_logo.png" width="138" height="45" />
		<span class="companycount"></span>
		<span class="positioncount"></span>
		<a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
		<div class="right">
			<a href="register.html?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
		</div>
		<input type="hidden" id="cc" value="16002" />
		<input type="hidden" id="cp" value="96531" />
	</div>
</div>
 -->
	<!-------------------------------------弹窗lightbox  ----------------------------------------->
	<div style="display: none;">
		<!-- 登录框 -->
		<div id="loginPop" class="popup" style="height: 240px;">
			<form id="loginForm">
				<input type="text" id="email" name="email" tabindex="1"
					placeholder="请输入登录邮箱地址" /> <input type="password" id="password"
					name="password" tabindex="2" placeholder="请输入密码" /> <span
					class="error" style="display: none;" id="beError"></span> <label
					class="fl" for="remember"><input type="checkbox"
					id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label> <a
					href="h/reset.html" class="fr">忘记密码？</a> <input type="submit"
					id="submitLogin" value="登 &nbsp; &nbsp; 录" />
			</form>
			<div class="login_right">
				<div>还没有帐号？</div>
				<a href="register.html" class="registor_now">立即注册</a>
				<div class="login_others">使用以下帐号直接登录:</div>
				<a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb"
					class="icon_wb" title="使用新浪微博帐号登录"></a> <a
					href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq"
					target="_blank" title="使用腾讯QQ帐号登录"></a>
			</div>
		</div>
		<!--/#loginPop-->
	</div>
	<!------------------------------------- end ----------------------------------------->
	<script type="text/javascript" src="style/js/Chart.min.js"></script>
	<script type="text/javascript" src="style/js/home.min.js"></script>
	<script type="text/javascript" src="style/js/count.js"></script>
	<div class="clear"></div>
	<input type="hidden" id="resubmitToken" value="" />
	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	</div>
	<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="#" target="_blank" rel="nofollow">联系我们</a> <a
				href="#" target="_blank">互联网公司导航</a> <a href="#"
				target="_blank" rel="nofollow">微博</a> <a href="#" class="footer_qr"
				rel="nofollow">微信</a>
			<div class="copyright">
				&copy;2100-2200 Lagou <a target="_blank" href="#">联XXX备0000000号</a>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="style/js/core.min.js"></script>
	<script type="text/javascript" src="style/js/popup.min.js"></script>

	<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->

</body>
</html>
