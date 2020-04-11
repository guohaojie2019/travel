package com.Notice.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Notice.service.NoticeService;
import com.mapper.NoticeMapper;
import com.pojo.Click;
import com.pojo.Notice;
import com.pojo.NoticeTravel;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService{


    @Autowired
    private NoticeMapper noticeMapper;

    @Override
    public void add(Notice notice) {
   
        noticeMapper.insert(notice);
      
    }

    @Override
    public void delete(Integer id) {
        noticeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void update(Notice notice) {
        noticeMapper.updateByPrimaryKeySelective(notice);
    }

    @Override
    public Notice queryById(Integer id) {
        return noticeMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Notice> queryByTitle(String title) {

//        NoticeExample noticeExample = new NoticeExample();
//        NoticeExample.Criteria criteria = noticeExample.createCriteria();
//
//        criteria.andTitleLike("%" + title + "%");
//
//        List<Notice> noticeList = noticeMapper.selectByExampleWithBLOBs(noticeExample);

        return null;
    }

    public List<Notice> queryAll(String name) {
        return noticeMapper.selectAll(name);
    }
    public List<Notice> queryByAuthor(String name) {
        return noticeMapper.selectByAuthor(name);
    }

	@Override
	public List<Notice> travellist() {
		
		return noticeMapper.selectTravel();
	}
	@Override
	public List<NoticeTravel> RouteList() {
		
		return noticeMapper.selectRouteList();
	}
	@Override
	public List<NoticeTravel> OtherList() {
		
		return noticeMapper.selectOtherList();
	}

	@Override
	public List<NoticeTravel> noticeTravel() {
		
		return noticeMapper.noticeTravel();
	}
	
}
