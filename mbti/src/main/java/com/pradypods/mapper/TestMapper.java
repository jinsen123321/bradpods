package com.pradypods.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pradypods.pojo.Suggestion;
import org.springframework.stereotype.Repository;

@Repository
public interface TestMapper {
	
	Suggestion query(String str);
}
