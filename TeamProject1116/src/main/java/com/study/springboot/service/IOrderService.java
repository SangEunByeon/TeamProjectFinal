package com.study.springboot.service;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.study.springboot.dto.Criteria;
import com.study.springboot.dto.OrderDto;
import com.study.springboot.dto.ProductDto;

public interface IOrderService {
	public int orderwrite(HttpServletRequest request) throws ParseException;
	public OrderDto orderlist(int o_number);
	public List<OrderDto> list();
	public List<OrderDto> listbyUser(HttpServletRequest request);
	public List<OrderDto> stateView(String o_state);
	public int state(String o_number,String o_state);
	public int cancelOrder(HttpServletRequest request);
	public int countOrder();
	public int countstateOrder(String state);
	public List<OrderDto> reviewToWriteList(HttpServletRequest request);
	public List<OrderDto> SearchOrder(HttpServletRequest request);
	public List<OrderDto> getList(Criteria cri);
}
