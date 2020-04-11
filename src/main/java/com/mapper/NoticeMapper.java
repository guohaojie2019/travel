package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pojo.Notice;
import com.pojo.NoticeTravel;


@Mapper
public interface NoticeMapper {


    int deleteByPrimaryKey(Integer id);

    int insert(Notice record);

    int insertSelective(Notice record);



    Notice selectByPrimaryKey(Integer id);




    int updateByPrimaryKeySelective(Notice record);

    int updateByPrimaryKeyWithBLOBs(Notice record);

    int updateByPrimaryKey(Notice record);
    
    List<Notice> selectAll(String name);
    List<Notice> selectByAuthor(String name);

	List<Notice> selectTravel();

	List<NoticeTravel> selectRouteList();

	List<NoticeTravel> selectOtherList();
	List<NoticeTravel> noticeTravel();
	
}