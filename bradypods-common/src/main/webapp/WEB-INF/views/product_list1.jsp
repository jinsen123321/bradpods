<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>全部商品</title>
 	<link href="${app}/css/prodList.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@include file="/head.jsp" %>
	<div id="content">
		<div id="search_div">
			<form method="post" action="${app}/product/page/">
			    <input type="hidden" name="currentPage" value="1"/>
				<span class="input_span">商品名：<input type="text" name="productName" value="${requestScope.productName}"/></span>
				<span class="input_span">商品种类：<input type="text" name="productCategory" value="${requestScope.productCategory}"/></span>
				<span class="input_span">商品价格区间：<input type="text" name="minPrice" value="${requestScope.minPrice}"/> - <input type="text" name="maxPrice" value="${requestScope.maxPrice}"/></span>
				<input type="submit" value="查询">
			</form>
		</div>
		<div id="prod_content">
			<c:if test="${requestScope.size>0}">
				<!-- 显示分页数据开始部分 -->
			    <c:forEach items="${page.data}" var="product">
					<div id="prod_div">
					<a href="${app}/product/findProductById/${product.id}">
						<img src="${app}/${product.imgurl}"></img>
					</a>
						<div id="prod_name_div">
					<a href="${app}/product/findProductById/${product.id}">
							${product.name}
					</a>
						</div>
						<div id="prod_price_div">
							￥${product.price}元
						</div>
						<div>
							<div id="gotocart_div">
								<a href="${app}/cart/addCart/${product.id}/1">加入购物车</a>
							</div>					
							<div id="say_div">
								库存${product.num}
							</div>					
						</div>
					</div>
				</c:forEach>
				<!-- 显示分页数据结束部分 -->
				<!-- 分页条开始 -->
				<c:if test="${requestScope.page.totalPage>1}">
					  【${page.currentPage}/${page.totalPage}】
					  <!-- 第一页情形 -->
					  <c:if test="${page.currentPage eq 1}">
					    <a href="${app}/product/page/?currentPage=2&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">下一页</a>
					  	<a href="${app}/product/page/?currentPage=${page.totalPage}&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">尾页</a>
					  </c:if>
					  <!-- 非第一页也非最后一页-->
					  <c:if test="${page.currentPage>1 and page.currentPage<page.totalPage}">
					  	<a href="${app}/product/page/?currentPage=1&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">首页</a>
					  	<a href="${app}/product/page/?currentPage=${page.previousPage}&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">上一页</a>
					  	<a href="${app}/product/page/?currentPage=${page.nextPage}&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">下一页</a>
					  	<a href="${app}/product/page/?currentPage=${page.totalPage}&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">尾页</a>
					  </c:if>
					  <!-- 最后一页情形 -->
					  <c:if test="${page.currentPage==page.totalPage}">
					  	<a href="${app}/product/page/?currentPage=1&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">首页</a>
					  	<a href="${app}/product/page/?currentPage=${page.previousPage}&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">上一页</a>
					  </c:if>
				</c:if>
				<!-- 分页条结束 -->	
				<!-- 另一种分页条样式 -->
				<div >
					<!-- 分页条开始 -->
					<c:if test="${requestScope.page.totalPage>1}">
						  【${page.currentPage}/${page.totalPage}】
						  <!-- 前第一页情形 -->
						  <a href="${app}/product/page/?currentPage=${page.previousPage}&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">前一页</a>
						  	
						  <!-- 中间的超链接-->
						  <c:forEach var="pageNum" items="${page.aNum}">
						  	<a href="${app}/product/page/?currentPage=${pageNum}&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">${pageNum}</a>
						  </c:forEach>
						  
						  <!-- 后一页情形 -->
						  <a href="${app}/product/page/?currentPage=${page.nextPage}&productName=${productName}&productCategory=${productCategory}&minPrice=${minPrice}&maxPrice=${maxPrice}">后一页</a>
					</c:if>
					<!-- 分页条结束 -->
				</div>
			</c:if>
			<c:if test="${requestScope.size<=0}">
			    没有符合条件的数据,请更换查询条件
			</c:if>
		</div>
		<div style="clear:both"></div>
	</div>
<%@include file="/foot.jsp" %>
</body>
</html>
