package org.rc.uparupa.booksearch.impl;


import javax.annotation.Resource;

import org.mybatis.spring.annotation.MapperScan;
import org.rc.uparupa.booksearch.InterestBookDTO;
import org.rc.uparupa.booksearch.InterestBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
public class InterestBookServiceImpl implements InterestBookService {
	
	//@Autowired
	@Resource(name="interestBookRepository")
	private InterestBookRepository dao;
	
	public InterestBookServiceImpl() {
		
	}
	
	//관심등록 등록
	@Override
	public void saveinterestBook(InterestBookDTO dto) {
		String isbn = dto.getIsbn();
		String id = dto.getId();
		
		int BookStatus = statusinterestBook(isbn, id);
		
		System.out.println("Impl에서의 도서 상태 : " + BookStatus);
		
		if(BookStatus == 1) {
			System.out.println("등록 취소해?");
			dao.deleteinterestBook(dto);  //이미 등록 되어있는데 다시 눌렀다면 취소
		}else if(BookStatus == 0){
			System.out.println("등록 안되어있으니 등록해야해");
			dao.saveinterestBook(dto);  //등록 되어있지 않은 것을 확인했다면 등록
		}
	}


	@Override
	public int statusinterestBook(String isbn, String id) {
		
		System.out.println("statusinterestBook : " + dao.statusinterestBook(isbn, id));
		
		int result = dao.statusinterestBook(isbn, id);
		
		System.out.println("nnnnnnnnnnnnnnnnnnnnnnnnnnnnn :   " + result);
		
		return result;
	}

	
	

}
