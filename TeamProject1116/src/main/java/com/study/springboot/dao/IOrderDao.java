package com.study.springboot.dao;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.Criteria;
import com.study.springboot.dto.Notice_Board_Dto;
import com.study.springboot.dto.OrderDto;

@Mapper
public interface IOrderDao {
	public int orderwriteDao(OrderDto dto);
	public OrderDto orderlistDao(int o_number);
	public List<OrderDto> listDao();
	public List<OrderDto> listbyUserDao(String sessionID);
	public List<OrderDto> stateviewDao(String o_state);
	public int stateDao(String o_number,String o_state);
	public int cancelOrderDao(int o_number);
	public List<OrderDto> reviewToWriteListDao(String o_orderID, int review_state, int o_state);
	public int countOrderDao();
	public int countstateOrderDao(String state);
	public List<OrderDto> getListWithPaging(Criteria cri);
	
	
}
