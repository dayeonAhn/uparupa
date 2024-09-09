package org.rc.uparupa.mypage;

import java.util.List;

public interface BookReviewService {
	
	//독후감 목록 불러오기
//	public List<BookReviewDTO> getBookReviewList(BookReviewDTO dto);
	public List<BookReviewDTO> getBookReviewList(String isbn, String id);
	
	

}
