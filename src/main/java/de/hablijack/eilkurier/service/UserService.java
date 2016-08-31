package de.hablijack.eilkurier.service;


import java.util.Optional;

import de.hablijack.eilkurier.domain.EilkurierUser;
import de.hablijack.eilkurier.form.UserCreateForm;

public interface UserService {

    Optional<EilkurierUser> getUserById(long id);

    Optional<EilkurierUser> getUserByEmail(String email);

    EilkurierUser create(UserCreateForm form);

}
