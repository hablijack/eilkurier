package de.hablijack.eilkurier.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import de.hablijack.eilkurier.domain.EilkurierUser;

public interface UserRepository extends JpaRepository<EilkurierUser, Long> {

    Optional<EilkurierUser> findOneByEmail(String email);
}
