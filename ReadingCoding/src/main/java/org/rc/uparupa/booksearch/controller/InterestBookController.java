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
		//userdto.setId("test");  //테스트용 아이디!
		InterestBookDTO dto = new InterestBookDTO();
	    dto.setIsbn(isbn);
	    dto.setId(id);
	    dto.setBtitle(title);
	    dto.setThumbNail(thumbnail);
		
		//String id = "test";  //사용되고 있는 아이디 저장
		int status = interestBookService.statusinterestBook(isbn, id);  //상태 저장
		
		System.out.println("컨트롤러 실행  => 현재 상태: " + status);
		
		if(status == 1) {
			System.out.println("등록되어있는 상태임");
			interestBookService.saveinterestBook(dto);
		}else {
			System.out.println("등록 안 되어있는 상태임");
			interestBookService.saveinterestBook(dto);  //등록이 안되어 있다면 저장
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
		//intBookdto.setId("test");  //테스트용
		//String id = userdto.getId();  //사용되고 있는 아이디 저장
		//String id ="test";
		System.out.println("컨트롤러 실행");  //실행됨
		InterestBookDTO dto = new InterestBookDTO();
		dto.setId(id);
		dto.setIsbn(isbn);  //받아온 isbn과 임시 아이디 삽입
		
		//intBookdto.setId(id);//임시 아이디
		System.out.println("(컨트롤러)isbn : " + dto.getIsbn());
		System.out.println("(컨트롤러)id : " + dto.getId());  //둘다 잘 받아옴
		
		int status = interestBookService.statusinterestBook(isbn, id);
		System.out.println("현재 상태 : " + status);
		
		
		if(status > 0) {
			System.out.println("상태 확인(컨트롤러) 등록되어있는 상태임");
		}else {
			System.out.println("상태 확인(컨트롤러) 등록 안 되어있는 상태임");
		}
		
		return status;
	}
}
