package de.hablijack.eilkurier.service;


import java.util.Optional;

import de.hablijack.eilkurier.domain.User;
import de.hablijack.eilkurier.domain.UserCreateForm;

public interface UserService {

    Optional<User> getUserById(long id);

    Optional<User> getUserByEmail(String email);

    User create(UserCreateForm form);

}
