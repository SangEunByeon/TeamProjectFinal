package com.study.springboot.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class BookStoryBoardReplyDto {
	private int idx;
	private String reply_category;
	private String reply_writer;
	private String reply_content;
	private Date reg; 
	private int like_check;//좋아요
}
