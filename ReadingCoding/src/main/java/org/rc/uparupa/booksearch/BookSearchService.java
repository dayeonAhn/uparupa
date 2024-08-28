package org.rc.uparupa.booksearch;

import java.util.List;

public interface BookSearchService {
	
	void saveBook(BookDTO book);
    BookDTO getBookById(int id);

}
