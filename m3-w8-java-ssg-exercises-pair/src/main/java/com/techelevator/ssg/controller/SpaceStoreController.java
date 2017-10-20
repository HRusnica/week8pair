package com.techelevator.ssg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.ssg.model.store.Product;
import com.techelevator.ssg.model.store.ProductDao;

@Controller
public class SpaceStoreController {
	@Autowired
	ProductDao productDao;
	
	@RequestMapping(path="/shoppingCart/index", method=RequestMethod.GET)
	public String showAllProducts(ModelMap modelHolder) {
		List<Product> products = productDao.getAllProducts();
		modelHolder.put("allProducts", products);
		return "spaceStore";
	}
	
	@RequestMapping(path="/shoppingCart/detail/", method=RequestMethod.GET)
	public String goToNewPage(@RequestParam Long id, ModelMap modelHolder) {
		for(Product p : productDao.getAllProducts()) {
			if(p.getId().equals(id)) {
				modelHolder.put("product", p);
			}
		}
		return "productDetail";
	}
	
//	@RequestMapping(path="/productAdd", method=RequestMethod.POST)
//	public String saveProductToCart(@ModelAttribute Product post){
//		productDao.save(product);
//		return "redirect:/spaceStore";
//	}
}
