package org.rc.uparupa.booksearch.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.rc.uparupa.booksearch.InterestBookDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class InterestBookRepository {
	
	@Autowired
    private SqlSessionTemplate mybatis;  
	
	//등록
	public void saveinterestBook(InterestBookDTO dto) {
		System.out.println("saveinterestBook() ==> 관심 도서 등록");
		mybatis.insert("interestBookRepository.saveinterestBook", dto);
	}
	
	//상태 확인
	/*
	 * public int statusinterestBook(InterestBookDTO dto) {
	 * System.out.println("statusinterestBook() ==> 관심 도서 등록 상태 확인"); return
	 * mybatis.selectOne("interestBookRepository.statusinterestBook", dto); }
	 */
	
	//삭제 
	public void deleteinterestBook(InterestBookDTO dto) {
		System.out.println("deleteinterestBook() ==> 관심도서 등록 취소");
	    mybatis.delete("interestBookRepository.deleteinterestBook", dto);
	}
	
	//상태 확인
	public int statusinterestBook(String isbn, String id) {
		System.out.println("statusinterestBook() ==> 관심 도서 등록 상태 확인(isbn , id)");
		
		Map<String, Object> params = new HashMap<>();
	    params.put("isbn", isbn);
	    params.put("id", id);
	    
		return mybatis.selectOne("interestBookRepository.statusinterestBook", params);
	}



}
