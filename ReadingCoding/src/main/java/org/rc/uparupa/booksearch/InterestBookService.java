package org.rc.uparupa.booksearch;

public interface InterestBookService {
	
	//관심등록 등록 
	public void saveinterestBook(InterestBookDTO dto);
	
	//관심등록 상태 확인
	//public int statusinterestBook(InterestBookDTO dto);
	
	public int statusinterestBook(String isbn, String id);

	
}
