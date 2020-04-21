package com.bradypods.position.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bradypods.pojo.Position;


public interface PositionMapper {

	List<Position> queryAll();

	int queryTotal();

	List<Position> queryByPage(@Param(value="start")int start, @Param(value="rows")Integer rows);

	Position queryById(String positiontId);


}
