package org.rc.uparupa.mypage;

import java.time.LocalDate;

public class BookReviewDTO {
	
    private int review_no;
	
	private String id;
	
	private String isbn;
	
	private String revTitle;
	
	private String revContent;
	
	private String revRegdate;
	
	private String open_close; 

    private String emotion;
    
    // 안다연 개인 추가
    private String title;     // 책 제목
    private String authors;   // 저자 목록
    private String thumbnail; // 책 이미지
    

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthors() {
		return authors;
	}

	public void setAuthors(String authors) {
		this.authors = authors;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getRevTitle() {
		return revTitle;
	}

	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}

	public String getRevContent() {
		return revContent;
	}

	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}


	public String getRevRegdate() {
		return revRegdate;
	}

	public void setRevRegdate(String revRegdate) {
		this.revRegdate = revRegdate;
	}

	public String getOpen_close() {
		return open_close;
	}

	public void setOpen_close(String open_close) {
		this.open_close = open_close;
	}

	public String getEmotion() {
		return emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}
    
    
    
    

}
