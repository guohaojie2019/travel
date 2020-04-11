package com.Notice.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.ClickMapper;
import com.mapper.CollectiontravelMapper;
import com.pojo.Click;
import com.pojo.Collectiontravel;
import com.pojo.Notice;
import com.Notice.service.ClickService;
import com.Notice.service.CollectionService;

@Service
public class ClickServiceImpl implements ClickService{


    @Autowired
    private  ClickMapper  clickMapper;

    @Override
    public void add(Click coll) {
    
    	clickMapper.insert(coll);
    	
    }

    @Override
    public void delete(Integer id) {
    	clickMapper.deleteByPrimaryKey(id);
    }
    @Override
    public int  selectClick(int noticeId) {
    	int count=clickMapper.selectClick(noticeId);
    	return count ;
    }
    
    
  
	
}
