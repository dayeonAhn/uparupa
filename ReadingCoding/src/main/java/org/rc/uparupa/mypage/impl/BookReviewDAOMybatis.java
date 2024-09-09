package org.rc.uparupa.mypage.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.rc.uparupa.mypage.BookReviewDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookReviewDAOMybatis {
	
	@Autowired
    private SqlSessionTemplate mybatis; 
	
	//��� �ҷ�����
//	public List<BookReviewDTO> getBookReviewList(BookReviewDTO dto){
//		System.out.println("==> DAO. getBookReviewList() ==> ��� ����");
//		return mybatis.selectList("bookReviewDAOmybatis.insertReview", dto);
//	}
	
	public List<BookReviewDTO> getBookReviewList(String isbn, String id){
		System.out.println("==> DAO. getBookReviewList() ==> ��� ����");
		Map<String, Object> params = new HashMap<>();
	    params.put("isbn", isbn);
	    params.put("id", id);
		return mybatis.selectList("bookReviewDAOmybatis.insertReview", params);
	}
	
	
	
}
