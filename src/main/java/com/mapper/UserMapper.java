package com.mapper;

import com.pojo.User;
import com.pojo.UserExample;
import java.util.List;

public interface UserMapper {
	int deleteByPrimaryKey(Long id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	List<User> selectAll();

	List<User> selectByExample(UserExample example);
}