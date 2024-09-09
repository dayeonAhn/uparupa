package org.rc.uparupa.bookReview.controller;

import java.util.List;

import javax.annotation.Resource;

import org.rc.uparupa.mypage.BookReviewDTO;
import org.rc.uparupa.mypage.BookReviewService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
//@SessionAttributes("bookrev")
@RequestMapping(value = "search/*") 
public class BookReviewController {
	
	@Resource(name="bookReviewServiceImpl")
	private BookReviewService service;
	
	@GetMapping("getBookReviewList.do") 
	public String getBookReviewList(@RequestParam("isbn") String isbn, 
			@RequestParam("id") String id, 
			@RequestParam("title") String title,
			@RequestParam("authors") String authors,
            @RequestParam("thumbnail") String thumbnail,
			Model model ) {
		
		BookReviewDTO dto = new BookReviewDTO();
		dto.setIsbn(isbn);
	    dto.setId(id);
	    System.out.println("받은 ISBN: " + isbn + ", 받은 ID: " + id);
	    

	    List<BookReviewDTO> getbookreviewList = service.getBookReviewList(isbn, id);
	    
		System.out.println("컨트롤러 시작 (독후감): " + getbookreviewList);
		model.addAttribute("getbookreviewList", getbookreviewList);
		model.addAttribute("title", title); // 제목 추가
	    model.addAttribute("authors", authors); // 저자 추가
	    model.addAttribute("thumbnail", thumbnail); // 썸네일 이미지 추가
	    System.out.println("title: " + title);
	    System.out.println("authors: " + authors);
	    System.out.println("thumbnail: " + thumbnail);
		
		return "/search/BookReviewListFragment.jsp";
	}

}
