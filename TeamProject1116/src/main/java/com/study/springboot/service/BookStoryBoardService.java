package com.study.springboot.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.study.springboot.FileUploadService;
import com.study.springboot.dao.IBookStoryBoardDao;
import com.study.springboot.dto.BookStoryBoardDto;
import com.study.springboot.dto.MemberDto;
import com.study.springboot.dto.ProductDto;
 

@Primary
@Service
public class BookStoryBoardService implements IBookStoryBoardService { 
	
	@Autowired
	IBookStoryBoardDao bookstoryDao; 
	@Autowired
	BookStoryBoardDto bookstoryDto;
	
	@Autowired
	FileUploadService fileUploadService;
	 
	@Override
	public String uploadProfile(HttpServletRequest request, MultipartFile file, Model model) { 
		//프로필 이미지등록
		String originFilename=file.getOriginalFilename();
		String extName
		= originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
		String saveFileName = fileUploadService.genSaveFileName(extName);
		System.out.println("이미지경로"+saveFileName);
		HttpSession session = request.getSession();
		MemberDto memberDto=(MemberDto)session.getAttribute("memberDto"); 
		memberDto.setBook_profile(saveFileName);
		System.out.println("출력:"+memberDto);
		bookstoryDao.uploadProfileDao(memberDto); 
		
		String url=fileUploadService.restore3(file); 
		model.addAttribute("url", url); 
		
		return saveFileName;
		 
	}
   
	//프로필 이미지 가져오기
	@Override
	public MemberDto getProfile(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberDto memberDto=(MemberDto)session.getAttribute("memberDto"); 
		MemberDto dto=bookstoryDao.getProfileDao(memberDto);
		System.out.println("nResult값"+dto);
		return dto;
	}

	//메인프로필 -아이디, 회원수
	@Override
	public int getMainProfile(HttpServletRequest request) { 
		HttpSession session=request.getSession();
		MemberDto dto=(MemberDto)session.getAttribute("memberDto");
		List<MemberDto> list=bookstoryDao.getMainfileDao();
		System.out.println("nResult값"+list.size());
		return list.size();
	}
	
	
	@Override
	public int bookstoryWrite(HttpServletRequest request) {  
		HttpSession session=request.getSession();
		String bs_user_id=(String)session.getAttribute("sessionID");
		String bs_category=request.getParameter("bs_category");
		
		String bs_title=request.getParameter("bs_title");
		String bs_content=request.getParameter("bs_content");
		String profile_img=request.getParameter("profile_img");
		bookstoryDto.setBs_category(bs_category);
		bookstoryDto.setBs_title(bs_title);
		bookstoryDto.setBs_content(bs_content);
		bookstoryDto.setBs_user_id(bs_user_id);
		bookstoryDto.setProfile_img(profile_img);
		bookstoryDto.setReg(new Date()); 
		
		int nResult=bookstoryDao.bookstoryWriteDao(bookstoryDto);
		return nResult;
	}
 
	
	public int bookstoryHit(int idx) throws Exception {
		return bookstoryDao.bookstoryHitDao(idx);
	}

	@Override
	public BookStoryBoardDto bookstoryView(int idx) {
		BookStoryBoardDto dto=bookstoryDao.bookstoryViewDao(idx);
		return dto;
	}

	@Override
	public ArrayList<BookStoryBoardDto> bookstoryList(HttpServletRequest request) {
		ArrayList<BookStoryBoardDto> list=bookstoryDao.bookstoryListDao();
		return list;
	} 

	@Override
	public List<BookStoryBoardDto> bookStoryCategory(String bs_category) { 
		return bookstoryDao.bookStoryCategoryDao(bs_category);
	}
 
	@Override
	public int bookstoryDelete(int idx) {
		int nResult=bookstoryDao.bookstoryDeleteDao(idx);
		return nResult;
	}
    
	@Override
	public int bookStoryUpdate(BookStoryBoardDto bookstoryDto) {
		int nResult=bookstoryDao.bookstoryUpdateDao(bookstoryDto);
		return nResult;
	}
 
	@Override
	public int bookstoryLike_check(int idx) throws Exception { 
		return bookstoryDao.bookstoryLike_checkDao(idx);
	}
	  
	 
}
