package com.techelevator.ssg.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.ssg.model.store.Product;
import com.techelevator.ssg.model.store.ShoppingCart;

public class StoreController {

	public StoreController() {
		// TODO Auto-generated constructor stub
	}

	@RequestMapping(path = "/addToCart", method = RequestMethod.POST)
	public String addProductToCart(@RequestParam Long prouctId, @RequestParam Integer quantity, HttpSession session) {
		if (session.getAttribute("shoppingCart") == null) {
			session.setAttribute("shoppingCart", new ShoppingCart());
		}
		ShoppingCart sc = (ShoppingCart) session.getAttribute("shoppingCart");
		Long productId;
		sc.addProduct(productId, quantity);
		return "redirect:/shoppingCart/view";
	}
	
	@RequestMapping(path="/view", method=RequestMethod.GET)
	public String showShoppingCart(HttpSession session, ModelMap modelHolder){
		Map<Product, Integer> productList = new HashMap<>();
		ShoppingCart sc = (ShoppingCart) session.getAttribute("shoppingCart");
		if(sc != null){
			Map<Long, Integer> shoppingCartProducts = sc.getAllProducts();
			for(Long productId : shoppingCartProducts.keySet()) {
				Product currentProduct = productDao.getProductById(productId);
				productList.put(currentProduct, shoppingCartProducts.get(productId));
			}
				
		}
		modelHolder.put("productList", productList);
		
		return "cartView";
		
	}

}
