package com.study.springboot.dao; 

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.BookStoryBoardDto;
import com.study.springboot.dto.MemberDto;
import com.study.springboot.dto.ProductDto;


@Mapper
public interface IBookStoryBoardDao {   
	public int uploadProfileDao(MemberDto memberDto);  // 이미지 업로드 
	public MemberDto getProfileDao(MemberDto memberDto); //프로필 이미지 등록(수정)
	public List<MemberDto> getMainfileDao(); //메인 프로필- 아이디,회원수  
	public int bookstoryHitDao(int idx) throws Exception; //조회수
	public int bookstoryLike_checkDao(int idx) throws Exception; //좋아요기능 
	public int BookstoryRelpyDao(BookStoryBoardDto bookstoryDto);//댓글달기
	public List<BookStoryBoardDto> bookstoryReplyViewDao(String bs_user_id); //댓글보기
	
	public ArrayList<BookStoryBoardDto> bookstoryListDao(); //메인 전체 글목록 
	public List<BookStoryBoardDto> bookStoryCategoryDao(String bs_category); //카테고리별 글 목록 
	public int bookstoryWriteDao(BookStoryBoardDto bookstoryDto); //글작성 
	public BookStoryBoardDto bookstoryViewDao(int idx); //해당 글 보기 
	public int bookstoryDeleteDao(int idx); //글 삭제
	public int bookstoryUpdateDao(BookStoryBoardDto dto); //글 수정
}
