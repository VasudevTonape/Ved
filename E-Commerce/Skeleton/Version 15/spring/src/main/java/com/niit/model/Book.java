package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "bookdemo")
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int isbn;

	@NotEmpty(message = "publisher is mandatory")
	private String publisher;

	@NotEmpty(message = "Title is mandatory")
	private String title;

	@Min(value = 10, message = "min value sholud be 100")
	private int price;

	@ManyToOne
	@JoinColumn(name = "category")
	private Categories category;

	@NotEmpty(message = "author is mandatory")
	private String author;

	@Transient
	private MultipartFile bookImage;

	// Default Constructor
	public Book() {
		super();
	}

	// SETTER + GETTERS
	public int getIsbn() {
		return isbn;
	}

	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Categories getCategory() {
		return category;
	}

	public void setCategory(Categories category) {
		this.category = category;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public MultipartFile getBookImage() {
		return bookImage;
	}

	public void setBookImage(MultipartFile bookImage) {
		this.bookImage = bookImage;
	}

	@Override
	public String toString() {
		return "Book [isbn=" + isbn + ", publisher=" + publisher + ", title=" + title + ", price=" + price
				+ ", category=" + category + ", author=" + author + ", bookImage=" + bookImage + "]";
	}

}
