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
	
	//���ɵ�� ���
	@Override
	public void saveinterestBook(InterestBookDTO dto) {
		String isbn = dto.getIsbn();
		String id = dto.getId();
		
		int BookStatus = statusinterestBook(isbn, id);
		
		System.out.println("Impl������ ���� ���� : " + BookStatus);
		
		if(BookStatus == 1) {
			System.out.println("��� �����?");
			dao.deleteinterestBook(dto);  //�̹� ��� �Ǿ��ִµ� �ٽ� �����ٸ� ���
		}else if(BookStatus == 0){
			System.out.println("��� �ȵǾ������� ����ؾ���");
			dao.saveinterestBook(dto);  //��� �Ǿ����� ���� ���� Ȯ���ߴٸ� ���
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
