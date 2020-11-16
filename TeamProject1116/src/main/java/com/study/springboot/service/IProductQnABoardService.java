package com.study.springboot.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.study.springboot.dto.ProductDto;
import com.study.springboot.dto.Product_QnA_Board_Dto;

public interface IProductQnABoardService {
	public int ProductQnABoard(HttpServletRequest request);
	public List<Product_QnA_Board_Dto> viewProductQnABoardDao(int p_number);
	public Product_QnA_Board_Dto viewProductQnABoardDao2(int idx);
	public List<Product_QnA_Board_Dto> viewAllProductQnA();
	public ProductDto viewProductInfo(int p_number);
	public int AnswerProductQuestion(HttpServletRequest request);
	public int ProductAnswerDelete(HttpServletRequest request);
}