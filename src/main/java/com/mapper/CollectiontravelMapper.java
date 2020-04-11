package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pojo.Collectiontravel;
import com.pojo.Notice;


@Mapper
public interface CollectiontravelMapper {


    int deleteByPrimaryKey(Integer id);


	void insert(Collectiontravel coll);


	List<Notice> selectByAuthor(String name);
	int selectCollectiontravel(int noticeId);
   
}