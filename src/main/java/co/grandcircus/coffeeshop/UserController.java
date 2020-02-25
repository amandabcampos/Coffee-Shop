package co.grandcircus.coffeeshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffeeshop.dao.ProductDao;
import co.grandcircus.coffeeshop.dao.UserDao;
import co.grandcircus.entity.Product;
import co.grandcircus.entity.User;


@Controller
public class UserController {
	
	@Autowired
	private UserDao userDao;
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		List<Product> products = productDao.findAll();
		return new ModelAndView("index", "products", products);
	}
	
	@RequestMapping("/register")
	public ModelAndView regForm() {
		return new ModelAndView("registration-form");
	}
	
	@PostMapping("/register")
	public ModelAndView confirmation(User user) {
		userDao.create(user);
		return new ModelAndView("confirmation", "user", user);
	}
	
	@RequestMapping("/search-result")
	public ModelAndView search(@RequestParam("search") String search) {
		Product product = productDao.findByName(search);
		System.out.println(product);
		return new ModelAndView("search", "item", product);
	}
	
//	@RequestMapping("/confirmation")
//	public ModelAndView confirmation(@RequestParam("firstName") String firstName) {
//		
//		User user = userDao.findByName(firstName);
//		
//		return new ModelAndView("confirmation", "user", user);
//		
//	}
	
	

}
