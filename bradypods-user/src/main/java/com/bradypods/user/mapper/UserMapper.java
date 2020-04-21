package com.bradypods.user.mapper;

import org.springframework.stereotype.Repository;

import com.bradypods.pojo.User;
@Repository
public interface UserMapper {

	int queryName(String userName);

	void insertUser(User user);

	User selectExist(User user);

}
