package co.grandcircus.coffeeshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffeeshop.dao.ProductRepository;
import co.grandcircus.coffeeshop.dao.UserRepository;
import co.grandcircus.coffeeshop.entity.Product;
import co.grandcircus.coffeeshop.entity.User;

@Controller
public class CoffeeShopController {
	
	@Autowired
	UserRepository userRepo; //private?
	@Autowired
	ProductRepository productRepo;//private?
	
	@RequestMapping("/")
	public ModelAndView index() {
		//List<Product> products = productRepo.findAll();
		//return new ModelAndView("index", "products", products);
		return new ModelAndView("index");
	}
	
	@RequestMapping("/register")
	public ModelAndView registration() {    //change name of methods
		return new ModelAndView("registration-form");
	}
	
	@PostMapping("/register")
	public ModelAndView confirmationReg(User user) {
		userRepo.save(user);
		return new ModelAndView("confirmation-user", "user", user);
	}
	
	@RequestMapping("/menu")
	public ModelAndView menu() {
		List<Product> products = productRepo.findAll();
		return new ModelAndView("menu", "products", products);
	}
	
	@RequestMapping("/product-search")
	public ModelAndView menuSearch(@RequestParam("name") String name) {
		List<Product> products = productRepo.findByNameContainingIgnoreCase(name);
		int size = products.size();
		ModelAndView mav = new ModelAndView("menu-search");
		mav.addObject("products", products);
		mav.addObject("size",size);
		return mav;
	}
	
	@RequestMapping("/admin")
	public ModelAndView admin() {
		List<Product> products = productRepo.findAll();
		return new ModelAndView("admin", "products", products);	
	}
	
	@RequestMapping("/add")
	public ModelAndView add() {
		return new ModelAndView("product-form");
	}
	
	@PostMapping("/add")
	public ModelAndView postAdd(Product product) {
		List<Product> products = productRepo.findAll();
		for (Product prod : products) {
			if (prod.getName().equals(product.getName())) {
				return new ModelAndView("product-exists");
			}
		}
		productRepo.save(product);
		return new ModelAndView("confirmation-product", "product", product);
	
	}
	
	@RequestMapping("/edit")
	public ModelAndView edit(@RequestParam("id") Long id) {
		ModelAndView mav = new ModelAndView("product-form");
		mav.addObject("product", productRepo.findById(id).orElse(null));
		return mav;
	}
	
	@PostMapping("/edit")
	public ModelAndView edit(Product product) {
		productRepo.save(product);
		return new ModelAndView("confirmation-product","product",product);
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam("id") Long id) {
		productRepo.deleteById(id);
		return new ModelAndView("redirect:/admin");
	}
	

}
