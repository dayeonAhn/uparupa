package org.rc.uparupa.booksearch.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.rc.uparupa.booksearch.BookDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookSearchRepository {
	
	@Autowired
    private SqlSessionTemplate mybatis;  

    // 도서 정보 저장
    public void insertBook(BookDTO book) {
        mybatis.insert("com.example.mapper.BookMapper.insertBook", book);
    }

    // 도서 정보 조회
    public BookDTO selectBookById(int id) {
        return mybatis.selectOne("com.example.mapper.BookMapper.selectBookById", id);
    }
}
