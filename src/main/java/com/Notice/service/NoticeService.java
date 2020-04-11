package com.Notice.service;


import java.util.List;

import com.pojo.Notice;
import com.pojo.NoticeTravel;


public interface NoticeService {

    void add(Notice notice);

    void delete(Integer id);

    void update(Notice notice);

    Notice queryById(Integer id);

    List<Notice> queryByTitle(String title);

    List<Notice> queryAll(String name);
    List<Notice> queryByAuthor(String name);
    List<NoticeTravel> noticeTravel();
	List<Notice> travellist();
	List<NoticeTravel> OtherList();
	List<NoticeTravel> RouteList();
}
