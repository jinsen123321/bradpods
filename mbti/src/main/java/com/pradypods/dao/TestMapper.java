package com.pradypods.dao;

import com.pradypods.pojo.Suggestion;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface TestMapper {
    @Select("select * from suggestion")
    List<Suggestion> select();
}
