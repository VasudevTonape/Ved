package com.spring.Controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.Model.Book;
import com.spring.Model.Category;
import com.spring.Service.BookService;

@Controller
public class BookController {

	// calls the service layer
	@Autowired
	private BookService bookservice;

	public BookService getBookservice() {
		return bookservice;
	}

	public void setBookservice(BookService bookservice) {
		this.bookservice = bookservice;
	}

	// displays all the books in the table
	@RequestMapping(value = "/allbooks")
	public ModelAndView getAllBooks() {
		List<Book> allbooks = bookservice.getAllBooks();
		ModelAndView mv = new ModelAndView("bookList", "allbooks", allbooks);
		return mv;
	}

	// view book details if isbn is clicked
	@RequestMapping(value = "/getBooksByIsbn/{isbn}")
	public ModelAndView getBooksByIsbn(@PathVariable(value = "isbn") int isbn) {
		Book book = bookservice.getBookByIsbn(isbn);
		return new ModelAndView("bookPage", "book", book);
	}

	// to delete a book
	@RequestMapping(value = "/delete/{isbn}")
	public String deleteBook(@PathVariable(value = "isbn") int isbn) {
		bookservice.deleteBook(isbn);
		Path paths = Paths
				.get("F:\\Codes\\Eclipse\\Workspace_DT7\\spring\\src\\main\\webapp\\WEB-INF\\resources\\images\\" + isbn
						+ ".jpg");

		if (Files.exists(paths)) {
			try {

				Files.delete(paths);

			} catch (IOException e) {
			}
		}

		return "redirect:/allbooks";
	}

	// ADD BOOK
	// method 1 for add book
	@RequestMapping(value = "/admin/book/addBook", method = RequestMethod.GET)
	public String getBookForm(Model model) {
		Book book = new Book();
		Category category = new Category();
		category.setCid(1);
		book.setCategory(category);
		model.addAttribute("bookFormObj", book);
		return "bookForm";
	}

	// method 2 for addbook
	@RequestMapping(value = "/admin/book/addBook", method = RequestMethod.POST)
	public String addBook(@Valid @ModelAttribute(value = "bookFormObj") Book book, BindingResult result) {
		if (result.hasErrors()) {

			return "bookForm";

		} else {
			bookservice.addBook(book);

			MultipartFile bookImage = book.getBookImage();
			if (bookImage != null && !bookImage.isEmpty()) {
				Path paths = (Path) Paths
						.get("F:\\Codes\\Eclipse\\Workspace_DT7\\spring\\src\\main\\webapp\\WEB-INF\\resources\\images\\"
								+ book.getIsbn() + ".jpg");

				try {
					bookImage.transferTo(new File(paths.toString()));
				} catch (IllegalStateException e) {

					e.printStackTrace();
				} catch (IOException e) {

					e.printStackTrace();
				}

			}

			return "redirect:/allbooks";
		}
	}

	// EDIT BOOK
	// method 1 for edit book
	@RequestMapping("/admin/book/editBook/{isbn}")
	public ModelAndView getEditForm(@PathVariable(value = "isbn") int isbn) {
		Book book = this.bookservice.getBookByIsbn(isbn);
		return new ModelAndView("editBookForm", "editBookObj", book);
	}

	// mothod 2 for edit book
	@RequestMapping(value = "/admin/book/editBook", method = RequestMethod.POST)
	public String editBook(@ModelAttribute(value = "editBookObj") Book book) {
		bookservice.editBook(book);
		return "redirect:/allbooks";
	}

}
