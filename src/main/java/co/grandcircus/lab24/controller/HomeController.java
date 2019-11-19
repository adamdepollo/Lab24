package co.grandcircus.lab24.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.lab24.dao.Lab24DAO;
import co.grandcircus.lab24.dao.ProductDAO;
import co.grandcircus.lab24.models.User;

@Controller
public class HomeController {

	@Autowired
	Lab24DAO dao;

	@Autowired
	ProductDAO pDao;

	@RequestMapping("/")
	public ModelAndView homePage() {
		return new ModelAndView("index", "products", pDao.findAllProducts());
	}

	@RequestMapping("register-page")
	public ModelAndView registrationPage() {
		return new ModelAndView("register-page");
	}

	@PostMapping("register-user")
	public ModelAndView register(User u) {
		dao.addUser(u.getFirstName(), u.getLastName(), u.getEmail(), u.getUsername(), u.getPassword(), u.getBirthday());
		return new ModelAndView("register-confirm", "userInfo", u);
	}

	@PostMapping("search-name")
	public ModelAndView search2(@RequestParam(value = "name", required = false) String c) {
		// If the search-name action is called in the HTML, then override the "products"
		// object to call the pDao.searchByName() method. This method return a
		// JdbcTemplate that queries the database for only items whose name is like the
		// search input
		ModelAndView mv = new ModelAndView("index", "products", pDao.searchByName(c));
		
		// If the search-name form on the index page is not null or empty, then add a
		// "searchName" object to the page.
		if (c != null && !c.isEmpty()) {
			mv.addObject("searchName", c);
		} else {
			//Otherwise, return a product list that just contains all products.
			mv.addObject("products", pDao.findAllProducts());
		}

		return mv;
	}
}
