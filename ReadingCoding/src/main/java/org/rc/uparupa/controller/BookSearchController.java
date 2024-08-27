package org.rc.uparupa.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import org.rc.uparupa.booksearch.BookDTO;
import org.rc.uparupa.booksearch.BookSearchService;



@Controller

public class BookSearchController {

	@Autowired
    private BookSearchService bookSearchService;

    @PostMapping("/searchBookDetail")
    public ModelAndView searchBookDetail(@RequestBody BookDTO book) {
    	//도서 정보 저장
        bookSearchService.saveBook(book);

        ModelAndView mv = new ModelAndView("redirect:/search/BookSearch.jsp");
        mv.addObject("bookId", book.getId());
        return mv;
    }

    @GetMapping("/bookDetail")
    public ModelAndView getBookDetail(@RequestParam("id") int id) {

        BookDTO book = bookSearchService.getBookById(id);

        ModelAndView mv = new ModelAndView("search/BookSearch.jsp");
        mv.addObject("book", book);
        return mv;
    }
    
    //도서 검색 이동
    @RequestMapping(value="/BookSearchBoard.do")
	public String BookSearchpage() {
		System.out.println("도서 검색으로 이동");

		return "search/BookSearchBoard.jsp";
	}
	
}
