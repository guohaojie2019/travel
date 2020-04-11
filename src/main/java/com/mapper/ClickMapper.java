package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pojo.Click;
import com.pojo.Collectiontravel;
import com.pojo.Notice;


@Mapper
public interface ClickMapper {


    int deleteByPrimaryKey(Integer id);


	void insert(Click coll);
	
	int selectClick(int noticeId);

	




   
}