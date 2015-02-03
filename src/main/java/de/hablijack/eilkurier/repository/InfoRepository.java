package de.hablijack.eilkurier.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import de.hablijack.eilkurier.domain.Info;

public interface InfoRepository extends JpaRepository<Info, Long> {

}
