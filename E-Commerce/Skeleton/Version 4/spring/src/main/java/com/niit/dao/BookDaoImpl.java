package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Book;

@Repository("bookDao")
public class BookDaoImpl implements BookDao {
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Book> getAllBooks() {
		Session session = sessionFactory.openSession();
		List<Book> books = session.createQuery("FROM Book").list();
		return books;
	}

	@Transactional
	public Book getBookByIsbn(int isbn) {
		Session session = sessionFactory.openSession();
		Book book = (Book) session.get(Book.class, isbn);
		session.flush();
		session.close();
		return book;
	}

	@Transactional
	public void deleteBook(int isbn) {
		Session session = sessionFactory.openSession();

		Book book = (Book) session.get(Book.class, isbn);

		session.delete(book);

		session.flush();

		session.close();

	}

	@Transactional
	public void editBook(Book book) {
		Session session = sessionFactory.openSession();
		session.update(book);
		session.flush();
		session.close();
	}

	@Transactional
	public void addBook(Book book) {
		Session session = sessionFactory.openSession();
		session.save(book);
		session.flush();
		session.close();
	}
}
