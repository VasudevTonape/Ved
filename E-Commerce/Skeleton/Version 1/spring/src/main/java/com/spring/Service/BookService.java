package com.spring.Service;

import java.util.List;

import com.spring.Model.Book;

public interface BookService {
	List<Book> getAllBooks();

	Book getBookByIsbn(int isbn);

	void deleteBook(int isbn);

	void editBook(Book book);

	void addBook(Book book);
}
