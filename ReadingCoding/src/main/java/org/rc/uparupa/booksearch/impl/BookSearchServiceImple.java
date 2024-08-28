package org.rc.uparupa.booksearch.impl;

import java.util.List;

import org.rc.uparupa.booksearch.BookDTO;
import org.rc.uparupa.booksearch.BookSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookSearchServiceImple implements BookSearchService{
	
	 @Autowired
	    private BookSearchRepository dao;

	    @Override
	    public void saveBook(BookDTO book) {
	    	dao.insertBook(book);
	    }

	    @Override
	    public BookDTO getBookById(int id) {
	        return dao.selectBookById(id);
	    }
}
