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
	
	//���
	public void saveinterestBook(InterestBookDTO dto) {
		System.out.println("saveinterestBook() ==> ���� ���� ���");
		mybatis.insert("interestBookRepository.saveinterestBook", dto);
	}
	
	//���� Ȯ��
	/*
	 * public int statusinterestBook(InterestBookDTO dto) {
	 * System.out.println("statusinterestBook() ==> ���� ���� ��� ���� Ȯ��"); return
	 * mybatis.selectOne("interestBookRepository.statusinterestBook", dto); }
	 */
	
	//���� 
	public void deleteinterestBook(InterestBookDTO dto) {
		System.out.println("deleteinterestBook() ==> ���ɵ��� ��� ���");
	    mybatis.delete("interestBookRepository.deleteinterestBook", dto);
	}
	
	//���� Ȯ��
	public int statusinterestBook(String isbn, String id) {
		System.out.println("statusinterestBook() ==> ���� ���� ��� ���� Ȯ��(isbn , id)");
		
		Map<String, Object> params = new HashMap<>();
	    params.put("isbn", isbn);
	    params.put("id", id);
	    
		return mybatis.selectOne("interestBookRepository.statusinterestBook", params);
	}



}
