package de.hablijack.eilkurier.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import de.hablijack.eilkurier.domain.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

	Optional<Category> findOneByName(String name);

}
