package org.rc.uparupa.booksearch;

public interface InterestBookService {
	
	//���ɵ�� ��� 
	public void saveinterestBook(InterestBookDTO dto);
	
	//���ɵ�� ���� Ȯ��
	//public int statusinterestBook(InterestBookDTO dto);
	
	public int statusinterestBook(String isbn, String id);

	
}
