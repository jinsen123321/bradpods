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
<link href="${app}/style/css/prodList.css" rel="stylesheet" type="text/css">
<link rel="Shortcut Icon"
	href="http://www.lagou.com/h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${app}/style/css//style.css" />
<link rel="stylesheet" type="text/css"
	href="${app}/style/css/external.min.css" />
<link rel="stylesheet" type="text/css" href="${app}/style//css/popup.css" />
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
	var youdao_conv_id = 271546;
</script>
<script type="text/javascript" src="style/js/conv.js"></script>

</head>
<body>		
		<%@include file="/head.jsp"%>
		<!-- end #header -->
		<div id="container">

			<div class="sidebar">
				<div id="options" class="greybg">
					<dl>
						<dt>
							月薪范围 <em></em>
						</dt>
						<dd>
							<div>2k以下</div>
							<div>2k-5k</div>
							<div>5k-10k</div>
							<div>10k-15k</div>
							<div>15k-25k</div>
							<div>25k-50k</div>
							<div>50k以上</div>
						</dd>
					</dl>
					<dl>
						<dt>
							工作经验 <em></em>
						</dt>
						<dd>
							<div>不限</div>
							<div>应届毕业生</div>
							<div>1年以下</div>
							<div>1-3年</div>
							<div>3-5年</div>
							<div>5-10年</div>
							<div>10年以上</div>
						</dd>
					</dl>
					<dl>
						<dt>
							最低学历 <em></em>
						</dt>
						<dd>
							<div>不限</div>
							<div>大专</div>
							<div>本科</div>
							<div>硕士</div>
							<div>博士</div>
						</dd>
					</dl>
					<dl>
						<dt>
							工作性质 <em></em>
						</dt>
						<dd>
							<div>全职</div>
							<div>兼职</div>
							<div>实习</div>
						</dd>
					</dl>
					<dl>
						<dt>
							发布时间 <em></em>
						</dt>
						<dd>
							<div>今天</div>
							<div>3天内</div>
							<div>一周内</div>
							<div>一月内</div>
						</dd>
					</dl>
				</div>

				
				
	         -->
			</div>

			<div class="content">
				 <div id="search_box">
						<ul id="searchType">
							<li class="type_selected">职位</li>
				
						</ul>
						<div class="searchtype_arrow"></div>
						<input type="text" id="search_input" name="kd" 
							value="" placeholder="请输入职位名称，如：产品经理" onkeydown="javascript:if(event.keyCode==13) search('key');"/> 
					    <input
							type="button" id="search_button" value="搜索" onclick="search('search_input');return false;"/>
					
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
				<div class="breakline"></div>
				<dl class="workplace" id="workplaceSelect">
					<dt class="fl">工作地点：</dt>
					<dd>
						<a href="${app }/search?q=%E5%8C%97%E4%BA%AC">北京</a> |
					</dd>
					<dd>
						<a href="${app }/search?q=%E4%B8%8A%E6%B5%B7">上海</a> |
					</dd>
					<dd>
						<a href="${app }/search?q=%E5%B9%BF%E5%B7%9E">广州</a> |
					</dd>
					<dd>
						<a href="${app }/search?q=%E6%B7%B1%E5%9C%B3">深圳</a> |
					</dd>
					<dd>
						<a href="${app }/search?q=%E6%88%90%E9%83%BD">成都</a> |
					</dd>
					<dd>
						<a href="${app }/search?q=%E6%9D%AD%E5%B7%9E">杭州</a> |
					</dd>
					<dd>
						<a href="${app }/search?q=%E6%AD%A6%E6%B1%89">武汉</a> |
					</dd>
					<dd>
						<a href="${app }/search?q=%E5%8D%97%E4%BA%AC">南京</a> 
					</dd>
					<dd class="more">
						<a href="javascript:;"></a>
						
					</dd>
					<dd id="box_expectCity" class="searchlist_expectCity dn">
						<span class="bot"></span> <span class="top"></span>
						<dl>
							<dt>ABCDEF</dt>
							<dd>
								<span>北京</span> <span>长春</span> <span>成都</span> <span>重庆</span>
								<span>长沙</span> <span>常州</span> <span>东莞</span> <span>大连</span>
								<span>佛山</span> <span>福州</span>
							</dd>
						</dl>
						<dl>
							<dt>GHIJ</dt>
							<dd>
								<span>贵阳</span> <span>广州</span> <span>哈尔滨</span> <span>合肥</span>
								<span>海口</span> <span>杭州</span> <span>惠州</span> <span>金华</span>
								<span>济南</span> <span>嘉兴</span>
							</dd>
						</dl>
						<dl>
							<dt>KLMN</dt>
							<dd>
								<span>昆明</span> <span>廊坊</span> <span>宁波</span> <span>南昌</span>
								<span>南京</span> <span>南宁</span> <span>南通</span>
							</dd>
						</dl>
						<dl>
							<dt>OPQR</dt>
							<dd>
								<span>青岛</span> <span>泉州</span>
							</dd>
						</dl>
						<dl>
							<dt>STUV</dt>
							<dd>
								<span>上海</span> <span>石家庄</span> <span>绍兴</span> <span>沈阳</span>
								<span>深圳</span> <span>苏州</span> <span>天津</span> <span>太原</span>
								<span>台州</span>
							</dd>
						</dl>
						<dl>
							<dt>WXYZ</dt>
							<dd>
								<span>武汉</span> <span>无锡</span> <span>温州</span> <span>西安</span>
								<span>厦门</span> <span>烟台</span> <span>珠海</span> <span>中山</span>
								<span>郑州</span>
							</dd>
						</dl>
					</dd>
				</dl>

				<!-- 分页展示开始 -->
				<%-- <c:if test="${page.totalPage>0}"> --%>
				<c:forEach items="${page.positions}" var="position">
					<ul class="hot_pos reset">
						<li class="odd clearfix">
							<div class="hot_pos_l" style="width: 750px;">
								<div class="mb10">
									<a href="${app}/positiondetail/${position.positionId}" title="公司名称" target="_blank">${position.positionName}</a>
									&nbsp;<a href="${position.companyUrl}" title="公司名称" ><span class="c9">[${position.companyName}]</span></a>
								</div>
								<div class="apply">
								<a href="#" >投递简历</a>
							</div> <span><em class="c7"></span> 
							<span><em class="c7">月薪：</em>${position.positionSalaryRange}</span>
							<span><em class="c7">招聘人数：</em>${position.recruitmentNum}</span>
							<span><em class="c7">工作地点：</em>${position.positionLocation}</span>
							<span><em class="c7">工作经验：</em>${position.positionExperience}</span>
							<span><em class="c7">学历要求：</em>${position.positionEducation}</span>
							
							<ul class="companyTags reset">
								<li>${position.positionBenefits1}</li>
								<li>${position.positionBenefits2}</li>
								<li>${position.positionBenefits3}</li>
								<li>${position.positionBenefits4}</li>
								<li>${position.positionBenefits5}</li>
								
							</ul>

						</li>
					</ul>
					<br />
				</c:forEach>

				<%-- </c:if> --%>
<div id="spulist-pager">
			<!-- 分页条1开始 -->
			<div id="spulist-pager">
			      <!-- 分页条1开始 -->
				  <div class="pager1">

				 <%--  	<c:if test="${requestScope.page.totalPage>1}"> --%>
                          
						  <!-- 第一页情形 -->
						  <c:if test="${page.currentPage eq 1}">
						    <a href="${app}/list/?currentPage=2&rows=5">下一页</a>
						  	<a href="${app}/list/?currentPage=${page.totalPage}&rows=5">尾页</a>
						  </c:if>
						  <!-- 非第一页也非最后一页-->
						  <c:if test="${page.currentPage>1 and page.currentPage<page.totalPage}">
						  	<a href="${app}/list/?currentPage=1&rows=5">首页</a>
						  	<a href="${app}/list/?currentPage=${page.currentPage-1}&rows=5">上一页</a>
						  	<a href="${app}/list/?currentPage=${page.currentPage+1 }&rows=5">下一页</a>
						  	<a href="${app}/list/?currentPage=${page.totalPage}&rows=5">尾页</a>
						  </c:if>
						  <!-- 最后一页情形 -->
						  <c:if test="${page.currentPage==page.totalPage}">
						  	<a href="${app}/list/?currentPage=1&rows=5">首页</a>
						  	<a href="${app}/list/?currentPage=${page.currentPage-1}&rows=5">上一页</a>
						  </c:if>
						  
						 
						  	【${page.currentPage}/${page.totalPage}】

				  	    

				  	
				  </div>	
				  <!-- 分页条1结束 -->
				  <!-- 分页条2开始 -->	
				  
				  <!-- 分页条2结束 -->
			</div>
			
		</div>
</body>
</html>