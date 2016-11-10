package com.niit.dao;

import java.util.List;

import com.niit.model.Book;

public interface BookDao {
	public List<Book> getAllBooks();

	Book getBookByIsbn(int isbn);

	void deleteBook(int isbn);

	void editBook(Book book);

	void addBook(Book book);
}
