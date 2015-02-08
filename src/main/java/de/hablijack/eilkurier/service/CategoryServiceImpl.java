package de.hablijack.eilkurier.service;


import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import de.hablijack.eilkurier.domain.Category;
import de.hablijack.eilkurier.form.CategoryCreateForm;
import de.hablijack.eilkurier.repository.CategoryRepository;

@Service
public class CategoryServiceImpl implements CategoryService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CategoryServiceImpl.class);
    
    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public Category create(CategoryCreateForm form) {
        Category category = new Category();
        
        category.setName(form.getName());
        category.setDescription(form.getDescription());
        category.setPicture(form.getPicture());
        return categoryRepository.save(category);
    }

	@Override
	public List<Category> getAllCategories() {
		 LOGGER.debug("Getting categories");
	     return categoryRepository.findAll();
	}
    
	@Override
	public Optional<Category> getCategoryById(long id) {
		 LOGGER.debug("Getting user={}", id);
	     return Optional.ofNullable(categoryRepository.findOne(id));
	}

	@Override
	public Optional<Category> getCategoryByName(String name) {
		return categoryRepository.findOneByName(name);
	}

}
