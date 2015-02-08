package de.hablijack.eilkurier.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import de.hablijack.eilkurier.domain.Feed;

public interface FeedRepository extends JpaRepository<Feed, Long> {

	 Optional<Feed> findOneByName(String name);

}
