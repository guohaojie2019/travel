package com.Notice.controller;

import com.Notice.common.Constant;
import com.Notice.common.Result;
import com.Notice.service.ClickService;
import com.Notice.service.CollectionService;
import com.Notice.service.NoticeService;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.alibaba.fastjson.JSONObject;
import com.pojo.Notice;
import com.pojo.NoticeTravel;
import com.pojo.Click;
import com.pojo.Collectiontravel;
import com.pojo.User;
import com.service.UserService;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;

import java.util.Date;
import java.util.List;



@Controller
public class NoticeController {

    @Autowired
    private NoticeService noticeService;
    @Autowired
    private UserService userService;
    @Autowired
    private CollectionService collectionService;
    @Autowired
    private ClickService clickService;
    
    


    @RequestMapping(value = "/toAdd")
    public String toAdd(){

        return "addNotice";

    }



    @RequestMapping(value = "/notice",method = RequestMethod.POST)
    @ResponseBody
    public Result addNotice(HttpServletRequest request,@RequestParam("title") String title,@RequestParam("content") String content,@RequestParam("picture") String picture,@RequestParam("type1") Integer type1){
    	
    	Subject subject = SecurityUtils.getSubject();
    	Session session = subject.getSession();
		session.setAttribute("subject", subject);
		String name=(String) subject.getPrincipal();
        Notice notice = new Notice();
        notice.setTitle(title);
        notice.setType(type1);
        notice.setContent(content);
        notice.setPicture(picture);
        notice.setClick(0);
        notice.setCreatetime(new Date());
        notice.setAuthor(name);

        try {
            noticeService.add(notice);
            return new Result(Constant.RESULT_CODE_SUCCESS);
        }catch (Exception e){
            return new Result(Constant.RESULT_CODE_SERVER_ERROR,"服务器错误");
        }

    }


    @RequestMapping(value = "/notice/list")
    public String listAll( Model model,
                          @RequestParam(required = false,defaultValue = "1") Integer page,
                          @RequestParam(required = false,defaultValue = "4") Integer pageSize){

        PageHelper.startPage(page,pageSize);
        Subject subject = SecurityUtils.getSubject();
    	Session session = subject.getSession();
		session.setAttribute("subject", subject);
		String name=(String) subject.getPrincipal();
        List<Notice> noticeList = noticeService.queryByAuthor(name);

        PageInfo<Notice> pageInfo = new PageInfo<>(noticeList,5);

        model.addAttribute("noticeList",noticeList);
        model.addAttribute("pageInfo",pageInfo);
        return "Notice/listNotice";
    }
    @RequestMapping(value = "/notice/listAll")
    public String noticelistAll( Model model,
                          @RequestParam(required = false,defaultValue = "1") Integer page,
                          @RequestParam(required = false,defaultValue = "4") Integer pageSize){

        PageHelper.startPage(page,pageSize);
        Subject subject = SecurityUtils.getSubject();
    	Session session = subject.getSession();
		session.setAttribute("subject", subject);
		String name=(String) subject.getPrincipal();
        List<Notice> noticeList = noticeService.queryAll(name);

        PageInfo<Notice> pageInfo = new PageInfo<>(noticeList,5);

        model.addAttribute("noticeList",noticeList);
        model.addAttribute("pageInfo",pageInfo);
        return "Notice/listAll";
    }
    
    
    @RequestMapping(value = "/travellist")
    @ResponseBody
    public List<NoticeTravel> travellist( Model model){
    	
    	
        List<NoticeTravel> noticeList = noticeService.noticeTravel();
        for( int i = 0 ; i < noticeList.size() ; i++) {
        	int noticeId=noticeList.get(i).getId();
        	int clickCount =clickService.selectClick(noticeId);
        	int collectionCount =collectionService.selectCollectiontravel(noticeId);
        	noticeList.get(i).setOther3(collectionCount);
        	noticeList.get(i).setOther4(clickCount);
        }
        return noticeList;
    }
    @RequestMapping(value = "/RouteList")
    @ResponseBody
    public List<NoticeTravel> RouteList( Model model){
    	
        List<NoticeTravel> noticeList = noticeService.RouteList();
        for( int i = 0 ; i < noticeList.size() ; i++) {
        	int noticeId=noticeList.get(i).getId();
        	int clickCount =clickService.selectClick(noticeId);
        	int collectionCount =collectionService.selectCollectiontravel(noticeId);
        	noticeList.get(i).setOther3(collectionCount);
        	noticeList.get(i).setOther4(clickCount);
        }
        
        return noticeList;
    }
    @RequestMapping(value = "/OtherList")
    @ResponseBody
    public List<NoticeTravel> OtherList( Model model){
    	
        List<NoticeTravel> noticeList = noticeService.OtherList();
        for( int i = 0 ; i < noticeList.size() ; i++) {
        	int noticeId=noticeList.get(i).getId();
        	int clickCount =clickService.selectClick(noticeId);
        	int collectionCount =collectionService.selectCollectiontravel(noticeId);
        	noticeList.get(i).setOther3(collectionCount);
        	noticeList.get(i).setOther4(clickCount);
        }

        return noticeList;
    }
    
    @RequestMapping(value = "/Collectiontravel")
    public String  Collectiontravel(HttpServletRequest request,@RequestParam("noticeId")  Integer noticeId,@RequestParam("Url") String Url){
    	Collectiontravel coll=new Collectiontravel();
    	 Subject subject = SecurityUtils.getSubject();
     	Session session = subject.getSession();
 		session.setAttribute("subject", subject);
 		String name=(String) subject.getPrincipal();
 		String U="classify/"+Url;
 		coll.setId(noticeId);
    	coll.setAuthor(name);
    	coll.setNoticeId(noticeId);
        collectionService.add(coll);
        return U;
    }
   
    
    @RequestMapping(value = "/Collectionlist")
    public String Collectionlist( Model model,
                          @RequestParam(required = false,defaultValue = "1") Integer page,
                          @RequestParam(required = false,defaultValue = "4") Integer pageSize){

        PageHelper.startPage(page,pageSize);
        Subject subject = SecurityUtils.getSubject();
    	Session session = subject.getSession();
		session.setAttribute("subject", subject);
		String name=(String) subject.getPrincipal();
		
//        List<Notice> noticeList =noticeService.queryByAuthor(name);
        List<Notice> noticeList =collectionService.queryByAuthor(name);
        PageInfo<Notice> pageInfo = new PageInfo<>(noticeList,5);
        model.addAttribute("noticeList",noticeList);
        model.addAttribute("pageInfo",pageInfo);

        return "Notice/collectiontravel";
    }
    
    @RequestMapping(value = "/Click")
    public String  Click(HttpServletRequest request,@RequestParam("noticeId")  Integer noticeId,@RequestParam("Url") String Url){
    	
    	 Subject subject = SecurityUtils.getSubject();
     	Session session = subject.getSession();
 		session.setAttribute("subject", subject);
 		String name=(String) subject.getPrincipal();
 		
 		String U="classify/"+Url;
 		Click c=new Click();
 		
    	c.setAuthor(name);
    	c.setNoticeId(noticeId);
        clickService.add(c);
        return U;
    }
    
    
    @RequestMapping(value = "/user/list")
    public String UserlistAll( Model model,
                          @RequestParam(required = false,defaultValue = "1") Integer page,
                          @RequestParam(required = false,defaultValue = "4") Integer pageSize){

        PageHelper.startPage(page,pageSize);
        List<User> userList = userService.list();

        PageInfo<User> pageInfo1 = new PageInfo<>(userList,5);

        model.addAttribute("userList",userList);
        model.addAttribute("pageInfo",pageInfo1);
        return "Notice/userList";
    }

    @RequestMapping(value = "/notice/delete",method = RequestMethod.POST)
    @ResponseBody
    public Integer delete(HttpServletRequest request,@RequestParam("noticeId")  Integer noticeId){

        System.out.println(noticeId+"-----------------------------------------------");
       
            noticeService.delete(noticeId);
        
            return noticeId;
    }


    @RequestMapping(value = "/notice/deleteSome",method = RequestMethod.POST)
    @ResponseBody
    public Result deleteSome(String checkedList){

        String[] ids = checkedList.split(",");
System.out.println(ids + "nice");
        try {
            for (String id : ids){
                noticeService.delete(Integer.parseInt(id));
            }
            return new Result(Constant.RESULT_CODE_SUCCESS);
        }catch (Exception e){
            return new Result(Constant.RESULT_CODE_SERVER_ERROR, "服务器出错");
        }
    }


    @RequestMapping("/queryByTitle")
    public String queryByTitle(Model model,String words){


        List<Notice> noticeList = noticeService.queryByTitle(words);

        model.addAttribute("noticeList",noticeList);
        model.addAttribute("flag",1);
        model.addAttribute("words",words);

        return "listNotice";
    }


}
