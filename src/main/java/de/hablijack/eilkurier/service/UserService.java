package de.hablijack.eilkurier.service;

import java.util.List;
import java.util.Optional;

import de.hablijack.eilkurier.domain.EilkurierUser;
import de.hablijack.eilkurier.domain.EilkurierUserFeed;
import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.form.UserCreateForm;

public interface UserService {

	Optional<EilkurierUser> getUserById(long id);

	Optional<EilkurierUser> getUserByEmail(String email);

	EilkurierUser create(UserCreateForm form);

	List<Feed> getSortedFeeds(EilkurierUser user);

	EilkurierUserFeed storePersonalizedFeed(Long userId, Feed feed, int sortindex);

}
