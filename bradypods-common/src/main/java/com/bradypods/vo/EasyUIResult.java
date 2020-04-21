package com.bradypods.vo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class EasyUIResult {
	private Integer total;
	//如果由于定义的属性字段名称,造成混淆,需要在代码中修改内容
	//保证返回的json中依然叫rows
	@JsonProperty(value="rows")
	private List<?> pList;
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<?> getpList() {
		return pList;
	}
	public void setpList(List<?> pList) {
		this.pList = pList;
	}
	
}
