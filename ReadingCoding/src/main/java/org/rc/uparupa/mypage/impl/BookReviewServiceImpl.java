package org.rc.uparupa.mypage.impl;

import java.util.List;

import javax.annotation.Resource;

import org.rc.uparupa.mypage.BookReviewDTO;
import org.rc.uparupa.mypage.BookReviewService;
import org.springframework.stereotype.Service;

@Service
public class BookReviewServiceImpl implements BookReviewService {
	
	@Resource(name="bookReviewDAOMybatis")
	private BookReviewDAOMybatis dao;

//	@Override
//	public List<BookReviewDTO> getBookReviewList(BookReviewDTO dto) {
//		System.out.println("getBookReviewList " + dao.getBookReviewList(dto));
//		List<BookReviewDTO> BookReviewList = dao.getBookReviewList(dto);
//		return BookReviewList;
//	}
//	
	
	@Override
	public List<BookReviewDTO> getBookReviewList(String isbn, String id) {
		System.out.println("getBookReviewList(ServiceImpl) : " + dao.getBookReviewList(isbn, id));
		List<BookReviewDTO> BookReviewList = dao.getBookReviewList(isbn, id);
		return BookReviewList;
	}
	
	
	
}
