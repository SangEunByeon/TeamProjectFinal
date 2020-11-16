 
package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.study.springboot.dto.CartDto;
import com.study.springboot.dto.Criteria;
import com.study.springboot.dto.ProductDto;
import com.study.springboot.dto.Product_QnA_Board_Dto;
import com.study.springboot.dto.Review_Board_Dto;

@Mapper
public interface IProductDao {
	public int uploadProductDao(ProductDto dto);
	public List<ProductDto> productListDao();
	public int modifyProductDao(ProductDto dto);
	public ProductDto viewProductDetailDao(int p_number);
	public void DeleteProduct(int idx);
	public Integer ProductnumCheckDao(@Param("p_number") int p_number);
	
	public List<ProductDto> getAllBookDao(Criteria cri);
	public List<ProductDto> bookCategory1Dao(String category);
	public List<ProductDto> bookCategory2Dao(String category);

	public int ProductQnABoardDao(Product_QnA_Board_Dto dto); //상품 질문
	public List<Product_QnA_Board_Dto> viewProductQnABoardDao(int p_number); //상품 질문 끌고오기
	public Product_QnA_Board_Dto viewProductQnABoardDao2(int idx); //상품 질문 끌고오기
	public List<Product_QnA_Board_Dto> viewAllProductQnABoardDao(); //상품 질문 다 끌고오기
	public int AnswerProductQuestionDao(String p_answer, String p_answer_state, int idx); //상품 질문 답변하기
	public int ProductAnswerDeleteDao(int idx,String p_answer_state);
	
	public int CartDao(CartDto dto); //장바구니
	public List<CartDto> getCartDao(String user_id); //장바구니 목록보기
	public int deleteCartDao(int idx); //장바구니 삭제
	
	public List<Review_Board_Dto> productReviewListDao(int p_number);
	
	//페이징처리
	public List<ProductDto> getListWithPaging(Criteria cri);
	public int countProductDao();
	
	//검색기능
	public List<ProductDto> SearchProductDao(String check_category, String searchName);
	public List<ProductDto> BookSearchDao(String keyword);
	public int CountSearchProductDao(String check_category, String searchName);
	
} 