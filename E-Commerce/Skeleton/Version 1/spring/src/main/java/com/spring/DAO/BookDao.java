package com.spring.DAO;

import java.util.List;

import com.spring.Model.Book;

public interface BookDao {

	public List<Book> getAllBooks();

	Book getBookByIsbn(int isbn);

	void deleteBook(int isbn);

	void editBook(Book book);

	void addBook(Book book);
}
