package org.rc.uparupa.mypage;

import java.util.List;

public interface BookReviewService {
	
	//���İ� ��� �ҷ�����
//	public List<BookReviewDTO> getBookReviewList(BookReviewDTO dto);
	public List<BookReviewDTO> getBookReviewList(String isbn, String id);
	
	

}
