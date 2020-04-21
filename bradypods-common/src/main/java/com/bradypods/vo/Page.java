package com.bradypods.vo;

import java.util.List;

public class Page {
	//表示当前页数
	private Integer currentPage;
	//查询的总页数
	private Integer totalPage;
	//查询的商品分页结果
	private List<?> positions;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public List<?> getPositions() {
		return positions;
	}
	public void setPositions(List<?> positions) {
		this.positions = positions;
	}
	
	
}
