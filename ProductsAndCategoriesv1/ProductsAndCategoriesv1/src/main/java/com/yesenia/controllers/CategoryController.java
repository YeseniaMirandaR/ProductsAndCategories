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

import com.yesenia.models.Association;
import com.yesenia.models.Category;
import com.yesenia.models.Product;
import com.yesenia.services.AppService;

@Controller
public class CategoryController {
	private AppService appService;
	public CategoryController(AppService service) {
		this.appService = service;
	}
	/*@GetMapping("/test")
	public String Index(Model model) {
		model.addAttribute("categories", appService.findProducts());
		return "categories/index.jsp";
	}*/
	
	@GetMapping("/categories/new")
	public String thisProduct(@ModelAttribute("categories") Category createCategory, BindingResult result) {
		return "newcategory.jsp";
	}
	
	@PostMapping("/createcategory")
	public String createCategory(@Valid @ModelAttribute("categories") Category createCategory, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "newcategory.jsp";
		}
		appService.createCategory(createCategory);
		return "redirect:/";
	}
	
	@GetMapping("categories/{id}")
	public String Show(@ModelAttribute("association") Association association, 
		@PathVariable("id") Long id, Model model) {
		Category thisOne = appService.getCategory(id);
		List<Product> others = appService.findProductsNotInCategory(thisOne);
		model.addAttribute("category", thisOne);
		model.addAttribute("notInProducts", others);
		return "showcategory.jsp";
	}
}


