package com.study.springboot.service;

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
import com.study.springboot.dao.IMemberDao;
import com.study.springboot.dao.IProductDao;
import com.study.springboot.dto.Review_Board_Dto;

@Primary
@Service
public class ReviewBoardService implements IReviewBoardService{
	
	@Autowired
	IMemberDao dao;
	@Autowired
	IProductDao dao2;
	@Autowired
	FileUploadService fileUploadService;
	
	@Override
	public int writeReview(HttpServletRequest request, MultipartFile file, Model model) {

		String p_num = request.getParameter("p_number");
		int p_number = Integer.parseInt(p_num);
		String o_num = request.getParameter("o_number");
		int o_number = Integer.parseInt(o_num);
		
		String originFilename = file.getOriginalFilename();
		if(originFilename.equals("")) {
			Review_Board_Dto dto = new Review_Board_Dto();
			
			dto.setRate(request.getParameter("inlineRadioOptions"));
			dto.setP_title(request.getParameter("p_title"));
			dto.setP_writer(request.getParameter("p_writer"));
			dto.setP_number(p_number);
			dto.setO_number(o_number);
			dto.setO_orderid(request.getParameter("o_orderid"));
			dto.setDescription(request.getParameter("description"));
			dto.setP_filename("");
			dto.setReg(new Date());
			
			dao.writeReviewDao(dto);
		}
			else if(!originFilename.equals("")) {
			System.out.println("originFilename:"+originFilename);
			String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			String saveFileName = fileUploadService.genSaveFileName(extName);
			
			Review_Board_Dto dto = new Review_Board_Dto();
			
			dto.setRate(request.getParameter("inlineRadioOptions"));
			dto.setP_title(request.getParameter("p_title"));
			dto.setP_writer(request.getParameter("p_writer"));
			dto.setP_number(p_number);
			dto.setO_number(o_number);
			dto.setO_orderid(request.getParameter("o_orderid"));
			dto.setDescription(request.getParameter("description"));
			dto.setP_filename("reviewImage/"+saveFileName);
			dto.setReg(new Date());
			
			dao.writeReviewDao(dto);
			
			String url = fileUploadService.restore4(file);
			System.out.println("url:" + url);
			model.addAttribute("url", url);
		}
		return 0;
	}

	@Override
	public List<Review_Board_Dto> viewWrittenReview(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String sessionID = (String)session.getAttribute("sessionID");
		List<Review_Board_Dto> list=dao.viewWrittenReviewDao(sessionID);
		return list;
	}

	@Override
	public int changeReviewState(int i,int o_number) {
		dao.changeReviewStateDao(i,o_number);
		return 0;
	}

	@Override
	public List<Review_Board_Dto> productReviewList(HttpServletRequest request) {
		String p_num=request.getParameter("p_number");
		int p_number=Integer.parseInt(p_num);
		List<Review_Board_Dto> list=dao2.productReviewListDao(p_number);
		return list;
	}
	@Override
	public List<Review_Board_Dto> reviewlist() {
		return dao.reviewlistDao();
	}

	@Override
	public int deleteReview(HttpServletRequest request) {
		String s_idx = request.getParameter("idx");
		int idx = Integer.parseInt(s_idx);
		dao.deleteReviewDao(idx);
		String o_num = request.getParameter("o_number");
		int o_number = Integer.parseInt(o_num);
		dao.changeReviewState(o_number);
		return 0;
	}
	
	
	
	

}