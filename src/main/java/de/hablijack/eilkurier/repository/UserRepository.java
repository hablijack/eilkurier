package de.hablijack.eilkurier.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import de.hablijack.eilkurier.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findOneByEmail(String email);
}
