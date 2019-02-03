package de.hablijack.eilkurier.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import de.hablijack.eilkurier.domain.EilkurierUser;
import de.hablijack.eilkurier.domain.EilkurierUserFeed;

public interface EilkurierUserFeedRepository extends JpaRepository<EilkurierUserFeed, Long> {
	List<EilkurierUserFeed> findAllByEilkurierUserOrderBySortindex(EilkurierUser user);
}
