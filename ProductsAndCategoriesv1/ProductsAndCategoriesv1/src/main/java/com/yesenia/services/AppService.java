package com.yesenia.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yesenia.models.Association;
import com.yesenia.models.Category;
import com.yesenia.models.Product;
import com.yesenia.repositories.AssociationRepository;
import com.yesenia.repositories.CategoryRepository;
import com.yesenia.repositories.ProductRepository;

@Service
public class AppService {
	private final ProductRepository pRepo;
	private final CategoryRepository cRepo;
	private final AssociationRepository aRepo;
	public AppService(ProductRepository pRepo, CategoryRepository cRepo, AssociationRepository aRepo) {
		this.pRepo = pRepo;
		this.cRepo = cRepo;
		this.aRepo = aRepo;
	}
	public List<Product> findProducts() {
		return this.pRepo.findAll();
	}
	public Product getProduct(Long id) {
		return this.pRepo.findById(id).orElse(null);
	}
	public Category getCategory(Long id) {
		return this.cRepo.findById(id).orElse(null);
	}
	public List<Category> findCategories() {
		return this.cRepo.findAll();
	}
	public Product createProduct(Product product) {
		return this.pRepo.save(product);
	}
	public Category createCategory(Category category) {
		return this.cRepo.save(category);
	}
	public Association createAssociation(Association asso) {
		return this.aRepo.save(asso);
	}
	public List<Category> findCategoriesNotInProduct(Product product) {
		return cRepo.findByProductsNotContains(product);
	}
	public List<Product> findProductsNotInCategory(Category category) {
		return pRepo.findByCategoriesNotContains(category);
	}
	
	
	/*
	//ADDING PRODUCT TO CATEGORY - Not working yet
	public Association saveProToCat(Association assoProToCat) {
		return cRepo.save(assoProToCat);
	}
	*/
}