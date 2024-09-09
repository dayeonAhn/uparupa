package org.rc.uparupa.booksearch.controller;

import java.util.HashMap;

import javax.annotation.Resource;

import org.rc.uparupa.booksearch.InterestBookDTO;
import org.rc.uparupa.booksearch.InterestBookService;
import org.rc.uparupa.booksearch.impl.InterestBookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "search/*") 
public class InterestBookController {
	
	HashMap<String, Object> data = new HashMap<>();
	
	//@Autowired
	@Resource(name="interestBookServiceImpl")
	private InterestBookService interestBookService;
	
	//@Autowired
	//InterestBookRepository interestBookService;
	
	@GetMapping("saveinterestBook.do")
	@ResponseBody
	public int saveinterestBook(@RequestParam("isbn") String isbn,
			@RequestParam("id") String id,
			@RequestParam("title") String title,
			@RequestParam("thumbnail") String thumbnail
			) {
		//LoginDTO userdto = new LoginDTO();
		//userdto.setId("test");  //�׽�Ʈ�� ���̵�!
		InterestBookDTO dto = new InterestBookDTO();
	    dto.setIsbn(isbn);
	    dto.setId(id);
	    dto.setBtitle(title);
	    dto.setThumbNail(thumbnail);
		
		//String id = "test";  //���ǰ� �ִ� ���̵� ����
		int status = interestBookService.statusinterestBook(isbn, id);  //���� ����
		
		System.out.println("��Ʈ�ѷ� ����  => ���� ����: " + status);
		
		if(status == 1) {
			System.out.println("��ϵǾ��ִ� ������");
			interestBookService.saveinterestBook(dto);
		}else {
			System.out.println("��� �� �Ǿ��ִ� ������");
			interestBookService.saveinterestBook(dto);  //����� �ȵǾ� �ִٸ� ����
			//data.put("status", "uninterestBook");
		}
		
		//intBookdto.setId(id);
		
		//data.put("result", "success");
		
		//interestBookService.saveinterestBook(dto);
		
		return status;  
	}
	
	@GetMapping("statusinterestBook.do")
	@ResponseBody
	public int statusinterestBook(@RequestParam("isbn") String isbn, @RequestParam("id") String id){
		//intBookdto.setId("test");  //�׽�Ʈ��
		//String id = userdto.getId();  //���ǰ� �ִ� ���̵� ����
		//String id ="test";
		System.out.println("��Ʈ�ѷ� ����");  //�����
		InterestBookDTO dto = new InterestBookDTO();
		dto.setId(id);
		dto.setIsbn(isbn);  //�޾ƿ� isbn�� �ӽ� ���̵� ����
		
		//intBookdto.setId(id);//�ӽ� ���̵�
		System.out.println("(��Ʈ�ѷ�)isbn : " + dto.getIsbn());
		System.out.println("(��Ʈ�ѷ�)id : " + dto.getId());  //�Ѵ� �� �޾ƿ�
		
		int status = interestBookService.statusinterestBook(isbn, id);
		System.out.println("���� ���� : " + status);
		
		
		if(status > 0) {
			System.out.println("���� Ȯ��(��Ʈ�ѷ�) ��ϵǾ��ִ� ������");
		}else {
			System.out.println("���� Ȯ��(��Ʈ�ѷ�) ��� �� �Ǿ��ִ� ������");
		}
		
		return status;
	}
}
