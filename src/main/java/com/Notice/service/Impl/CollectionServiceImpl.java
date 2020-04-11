package com.Notice.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mapper.CollectiontravelMapper;
import com.pojo.Collectiontravel;
import com.pojo.Notice;
import com.Notice.service.CollectionService;

@Service
public class CollectionServiceImpl implements CollectionService{


    @Autowired
    private  CollectiontravelMapper  CollectionMapper;

    @Override
    public void add(Collectiontravel coll) {
    
    	CollectionMapper.insert(coll);
    	
    }

    @Override
    public void delete(Integer id) {
    	CollectionMapper.deleteByPrimaryKey(id);
    }
    
    public List<Notice> queryByAuthor(String name) {
        return CollectionMapper.selectByAuthor(name);
    }
   
    public int  selectCollectiontravel(int noticeId) {
    	int count=CollectionMapper.selectCollectiontravel(noticeId);
    	return count ;
    }
	
}
