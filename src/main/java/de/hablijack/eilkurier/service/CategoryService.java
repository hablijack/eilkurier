package de.hablijack.eilkurier.service;


import java.util.List;
import java.util.Optional;

import de.hablijack.eilkurier.domain.Category;
import de.hablijack.eilkurier.form.CategoryCreateForm;

public interface CategoryService {

    Category getCategoryById(long id);

    Category create(CategoryCreateForm form);

	Optional<Category> getCategoryByName(String name);

	List<Category> getAllCategories();

}
