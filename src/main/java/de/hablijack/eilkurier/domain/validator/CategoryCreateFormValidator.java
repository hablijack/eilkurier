package de.hablijack.eilkurier.domain.validator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import de.hablijack.eilkurier.form.CategoryCreateForm;
import de.hablijack.eilkurier.service.CategoryService;

@Component
public class CategoryCreateFormValidator implements Validator {

	private static final Logger LOGGER = LoggerFactory.getLogger(CategoryCreateFormValidator.class);
	@Autowired
	private CategoryService categoryService;

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.equals(CategoryCreateForm.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		LOGGER.debug("Validating {}", target);
		CategoryCreateForm form = (CategoryCreateForm) target;
		validateName(errors, form);
	}

	private void validateName(Errors errors, CategoryCreateForm form) {
		if (categoryService.getCategoryByName(form.getName()).isPresent()) {
			errors.reject("email.exists", "User with this email already exists");
		}
	}
}
