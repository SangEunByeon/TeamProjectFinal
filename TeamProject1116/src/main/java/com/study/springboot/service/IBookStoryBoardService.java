package com.study.springboot.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.study.springboot.dto.BookStoryBoardDto;
import com.study.springboot.dto.BookStoryBoardReplyDto; 
import com.study.springboot.dto.MemberDto; 

public interface IBookStoryBoardService {  
	public String uploadProfile(HttpServletRequest request, MultipartFile file, Model model);   
	public MemberDto getProfile(HttpServletRequest request);
	public int getMainProfile(HttpServletRequest request);
	public int bookstoryWrite(HttpServletRequest request);  
	public int bookstoryHit(int idx) throws Exception;
	public BookStoryBoardDto bookstoryView(int idx); 
	public List<BookStoryBoardDto> bookStoryCategory(String bs_category, String page); 
	public int bookstoryDelete(int idx);   
	public int bookStoryUpdate(BookStoryBoardDto dto);
	public int bookstoryLike_check(int idx) throws Exception;    
	public int bookstoryRelpyWrite(BookStoryBoardReplyDto replyDto); 
	public List<BookStoryBoardReplyDto> bookstoryReplyView(int idx);  
	public int bookStoryReplyDelete(int reply_no); 
	public int bookStoryReplyCount(int idx);  
	
	public ArrayList<BookStoryBoardDto> bookstory_mainpopularList(HttpServletRequest request);  
	public ArrayList<BookStoryBoardDto> bookstory_preBookList(HttpServletRequest request);   
	public ArrayList<BookStoryBoardDto> bookstoryList(HttpServletRequest request);
	public List<BookStoryBoardDto> bookstoryAllList(HttpServletRequest request,String page);  
	 
	 
	
}
