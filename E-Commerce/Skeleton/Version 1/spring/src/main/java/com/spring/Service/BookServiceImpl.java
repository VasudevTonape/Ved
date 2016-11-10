package com.spring.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.DAO.BookDao;
import com.spring.Model.Book;

@Service
public class BookServiceImpl implements BookService {
	@Autowired
	BookDao bookDao;

	public BookDao getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	public List<Book> getAllBooks() {

		return bookDao.getAllBooks();
	}

	public Book getBookByIsbn(int isbn) {

		return bookDao.getBookByIsbn(isbn);
	}

	public void deleteBook(int isbn) {

		bookDao.deleteBook(isbn);
	}

	public void editBook(Book book) {
		bookDao.editBook(book);
	}

	public void addBook(Book book) {
		bookDao.addBook(book);
	}

}
