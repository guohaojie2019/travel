package com.Notice.service;


import java.util.List;

import com.pojo.Collectiontravel;
import com.pojo.Notice;


public interface CollectionService {

    void add(Collectiontravel coll);

    void delete(Integer id);

	List<Notice> queryByAuthor(String name);
	int selectCollectiontravel(int noticeId);
}
