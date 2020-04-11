package com.Notice.service;


import java.util.List;

import com.pojo.Click;
import com.pojo.Collectiontravel;
import com.pojo.Notice;


public interface ClickService {

    void add(Click coll);

    void delete(Integer id);

	int selectClick(int noticeId);



}
