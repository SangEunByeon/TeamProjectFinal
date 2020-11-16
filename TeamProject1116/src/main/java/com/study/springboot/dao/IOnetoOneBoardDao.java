package com.study.springboot.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.Criteria;
import com.study.springboot.dto.OnetoOneBoardDto;
import com.study.springboot.dto.Product_QnA_Board_Dto;

import lombok.Data;
 
@Mapper
public interface IOnetoOneBoardDao {  
	public int writeDao(OnetoOneBoardDto oneBoardDto); 
	public ArrayList<OnetoOneBoardDto> listDao(String user_id); 
	public OnetoOneBoardDto content_viewDao(int idx);
    public int boardModfiyDao(OnetoOneBoardDto dto);    
	public int boardDeleteDao(int idx); 
	public OnetoOneBoardDto content_replyDao(int idx); //관리자답변가져오기
	public List<OnetoOneBoardDto> searchDao(String category,String keyword);
//	관리자페이지- 1:1문의    
	public List<OnetoOneBoardDto> noanswerlistDao(String check);     
	public int adminwriteDao(int idx, String admin_id, String o_content_A, String o_ans_check);
	public List<OnetoOneBoardDto> adminlistDao(Criteria cri); // 수정 
	public int countDao();
	 
	
	
}
