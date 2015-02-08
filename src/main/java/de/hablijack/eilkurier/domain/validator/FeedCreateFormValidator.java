package de.hablijack.eilkurier.domain.validator;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import de.hablijack.eilkurier.form.FeedCreateForm;
import de.hablijack.eilkurier.service.FeedService;

@Component
public class FeedCreateFormValidator implements Validator {

    private static final Logger LOGGER = LoggerFactory.getLogger(FeedCreateFormValidator.class);
    @Autowired
    private FeedService feedService;

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz.equals(FeedCreateForm.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        LOGGER.debug("Validating {}", target);
        FeedCreateForm form = (FeedCreateForm) target;
        validateName(errors, form);
    }

    private void validateName(Errors errors, FeedCreateForm form) {
        if (feedService.getFeedByName(form.getName()).isPresent()) {
            errors.reject("email.exists", "User with this email already exists");
        }
    }
}
