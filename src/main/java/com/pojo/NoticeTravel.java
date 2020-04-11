package com.pojo;

import java.util.Date;

public class NoticeTravel {
    private Integer id;

    private String title;
    private String author;
    private Integer other3;
    private Integer other4;
    private String content;





    private String picture;

    private String clickCount;
    
    public String getClickCount() {
		return clickCount;
	}

	public void setClickCount(String clickCount) {
		this.clickCount = clickCount;
	}

	public String getCollectionCount() {
		return collectionCount;
	}

	public void setCollectionCount(String collectionCount) {
		this.collectionCount = collectionCount;
	}

	private String collectionCount;
    
    
    

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

 

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Integer getOther3() {
		return other3;
	}

	public void setOther3(Integer other3) {
		this.other3 = other3;
	}

	public Integer getOther4() {
		return other4;
	}

	public void setOther4(Integer other4) {
		this.other4 = other4;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	

	
}