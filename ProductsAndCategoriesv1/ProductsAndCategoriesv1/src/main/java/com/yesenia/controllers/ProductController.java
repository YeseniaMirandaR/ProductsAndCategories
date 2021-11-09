package com.yesenia.controllers;

import java.util.List;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;

import com.yesenia.models.Association;
import com.yesenia.models.Category;
import com.yesenia.models.Product;
import com.yesenia.services.AppService;

@Controller
public class ProductController {
	private AppService appService;
	public ProductController(AppService service) {
		this.appService = service;
	}
	@GetMapping("/")
	public String Index(Model model) {
		model.addAttribute("categories", appService.findCategories());
		model.addAttribute("products", appService.findProducts());
		return "dashboard.jsp";
	}
	
	@GetMapping("/products/new")
	public String thisProduct(@ModelAttribute("products") Product createProduct, BindingResult result) {
		return "newproduct.jsp";
	}
	
	@PostMapping("/createproduct")
	public String createProduct(@Valid @ModelAttribute("products") Product createProduct, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "newproduct.jsp";
		}
		appService.createProduct(createProduct);
		return "redirect:/";
	}
	
	@GetMapping("/{id}")
	public String Show(@ModelAttribute("association") Association association, 
		@PathVariable("id") Long id, Model model) {
		Product thisOne = appService.getProduct(id);
		List<Category> others = appService.findCategoriesNotInProduct(thisOne);
		model.addAttribute("product", thisOne);
		model.addAttribute("notInCategories", others);
		
		return "showproduct.jsp";
	}
	
	/*@PostMapping("/{proid}")
	public String addCategory(@RequestParam(value="proid")Long proid, 
			@RequestParam(value="category_id") Long category_id) {
		Product thisOne = appService.getProduct(proid);
		Category thatOne = appService.getCategory(category_id);
		Association assoProToCat = new Association(thatOne, thisOne);
		appService.saveProToCat(assoProToCat);
		return "redirect:/{proid}";
		
		
		
	}*/
}
