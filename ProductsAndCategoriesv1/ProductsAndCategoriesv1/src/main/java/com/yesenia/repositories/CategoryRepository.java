package com.yesenia.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.yesenia.models.Category;
import com.yesenia.models.Product;
//import com.yesenia.models.Association;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Long>{
	List<Category> findAll();
	List<Category> findByProductsNotContains(Product product);
	
	/*
	// not working yet
	Association save(Association assoProToCat);
	*/
}
