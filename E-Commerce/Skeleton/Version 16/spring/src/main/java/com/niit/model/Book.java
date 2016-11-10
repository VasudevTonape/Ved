package com.niit.model;

import java.io.Serializable;

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
public class Book implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int isbn;

	@NotEmpty(message = "Title is mandatory")
	private String title;

	@NotEmpty(message = "Publication is mandatory")
	private String publication;

	@Min(value = 1, message = "min value sholud be 1")
	private int price;

	@NotEmpty(message = "Author is mandatory")
	private String author;

	@ManyToOne
	@JoinColumn(name = "category")
	private Categories category;

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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPublication() {
		return publication;
	}

	public void setPublication(String publication) {
		this.publication = publication;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Categories getCategory() {
		return category;
	}

	public void setCategory(Categories category) {
		this.category = category;
	}

	public MultipartFile getBookImage() {
		return bookImage;
	}

	public void setBookImage(MultipartFile bookImage) {
		this.bookImage = bookImage;
	}

}
